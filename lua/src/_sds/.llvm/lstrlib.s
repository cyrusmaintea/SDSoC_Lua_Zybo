; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lstrlib.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%union.anon = type { i32 }
%struct.luaL_Buffer = type { i8*, i32, i32, %struct.lua_State*, [8192 x i8] }
%struct.GMatchState = type { i8*, i8*, i8*, %struct.MatchState }
%struct.MatchState = type { i8*, i8*, i8*, %struct.lua_State*, i32, i8, [32 x %struct.anon] }
%struct.anon = type { i8*, i32 }
%struct.Header = type { %struct.lua_State*, i32, i32 }
%union.Ftypes = type { double, [32 x i8] }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@strlib = internal constant [18 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i32 (%struct.lua_State*)* @str_byte }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i32 (%struct.lua_State*)* @str_char }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 (%struct.lua_State*)* @str_dump }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i32 (%struct.lua_State*)* @str_find }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), i32 (%struct.lua_State*)* @str_format }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str7, i32 0, i32 0), i32 (%struct.lua_State*)* @gmatch }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str8, i32 0, i32 0), i32 (%struct.lua_State*)* @str_gsub }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8]* @.str9, i32 0, i32 0), i32 (%struct.lua_State*)* @str_len }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0), i32 (%struct.lua_State*)* @str_lower }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str11, i32 0, i32 0), i32 (%struct.lua_State*)* @str_match }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8]* @.str12, i32 0, i32 0), i32 (%struct.lua_State*)* @str_rep }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8]* @.str13, i32 0, i32 0), i32 (%struct.lua_State*)* @str_reverse }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8]* @.str14, i32 0, i32 0), i32 (%struct.lua_State*)* @str_sub }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str15, i32 0, i32 0), i32 (%struct.lua_State*)* @str_upper }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str16, i32 0, i32 0), i32 (%struct.lua_State*)* @str_pack }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8]* @.str17, i32 0, i32 0), i32 (%struct.lua_State*)* @str_packsize }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0), i32 (%struct.lua_State*)* @str_unpack }, %struct.luaL_Reg zeroinitializer], align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str1 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"find\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"gmatch\00", align 1
@.str8 = private unnamed_addr constant [5 x i8] c"gsub\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str10 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"rep\00", align 1
@.str13 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str15 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str16 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str17 = private unnamed_addr constant [9 x i8] c"packsize\00", align 1
@.str18 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str19 = private unnamed_addr constant [31 x i8] c"initial position out of string\00", align 1
@.str20 = private unnamed_addr constant [22 x i8] c"data string too short\00", align 1
@.str21 = private unnamed_addr constant [17 x i8] c"too many results\00", align 1
@nativeendian = internal constant %union.anon { i32 1 }, align 4
@.str22 = private unnamed_addr constant [46 x i8] c"%d-byte integer does not fit into Lua Integer\00", align 1
@.str23 = private unnamed_addr constant [35 x i8] c"invalid next option for option 'X'\00", align 1
@.str24 = private unnamed_addr constant [41 x i8] c"format asks for alignment not power of 2\00", align 1
@.str25 = private unnamed_addr constant [35 x i8] c"missing size for format option 'c'\00", align 1
@.str26 = private unnamed_addr constant [27 x i8] c"invalid format option '%c'\00", align 1
@.str27 = private unnamed_addr constant [40 x i8] c"integral size (%d) out of limits [1,%d]\00", align 1
@.str28 = private unnamed_addr constant [24 x i8] c"format result too large\00", align 1
@.str29 = private unnamed_addr constant [23 x i8] c"variable-length format\00", align 1
@.str30 = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@.str31 = private unnamed_addr constant [18 x i8] c"unsigned overflow\00", align 1
@.str32 = private unnamed_addr constant [30 x i8] c"string longer than given size\00", align 1
@.str33 = private unnamed_addr constant [41 x i8] c"string length does not fit in given size\00", align 1
@.str34 = private unnamed_addr constant [22 x i8] c"string contains zeros\00", align 1
@.str35 = private unnamed_addr constant [27 x i8] c"resulting string too large\00", align 1
@.str36 = private unnamed_addr constant [18 x i8] c"too many captures\00", align 1
@.str37 = private unnamed_addr constant [27 x i8] c"invalid capture index %%%d\00", align 1
@.str38 = private unnamed_addr constant [19 x i8] c"unfinished capture\00", align 1
@.str39 = private unnamed_addr constant [20 x i8] c"pattern too complex\00", align 1
@.str40 = private unnamed_addr constant [35 x i8] c"missing '[' after '%%f' in pattern\00", align 1
@.str41 = private unnamed_addr constant [35 x i8] c"malformed pattern (ends with '%%')\00", align 1
@.str42 = private unnamed_addr constant [32 x i8] c"malformed pattern (missing ']')\00", align 1
@.str43 = private unnamed_addr constant [47 x i8] c"malformed pattern (missing arguments to '%%b')\00", align 1
@.str44 = private unnamed_addr constant [24 x i8] c"invalid pattern capture\00", align 1
@.str45 = private unnamed_addr constant [11 x i8] c"^$*+?.([%-\00", align 1
@.str46 = private unnamed_addr constant [31 x i8] c"string/function/table expected\00", align 1
@.str47 = private unnamed_addr constant [33 x i8] c"invalid replacement value (a %s)\00", align 1
@.str48 = private unnamed_addr constant [42 x i8] c"invalid use of '%c' in replacement string\00", align 1
@.str49 = private unnamed_addr constant [9 x i8] c"no value\00", align 1
@.str50 = private unnamed_addr constant [3 x i8] c"ll\00", align 1
@.str51 = private unnamed_addr constant [34 x i8] c"invalid option '%%%c' to 'format'\00", align 1
@.str52 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str53 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@.str54 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str55 = private unnamed_addr constant [26 x i8] c"value has no literal form\00", align 1
@.str56 = private unnamed_addr constant [4 x i8] c"\5C%d\00", align 1
@.str57 = private unnamed_addr constant [6 x i8] c"\5C%03d\00", align 1
@.str58 = private unnamed_addr constant [6 x i8] c"-+ #0\00", align 1
@.str59 = private unnamed_addr constant [32 x i8] c"invalid format (repeated flags)\00", align 1
@.str60 = private unnamed_addr constant [45 x i8] c"invalid format (width or precision too long)\00", align 1
@.str61 = private unnamed_addr constant [30 x i8] c"unable to dump given function\00", align 1
@.str62 = private unnamed_addr constant [19 x i8] c"value out of range\00", align 1
@.str63 = private unnamed_addr constant [22 x i8] c"string slice too long\00", align 1

; Function Attrs: nounwind
define i32 @luaopen_string(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !569), !dbg !570
  %2 = load %struct.lua_State** %1, align 4, !dbg !571
  call void @luaL_checkversion_(%struct.lua_State* %2, double 5.030000e+02, i32 136), !dbg !571
  %3 = load %struct.lua_State** %1, align 4, !dbg !571
  call void @lua_createtable(%struct.lua_State* %3, i32 0, i32 17), !dbg !571
  %4 = load %struct.lua_State** %1, align 4, !dbg !571
  call void @luaL_setfuncs(%struct.lua_State* %4, %struct.luaL_Reg* getelementptr inbounds ([18 x %struct.luaL_Reg]* @strlib, i32 0, i32 0), i32 0), !dbg !571
  %5 = load %struct.lua_State** %1, align 4, !dbg !572
  call void @createmetatable(%struct.lua_State* %5), !dbg !572
  ret i32 1, !dbg !573
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @luaL_checkversion_(%struct.lua_State*, double, i32) #2

declare void @lua_createtable(%struct.lua_State*, i32, i32) #2

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #2

; Function Attrs: nounwind
define internal void @createmetatable(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !574), !dbg !575
  %2 = load %struct.lua_State** %1, align 4, !dbg !576
  call void @lua_createtable(%struct.lua_State* %2, i32 0, i32 1), !dbg !576
  %3 = load %struct.lua_State** %1, align 4, !dbg !577
  %4 = call i8* @lua_pushstring(%struct.lua_State* %3, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)), !dbg !577
  %5 = load %struct.lua_State** %1, align 4, !dbg !578
  call void @lua_pushvalue(%struct.lua_State* %5, i32 -2), !dbg !578
  %6 = load %struct.lua_State** %1, align 4, !dbg !579
  %7 = call i32 @lua_setmetatable(%struct.lua_State* %6, i32 -2), !dbg !579
  %8 = load %struct.lua_State** %1, align 4, !dbg !580
  call void @lua_settop(%struct.lua_State* %8, i32 -2), !dbg !580
  %9 = load %struct.lua_State** %1, align 4, !dbg !581
  call void @lua_pushvalue(%struct.lua_State* %9, i32 -2), !dbg !581
  %10 = load %struct.lua_State** %1, align 4, !dbg !582
  call void @lua_setfield(%struct.lua_State* %10, i32 -2, i8* getelementptr inbounds ([8 x i8]* @.str1, i32 0, i32 0)), !dbg !582
  %11 = load %struct.lua_State** %1, align 4, !dbg !583
  call void @lua_settop(%struct.lua_State* %11, i32 -2), !dbg !583
  ret void, !dbg !584
}

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #2

declare void @lua_pushvalue(%struct.lua_State*, i32) #2

declare i32 @lua_setmetatable(%struct.lua_State*, i32) #2

declare void @lua_settop(%struct.lua_State*, i32) #2

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #2

; Function Attrs: nounwind
define internal i32 @str_byte(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %l = alloca i32, align 4
  %s = alloca i8*, align 4
  %posi = alloca i64, align 8
  %pose = alloca i64, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !585), !dbg !586
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !587), !dbg !588
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !589), !dbg !590
  %3 = load %struct.lua_State** %2, align 4, !dbg !591
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %3, i32 1, i32* %l), !dbg !591
  store i8* %4, i8** %s, align 4, !dbg !591
  call void @llvm.dbg.declare(metadata !{i64* %posi}, metadata !592), !dbg !593
  %5 = load %struct.lua_State** %2, align 4, !dbg !594
  %6 = call i64 @luaL_optinteger(%struct.lua_State* %5, i32 2, i64 1), !dbg !594
  %7 = load i32* %l, align 4, !dbg !595
  %8 = call i64 @posrelat(i64 %6, i32 %7), !dbg !595
  store i64 %8, i64* %posi, align 8, !dbg !595
  call void @llvm.dbg.declare(metadata !{i64* %pose}, metadata !596), !dbg !597
  %9 = load %struct.lua_State** %2, align 4, !dbg !598
  %10 = load i64* %posi, align 8, !dbg !598
  %11 = call i64 @luaL_optinteger(%struct.lua_State* %9, i32 3, i64 %10), !dbg !598
  %12 = load i32* %l, align 4, !dbg !599
  %13 = call i64 @posrelat(i64 %11, i32 %12), !dbg !599
  store i64 %13, i64* %pose, align 8, !dbg !599
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !600), !dbg !601
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !602), !dbg !603
  %14 = load i64* %posi, align 8, !dbg !604
  %15 = icmp slt i64 %14, 1, !dbg !604
  br i1 %15, label %16, label %17, !dbg !604

; <label>:16                                      ; preds = %0
  store i64 1, i64* %posi, align 8, !dbg !606
  br label %17, !dbg !606

; <label>:17                                      ; preds = %16, %0
  %18 = load i64* %pose, align 8, !dbg !608
  %19 = load i32* %l, align 4, !dbg !608
  %20 = zext i32 %19 to i64, !dbg !608
  %21 = icmp sgt i64 %18, %20, !dbg !608
  br i1 %21, label %22, label %25, !dbg !608

; <label>:22                                      ; preds = %17
  %23 = load i32* %l, align 4, !dbg !610
  %24 = zext i32 %23 to i64, !dbg !610
  store i64 %24, i64* %pose, align 8, !dbg !610
  br label %25, !dbg !610

; <label>:25                                      ; preds = %22, %17
  %26 = load i64* %posi, align 8, !dbg !612
  %27 = load i64* %pose, align 8, !dbg !612
  %28 = icmp sgt i64 %26, %27, !dbg !612
  br i1 %28, label %29, label %30, !dbg !612

; <label>:29                                      ; preds = %25
  store i32 0, i32* %1, !dbg !614
  br label %67, !dbg !614

; <label>:30                                      ; preds = %25
  %31 = load i64* %pose, align 8, !dbg !616
  %32 = load i64* %posi, align 8, !dbg !616
  %33 = sub nsw i64 %31, %32, !dbg !616
  %34 = icmp sge i64 %33, 2147483647, !dbg !616
  br i1 %34, label %35, label %38, !dbg !616

; <label>:35                                      ; preds = %30
  %36 = load %struct.lua_State** %2, align 4, !dbg !618
  %37 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %36, i8* getelementptr inbounds ([22 x i8]* @.str63, i32 0, i32 0)), !dbg !618
  store i32 %37, i32* %1, !dbg !618
  br label %67, !dbg !618

; <label>:38                                      ; preds = %30
  %39 = load i64* %pose, align 8, !dbg !619
  %40 = load i64* %posi, align 8, !dbg !619
  %41 = sub nsw i64 %39, %40, !dbg !619
  %42 = trunc i64 %41 to i32, !dbg !619
  %43 = add nsw i32 %42, 1, !dbg !619
  store i32 %43, i32* %n, align 4, !dbg !619
  %44 = load %struct.lua_State** %2, align 4, !dbg !620
  %45 = load i32* %n, align 4, !dbg !620
  call void @luaL_checkstack(%struct.lua_State* %44, i32 %45, i8* getelementptr inbounds ([22 x i8]* @.str63, i32 0, i32 0)), !dbg !620
  store i32 0, i32* %i, align 4, !dbg !621
  br label %46, !dbg !621

; <label>:46                                      ; preds = %62, %38
  %47 = load i32* %i, align 4, !dbg !623
  %48 = load i32* %n, align 4, !dbg !623
  %49 = icmp slt i32 %47, %48, !dbg !623
  br i1 %49, label %50, label %65, !dbg !623

; <label>:50                                      ; preds = %46
  %51 = load %struct.lua_State** %2, align 4, !dbg !626
  %52 = load i64* %posi, align 8, !dbg !626
  %53 = load i32* %i, align 4, !dbg !626
  %54 = sext i32 %53 to i64, !dbg !626
  %55 = add nsw i64 %52, %54, !dbg !626
  %56 = sub nsw i64 %55, 1, !dbg !626
  %57 = trunc i64 %56 to i32, !dbg !626
  %58 = load i8** %s, align 4, !dbg !626
  %59 = getelementptr inbounds i8* %58, i32 %57, !dbg !626
  %60 = load i8* %59, align 1, !dbg !626
  %61 = zext i8 %60 to i64, !dbg !626
  call void @lua_pushinteger(%struct.lua_State* %51, i64 %61), !dbg !626
  br label %62, !dbg !626

; <label>:62                                      ; preds = %50
  %63 = load i32* %i, align 4, !dbg !627
  %64 = add nsw i32 %63, 1, !dbg !627
  store i32 %64, i32* %i, align 4, !dbg !627
  br label %46, !dbg !627

; <label>:65                                      ; preds = %46
  %66 = load i32* %n, align 4, !dbg !628
  store i32 %66, i32* %1, !dbg !628
  br label %67, !dbg !628

; <label>:67                                      ; preds = %65, %35, %29
  %68 = load i32* %1, !dbg !629
  ret i32 %68, !dbg !629
}

; Function Attrs: nounwind
define internal i32 @str_char(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca %struct.luaL_Buffer, align 4
  %p = alloca i8*, align 4
  %c = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !630), !dbg !631
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !632), !dbg !633
  %2 = load %struct.lua_State** %1, align 4, !dbg !634
  %3 = call i32 @lua_gettop(%struct.lua_State* %2), !dbg !634
  store i32 %3, i32* %n, align 4, !dbg !634
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !635), !dbg !636
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer* %b}, metadata !637), !dbg !638
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !639), !dbg !640
  %4 = load %struct.lua_State** %1, align 4, !dbg !641
  %5 = load i32* %n, align 4, !dbg !641
  %6 = call i8* @luaL_buffinitsize(%struct.lua_State* %4, %struct.luaL_Buffer* %b, i32 %5), !dbg !641
  store i8* %6, i8** %p, align 4, !dbg !641
  store i32 1, i32* %i, align 4, !dbg !642
  br label %7, !dbg !642

; <label>:7                                       ; preds = %34, %0
  %8 = load i32* %i, align 4, !dbg !644
  %9 = load i32* %n, align 4, !dbg !644
  %10 = icmp sle i32 %8, %9, !dbg !644
  br i1 %10, label %11, label %37, !dbg !644

; <label>:11                                      ; preds = %7
  call void @llvm.dbg.declare(metadata !{i64* %c}, metadata !647), !dbg !649
  %12 = load %struct.lua_State** %1, align 4, !dbg !650
  %13 = load i32* %i, align 4, !dbg !650
  %14 = call i64 @luaL_checkinteger(%struct.lua_State* %12, i32 %13), !dbg !650
  store i64 %14, i64* %c, align 8, !dbg !650
  %15 = load i64* %c, align 8, !dbg !651
  %16 = trunc i64 %15 to i8, !dbg !651
  %17 = zext i8 %16 to i64, !dbg !651
  %18 = load i64* %c, align 8, !dbg !651
  %19 = icmp eq i64 %17, %18, !dbg !651
  br i1 %19, label %25, label %20, !dbg !651

; <label>:20                                      ; preds = %11
  %21 = load %struct.lua_State** %1, align 4, !dbg !652
  %22 = load i32* %i, align 4, !dbg !652
  %23 = call i32 @luaL_argerror(%struct.lua_State* %21, i32 %22, i8* getelementptr inbounds ([19 x i8]* @.str62, i32 0, i32 0)), !dbg !652
  %24 = icmp ne i32 %23, 0, !dbg !652
  br label %25, !dbg !652

; <label>:25                                      ; preds = %20, %11
  %26 = phi i1 [ true, %11 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32, !dbg !654
  %28 = load i64* %c, align 8, !dbg !657
  %29 = trunc i64 %28 to i8, !dbg !657
  %30 = load i32* %i, align 4, !dbg !657
  %31 = sub nsw i32 %30, 1, !dbg !657
  %32 = load i8** %p, align 4, !dbg !657
  %33 = getelementptr inbounds i8* %32, i32 %31, !dbg !657
  store i8 %29, i8* %33, align 1, !dbg !657
  br label %34, !dbg !658

; <label>:34                                      ; preds = %25
  %35 = load i32* %i, align 4, !dbg !659
  %36 = add nsw i32 %35, 1, !dbg !659
  store i32 %36, i32* %i, align 4, !dbg !659
  br label %7, !dbg !659

; <label>:37                                      ; preds = %7
  %38 = load i32* %n, align 4, !dbg !660
  call void @luaL_pushresultsize(%struct.luaL_Buffer* %b, i32 %38), !dbg !660
  ret i32 1, !dbg !661
}

; Function Attrs: nounwind
define internal i32 @str_dump(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %b = alloca %struct.luaL_Buffer, align 4
  %strip = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !662), !dbg !663
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer* %b}, metadata !664), !dbg !665
  call void @llvm.dbg.declare(metadata !{i32* %strip}, metadata !666), !dbg !667
  %3 = load %struct.lua_State** %2, align 4, !dbg !668
  %4 = call i32 @lua_toboolean(%struct.lua_State* %3, i32 2), !dbg !668
  store i32 %4, i32* %strip, align 4, !dbg !668
  %5 = load %struct.lua_State** %2, align 4, !dbg !669
  call void @luaL_checktype(%struct.lua_State* %5, i32 1, i32 6), !dbg !669
  %6 = load %struct.lua_State** %2, align 4, !dbg !670
  call void @lua_settop(%struct.lua_State* %6, i32 1), !dbg !670
  %7 = load %struct.lua_State** %2, align 4, !dbg !671
  call void @luaL_buffinit(%struct.lua_State* %7, %struct.luaL_Buffer* %b), !dbg !671
  %8 = load %struct.lua_State** %2, align 4, !dbg !672
  %9 = bitcast %struct.luaL_Buffer* %b to i8*, !dbg !672
  %10 = load i32* %strip, align 4, !dbg !672
  %11 = call i32 @lua_dump(%struct.lua_State* %8, i32 (%struct.lua_State*, i8*, i32, i8*)* @writer, i8* %9, i32 %10), !dbg !672
  %12 = icmp ne i32 %11, 0, !dbg !672
  br i1 %12, label %13, label %16, !dbg !672

; <label>:13                                      ; preds = %0
  %14 = load %struct.lua_State** %2, align 4, !dbg !674
  %15 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %14, i8* getelementptr inbounds ([30 x i8]* @.str61, i32 0, i32 0)), !dbg !674
  store i32 %15, i32* %1, !dbg !674
  br label %17, !dbg !674

; <label>:16                                      ; preds = %0
  call void @luaL_pushresult(%struct.luaL_Buffer* %b), !dbg !675
  store i32 1, i32* %1, !dbg !676
  br label %17, !dbg !676

; <label>:17                                      ; preds = %16, %13
  %18 = load i32* %1, !dbg !677
  ret i32 %18, !dbg !677
}

; Function Attrs: nounwind
define internal i32 @str_find(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !678), !dbg !679
  %2 = load %struct.lua_State** %1, align 4, !dbg !680
  %3 = call i32 @str_find_aux(%struct.lua_State* %2, i32 1), !dbg !680
  ret i32 %3, !dbg !680
}

; Function Attrs: nounwind
define internal i32 @str_format(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %top = alloca i32, align 4
  %arg = alloca i32, align 4
  %sfl = alloca i32, align 4
  %strfrmt = alloca i8*, align 4
  %strfrmt_end = alloca i8*, align 4
  %b = alloca %struct.luaL_Buffer, align 4
  %form = alloca [32 x i8], align 1
  %buff = alloca i8*, align 4
  %nb = alloca i32, align 4
  %n = alloca i64, align 8
  %l = alloca i32, align 4
  %s = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !681), !dbg !682
  call void @llvm.dbg.declare(metadata !{i32* %top}, metadata !683), !dbg !684
  %3 = load %struct.lua_State** %2, align 4, !dbg !685
  %4 = call i32 @lua_gettop(%struct.lua_State* %3), !dbg !685
  store i32 %4, i32* %top, align 4, !dbg !685
  call void @llvm.dbg.declare(metadata !{i32* %arg}, metadata !686), !dbg !687
  store i32 1, i32* %arg, align 4, !dbg !688
  call void @llvm.dbg.declare(metadata !{i32* %sfl}, metadata !689), !dbg !690
  call void @llvm.dbg.declare(metadata !{i8** %strfrmt}, metadata !691), !dbg !692
  %5 = load %struct.lua_State** %2, align 4, !dbg !693
  %6 = load i32* %arg, align 4, !dbg !693
  %7 = call i8* @luaL_checklstring(%struct.lua_State* %5, i32 %6, i32* %sfl), !dbg !693
  store i8* %7, i8** %strfrmt, align 4, !dbg !693
  call void @llvm.dbg.declare(metadata !{i8** %strfrmt_end}, metadata !694), !dbg !695
  %8 = load i8** %strfrmt, align 4, !dbg !696
  %9 = load i32* %sfl, align 4, !dbg !696
  %10 = getelementptr inbounds i8* %8, i32 %9, !dbg !696
  store i8* %10, i8** %strfrmt_end, align 4, !dbg !696
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer* %b}, metadata !697), !dbg !698
  %11 = load %struct.lua_State** %2, align 4, !dbg !699
  call void @luaL_buffinit(%struct.lua_State* %11, %struct.luaL_Buffer* %b), !dbg !699
  br label %12, !dbg !700

; <label>:12                                      ; preds = %175, %0
  %13 = load i8** %strfrmt, align 4, !dbg !701
  %14 = load i8** %strfrmt_end, align 4, !dbg !701
  %15 = icmp ult i8* %13, %14, !dbg !701
  br i1 %15, label %16, label %176, !dbg !701

; <label>:16                                      ; preds = %12
  %17 = load i8** %strfrmt, align 4, !dbg !703
  %18 = load i8* %17, align 1, !dbg !703
  %19 = zext i8 %18 to i32, !dbg !703
  %20 = icmp ne i32 %19, 37, !dbg !703
  br i1 %20, label %21, label %42, !dbg !703

; <label>:21                                      ; preds = %16
  %22 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !706
  %23 = load i32* %22, align 4, !dbg !706
  %24 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 1, !dbg !706
  %25 = load i32* %24, align 4, !dbg !706
  %26 = icmp ult i32 %23, %25, !dbg !706
  br i1 %26, label %30, label %27, !dbg !706

; <label>:27                                      ; preds = %21
  %28 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %b, i32 1), !dbg !707
  %29 = icmp ne i8* %28, null, !dbg !707
  br label %30, !dbg !707

; <label>:30                                      ; preds = %27, %21
  %31 = phi i1 [ true, %21 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32, !dbg !709
  %33 = load i8** %strfrmt, align 4, !dbg !709
  %34 = getelementptr inbounds i8* %33, i32 1, !dbg !709
  store i8* %34, i8** %strfrmt, align 4, !dbg !709
  %35 = load i8* %33, align 1, !dbg !709
  %36 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !709
  %37 = load i32* %36, align 4, !dbg !709
  %38 = add i32 %37, 1, !dbg !709
  store i32 %38, i32* %36, align 4, !dbg !709
  %39 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 0, !dbg !709
  %40 = load i8** %39, align 4, !dbg !709
  %41 = getelementptr inbounds i8* %40, i32 %37, !dbg !709
  store i8 %35, i8* %41, align 1, !dbg !709
  br label %175, !dbg !709

; <label>:42                                      ; preds = %16
  %43 = load i8** %strfrmt, align 4, !dbg !712
  %44 = getelementptr inbounds i8* %43, i32 1, !dbg !712
  store i8* %44, i8** %strfrmt, align 4, !dbg !712
  %45 = load i8* %44, align 1, !dbg !712
  %46 = zext i8 %45 to i32, !dbg !712
  %47 = icmp eq i32 %46, 37, !dbg !712
  br i1 %47, label %48, label %69, !dbg !712

; <label>:48                                      ; preds = %42
  %49 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !714
  %50 = load i32* %49, align 4, !dbg !714
  %51 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 1, !dbg !714
  %52 = load i32* %51, align 4, !dbg !714
  %53 = icmp ult i32 %50, %52, !dbg !714
  br i1 %53, label %57, label %54, !dbg !714

; <label>:54                                      ; preds = %48
  %55 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %b, i32 1), !dbg !715
  %56 = icmp ne i8* %55, null, !dbg !715
  br label %57, !dbg !715

; <label>:57                                      ; preds = %54, %48
  %58 = phi i1 [ true, %48 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32, !dbg !717
  %60 = load i8** %strfrmt, align 4, !dbg !717
  %61 = getelementptr inbounds i8* %60, i32 1, !dbg !717
  store i8* %61, i8** %strfrmt, align 4, !dbg !717
  %62 = load i8* %60, align 1, !dbg !717
  %63 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !717
  %64 = load i32* %63, align 4, !dbg !717
  %65 = add i32 %64, 1, !dbg !717
  store i32 %65, i32* %63, align 4, !dbg !717
  %66 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 0, !dbg !717
  %67 = load i8** %66, align 4, !dbg !717
  %68 = getelementptr inbounds i8* %67, i32 %64, !dbg !717
  store i8 %62, i8* %68, align 1, !dbg !717
  br label %174, !dbg !717

; <label>:69                                      ; preds = %42
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %form}, metadata !720), !dbg !723
  call void @llvm.dbg.declare(metadata !{i8** %buff}, metadata !724), !dbg !725
  %70 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %b, i32 428), !dbg !726
  store i8* %70, i8** %buff, align 4, !dbg !726
  call void @llvm.dbg.declare(metadata !{i32* %nb}, metadata !727), !dbg !728
  store i32 0, i32* %nb, align 4, !dbg !729
  %71 = load i32* %arg, align 4, !dbg !730
  %72 = add nsw i32 %71, 1, !dbg !730
  store i32 %72, i32* %arg, align 4, !dbg !730
  %73 = load i32* %top, align 4, !dbg !730
  %74 = icmp sgt i32 %72, %73, !dbg !730
  br i1 %74, label %75, label %79, !dbg !730

; <label>:75                                      ; preds = %69
  %76 = load %struct.lua_State** %2, align 4, !dbg !732
  %77 = load i32* %arg, align 4, !dbg !732
  %78 = call i32 @luaL_argerror(%struct.lua_State* %76, i32 %77, i8* getelementptr inbounds ([9 x i8]* @.str49, i32 0, i32 0)), !dbg !732
  br label %79, !dbg !732

; <label>:79                                      ; preds = %75, %69
  %80 = load %struct.lua_State** %2, align 4, !dbg !733
  %81 = load i8** %strfrmt, align 4, !dbg !733
  %82 = getelementptr inbounds [32 x i8]* %form, i32 0, i32 0, !dbg !733
  %83 = call i8* @scanformat(%struct.lua_State* %80, i8* %81, i8* %82), !dbg !733
  store i8* %83, i8** %strfrmt, align 4, !dbg !733
  %84 = load i8** %strfrmt, align 4, !dbg !734
  %85 = getelementptr inbounds i8* %84, i32 1, !dbg !734
  store i8* %85, i8** %strfrmt, align 4, !dbg !734
  %86 = load i8* %84, align 1, !dbg !734
  %87 = zext i8 %86 to i32, !dbg !734
  switch i32 %87, label %162 [
    i32 99, label %88
    i32 100, label %96
    i32 105, label %96
    i32 111, label %96
    i32 117, label %96
    i32 120, label %96
    i32 88, label %96
    i32 97, label %105
    i32 65, label %105
    i32 101, label %114
    i32 69, label %114
    i32 102, label %114
    i32 103, label %114
    i32 71, label %114
    i32 113, label %122
    i32 115, label %125
  ], !dbg !734

; <label>:88                                      ; preds = %79
  %89 = load i8** %buff, align 4, !dbg !735
  %90 = getelementptr inbounds [32 x i8]* %form, i32 0, i32 0, !dbg !735
  %91 = load %struct.lua_State** %2, align 4, !dbg !735
  %92 = load i32* %arg, align 4, !dbg !735
  %93 = call i64 @luaL_checkinteger(%struct.lua_State* %91, i32 %92), !dbg !735
  %94 = trunc i64 %93 to i32, !dbg !735
  %95 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %89, i32 428, i8* %90, i32 %94) #4, !dbg !735
  store i32 %95, i32* %nb, align 4, !dbg !735
  br label %169, !dbg !738

; <label>:96                                      ; preds = %79, %79, %79, %79, %79, %79
  call void @llvm.dbg.declare(metadata !{i64* %n}, metadata !739), !dbg !741
  %97 = load %struct.lua_State** %2, align 4, !dbg !742
  %98 = load i32* %arg, align 4, !dbg !742
  %99 = call i64 @luaL_checkinteger(%struct.lua_State* %97, i32 %98), !dbg !742
  store i64 %99, i64* %n, align 8, !dbg !742
  %100 = getelementptr inbounds [32 x i8]* %form, i32 0, i32 0, !dbg !743
  call void @addlenmod(i8* %100, i8* getelementptr inbounds ([3 x i8]* @.str50, i32 0, i32 0)), !dbg !743
  %101 = load i8** %buff, align 4, !dbg !744
  %102 = getelementptr inbounds [32 x i8]* %form, i32 0, i32 0, !dbg !744
  %103 = load i64* %n, align 8, !dbg !744
  %104 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %101, i32 428, i8* %102, i64 %103) #4, !dbg !744
  store i32 %104, i32* %nb, align 4, !dbg !744
  br label %169, !dbg !745

; <label>:105                                     ; preds = %79, %79
  %106 = getelementptr inbounds [32 x i8]* %form, i32 0, i32 0, !dbg !746
  call void @addlenmod(i8* %106, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)), !dbg !746
  %107 = load %struct.lua_State** %2, align 4, !dbg !747
  %108 = load i8** %buff, align 4, !dbg !748
  %109 = getelementptr inbounds [32 x i8]* %form, i32 0, i32 0, !dbg !748
  %110 = load %struct.lua_State** %2, align 4, !dbg !748
  %111 = load i32* %arg, align 4, !dbg !748
  %112 = call double @luaL_checknumber(%struct.lua_State* %110, i32 %111), !dbg !748
  %113 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %108, i32 428, i8* %109, double %112) #4, !dbg !748
  store i32 %113, i32* %nb, align 4, !dbg !748
  br label %169, !dbg !749

; <label>:114                                     ; preds = %79, %79, %79, %79, %79
  %115 = getelementptr inbounds [32 x i8]* %form, i32 0, i32 0, !dbg !750
  call void @addlenmod(i8* %115, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)), !dbg !750
  %116 = load i8** %buff, align 4, !dbg !752
  %117 = getelementptr inbounds [32 x i8]* %form, i32 0, i32 0, !dbg !752
  %118 = load %struct.lua_State** %2, align 4, !dbg !752
  %119 = load i32* %arg, align 4, !dbg !752
  %120 = call double @luaL_checknumber(%struct.lua_State* %118, i32 %119), !dbg !752
  %121 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %116, i32 428, i8* %117, double %120) #4, !dbg !752
  store i32 %121, i32* %nb, align 4, !dbg !752
  br label %169, !dbg !753

; <label>:122                                     ; preds = %79
  %123 = load %struct.lua_State** %2, align 4, !dbg !754
  %124 = load i32* %arg, align 4, !dbg !754
  call void @addliteral(%struct.lua_State* %123, %struct.luaL_Buffer* %b, i32 %124), !dbg !754
  br label %169, !dbg !756

; <label>:125                                     ; preds = %79
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !757), !dbg !759
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !760), !dbg !761
  %126 = load %struct.lua_State** %2, align 4, !dbg !762
  %127 = load i32* %arg, align 4, !dbg !762
  %128 = call i8* @luaL_tolstring(%struct.lua_State* %126, i32 %127, i32* %l), !dbg !762
  store i8* %128, i8** %s, align 4, !dbg !762
  %129 = getelementptr inbounds [32 x i8]* %form, i32 0, i32 2, !dbg !763
  %130 = load i8* %129, align 1, !dbg !763
  %131 = zext i8 %130 to i32, !dbg !763
  %132 = icmp eq i32 %131, 0, !dbg !763
  br i1 %132, label %133, label %134, !dbg !763

; <label>:133                                     ; preds = %125
  call void @luaL_addvalue(%struct.luaL_Buffer* %b), !dbg !765
  br label %161, !dbg !765

; <label>:134                                     ; preds = %125
  %135 = load i32* %l, align 4, !dbg !766
  %136 = load i8** %s, align 4, !dbg !766
  %137 = call i32 @strlen(i8* %136) #6, !dbg !766
  %138 = icmp eq i32 %135, %137, !dbg !766
  br i1 %138, label %144, label %139, !dbg !766

; <label>:139                                     ; preds = %134
  %140 = load %struct.lua_State** %2, align 4, !dbg !768
  %141 = load i32* %arg, align 4, !dbg !768
  %142 = call i32 @luaL_argerror(%struct.lua_State* %140, i32 %141, i8* getelementptr inbounds ([22 x i8]* @.str34, i32 0, i32 0)), !dbg !768
  %143 = icmp ne i32 %142, 0, !dbg !768
  br label %144, !dbg !768

; <label>:144                                     ; preds = %139, %134
  %145 = phi i1 [ true, %134 ], [ %143, %139 ]
  %146 = zext i1 %145 to i32, !dbg !770
  %147 = getelementptr inbounds [32 x i8]* %form, i32 0, i32 0, !dbg !773
  %148 = call i8* @strchr(i8* %147, i32 46) #6, !dbg !773
  %149 = icmp ne i8* %148, null, !dbg !773
  br i1 %149, label %154, label %150, !dbg !773

; <label>:150                                     ; preds = %144
  %151 = load i32* %l, align 4, !dbg !775
  %152 = icmp uge i32 %151, 100, !dbg !775
  br i1 %152, label %153, label %154, !dbg !775

; <label>:153                                     ; preds = %150
  call void @luaL_addvalue(%struct.luaL_Buffer* %b), !dbg !777
  br label %160, !dbg !779

; <label>:154                                     ; preds = %150, %144
  %155 = load i8** %buff, align 4, !dbg !780
  %156 = getelementptr inbounds [32 x i8]* %form, i32 0, i32 0, !dbg !780
  %157 = load i8** %s, align 4, !dbg !780
  %158 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %155, i32 428, i8* %156, i8* %157) #4, !dbg !780
  store i32 %158, i32* %nb, align 4, !dbg !780
  %159 = load %struct.lua_State** %2, align 4, !dbg !782
  call void @lua_settop(%struct.lua_State* %159, i32 -2), !dbg !782
  br label %160

; <label>:160                                     ; preds = %154, %153
  br label %161

; <label>:161                                     ; preds = %160, %133
  br label %169, !dbg !783

; <label>:162                                     ; preds = %79
  %163 = load %struct.lua_State** %2, align 4, !dbg !784
  %164 = load i8** %strfrmt, align 4, !dbg !784
  %165 = getelementptr inbounds i8* %164, i32 -1, !dbg !784
  %166 = load i8* %165, align 1, !dbg !784
  %167 = zext i8 %166 to i32, !dbg !784
  %168 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %163, i8* getelementptr inbounds ([34 x i8]* @.str51, i32 0, i32 0), i32 %167), !dbg !784
  store i32 %168, i32* %1, !dbg !784
  br label %177, !dbg !784

; <label>:169                                     ; preds = %161, %122, %114, %105, %96, %88
  %170 = load i32* %nb, align 4, !dbg !786
  %171 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !786
  %172 = load i32* %171, align 4, !dbg !786
  %173 = add i32 %172, %170, !dbg !786
  store i32 %173, i32* %171, align 4, !dbg !786
  br label %174

; <label>:174                                     ; preds = %169, %57
  br label %175

; <label>:175                                     ; preds = %174, %30
  br label %12, !dbg !787

; <label>:176                                     ; preds = %12
  call void @luaL_pushresult(%struct.luaL_Buffer* %b), !dbg !788
  store i32 1, i32* %1, !dbg !789
  br label %177, !dbg !789

; <label>:177                                     ; preds = %176, %162
  %178 = load i32* %1, !dbg !790
  ret i32 %178, !dbg !790
}

; Function Attrs: nounwind
define internal i32 @gmatch(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %ls = alloca i32, align 4
  %lp = alloca i32, align 4
  %s = alloca i8*, align 4
  %p = alloca i8*, align 4
  %gm = alloca %struct.GMatchState*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !791), !dbg !792
  call void @llvm.dbg.declare(metadata !{i32* %ls}, metadata !793), !dbg !794
  call void @llvm.dbg.declare(metadata !{i32* %lp}, metadata !795), !dbg !796
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !797), !dbg !798
  %2 = load %struct.lua_State** %1, align 4, !dbg !799
  %3 = call i8* @luaL_checklstring(%struct.lua_State* %2, i32 1, i32* %ls), !dbg !799
  store i8* %3, i8** %s, align 4, !dbg !799
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !800), !dbg !801
  %4 = load %struct.lua_State** %1, align 4, !dbg !802
  %5 = call i8* @luaL_checklstring(%struct.lua_State* %4, i32 2, i32* %lp), !dbg !802
  store i8* %5, i8** %p, align 4, !dbg !802
  call void @llvm.dbg.declare(metadata !{%struct.GMatchState** %gm}, metadata !803), !dbg !812
  %6 = load %struct.lua_State** %1, align 4, !dbg !813
  call void @lua_settop(%struct.lua_State* %6, i32 2), !dbg !813
  %7 = load %struct.lua_State** %1, align 4, !dbg !814
  %8 = call i8* @lua_newuserdata(%struct.lua_State* %7, i32 292), !dbg !814
  %9 = bitcast i8* %8 to %struct.GMatchState*, !dbg !814
  store %struct.GMatchState* %9, %struct.GMatchState** %gm, align 4, !dbg !814
  %10 = load %struct.GMatchState** %gm, align 4, !dbg !815
  %11 = getelementptr inbounds %struct.GMatchState* %10, i32 0, i32 3, !dbg !815
  %12 = load %struct.lua_State** %1, align 4, !dbg !815
  %13 = load i8** %s, align 4, !dbg !815
  %14 = load i32* %ls, align 4, !dbg !815
  %15 = load i8** %p, align 4, !dbg !815
  %16 = load i32* %lp, align 4, !dbg !815
  call void @prepstate(%struct.MatchState* %11, %struct.lua_State* %12, i8* %13, i32 %14, i8* %15, i32 %16), !dbg !815
  %17 = load i8** %s, align 4, !dbg !816
  %18 = load %struct.GMatchState** %gm, align 4, !dbg !816
  %19 = getelementptr inbounds %struct.GMatchState* %18, i32 0, i32 0, !dbg !816
  store i8* %17, i8** %19, align 4, !dbg !816
  %20 = load i8** %p, align 4, !dbg !817
  %21 = load %struct.GMatchState** %gm, align 4, !dbg !817
  %22 = getelementptr inbounds %struct.GMatchState* %21, i32 0, i32 1, !dbg !817
  store i8* %20, i8** %22, align 4, !dbg !817
  %23 = load %struct.GMatchState** %gm, align 4, !dbg !818
  %24 = getelementptr inbounds %struct.GMatchState* %23, i32 0, i32 2, !dbg !818
  store i8* null, i8** %24, align 4, !dbg !818
  %25 = load %struct.lua_State** %1, align 4, !dbg !819
  call void @lua_pushcclosure(%struct.lua_State* %25, i32 (%struct.lua_State*)* @gmatch_aux, i32 3), !dbg !819
  ret i32 1, !dbg !820
}

; Function Attrs: nounwind
define internal i32 @str_gsub(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %srcl = alloca i32, align 4
  %lp = alloca i32, align 4
  %src = alloca i8*, align 4
  %p = alloca i8*, align 4
  %lastmatch = alloca i8*, align 4
  %tr = alloca i32, align 4
  %max_s = alloca i64, align 8
  %anchor = alloca i32, align 4
  %n = alloca i64, align 8
  %ms = alloca %struct.MatchState, align 4
  %b = alloca %struct.luaL_Buffer, align 4
  %e = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !821), !dbg !822
  call void @llvm.dbg.declare(metadata !{i32* %srcl}, metadata !823), !dbg !824
  call void @llvm.dbg.declare(metadata !{i32* %lp}, metadata !825), !dbg !826
  call void @llvm.dbg.declare(metadata !{i8** %src}, metadata !827), !dbg !828
  %2 = load %struct.lua_State** %1, align 4, !dbg !829
  %3 = call i8* @luaL_checklstring(%struct.lua_State* %2, i32 1, i32* %srcl), !dbg !829
  store i8* %3, i8** %src, align 4, !dbg !829
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !830), !dbg !831
  %4 = load %struct.lua_State** %1, align 4, !dbg !832
  %5 = call i8* @luaL_checklstring(%struct.lua_State* %4, i32 2, i32* %lp), !dbg !832
  store i8* %5, i8** %p, align 4, !dbg !832
  call void @llvm.dbg.declare(metadata !{i8** %lastmatch}, metadata !833), !dbg !834
  store i8* null, i8** %lastmatch, align 4, !dbg !835
  call void @llvm.dbg.declare(metadata !{i32* %tr}, metadata !836), !dbg !837
  %6 = load %struct.lua_State** %1, align 4, !dbg !838
  %7 = call i32 @lua_type(%struct.lua_State* %6, i32 3), !dbg !838
  store i32 %7, i32* %tr, align 4, !dbg !838
  call void @llvm.dbg.declare(metadata !{i64* %max_s}, metadata !839), !dbg !840
  %8 = load %struct.lua_State** %1, align 4, !dbg !841
  %9 = load i32* %srcl, align 4, !dbg !841
  %10 = add i32 %9, 1, !dbg !841
  %11 = zext i32 %10 to i64, !dbg !841
  %12 = call i64 @luaL_optinteger(%struct.lua_State* %8, i32 4, i64 %11), !dbg !841
  store i64 %12, i64* %max_s, align 8, !dbg !841
  call void @llvm.dbg.declare(metadata !{i32* %anchor}, metadata !842), !dbg !843
  %13 = load i8** %p, align 4, !dbg !844
  %14 = load i8* %13, align 1, !dbg !844
  %15 = zext i8 %14 to i32, !dbg !844
  %16 = icmp eq i32 %15, 94, !dbg !844
  %17 = zext i1 %16 to i32, !dbg !844
  store i32 %17, i32* %anchor, align 4, !dbg !844
  call void @llvm.dbg.declare(metadata !{i64* %n}, metadata !845), !dbg !846
  store i64 0, i64* %n, align 8, !dbg !847
  call void @llvm.dbg.declare(metadata !{%struct.MatchState* %ms}, metadata !848), !dbg !849
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer* %b}, metadata !850), !dbg !851
  %18 = load i32* %tr, align 4, !dbg !852
  %19 = icmp eq i32 %18, 3, !dbg !852
  br i1 %19, label %33, label %20, !dbg !852

; <label>:20                                      ; preds = %0
  %21 = load i32* %tr, align 4, !dbg !853
  %22 = icmp eq i32 %21, 4, !dbg !853
  br i1 %22, label %33, label %23, !dbg !853

; <label>:23                                      ; preds = %20
  %24 = load i32* %tr, align 4, !dbg !855
  %25 = icmp eq i32 %24, 6, !dbg !855
  br i1 %25, label %33, label %26, !dbg !855

; <label>:26                                      ; preds = %23
  %27 = load i32* %tr, align 4, !dbg !857
  %28 = icmp eq i32 %27, 5, !dbg !857
  br i1 %28, label %33, label %29, !dbg !857

; <label>:29                                      ; preds = %26
  %30 = load %struct.lua_State** %1, align 4, !dbg !859
  %31 = call i32 @luaL_argerror(%struct.lua_State* %30, i32 3, i8* getelementptr inbounds ([31 x i8]* @.str46, i32 0, i32 0)), !dbg !859
  %32 = icmp ne i32 %31, 0, !dbg !859
  br label %33, !dbg !859

; <label>:33                                      ; preds = %29, %26, %23, %20, %0
  %34 = phi i1 [ true, %26 ], [ true, %23 ], [ true, %20 ], [ true, %0 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32, !dbg !861
  %36 = load %struct.lua_State** %1, align 4, !dbg !867
  call void @luaL_buffinit(%struct.lua_State* %36, %struct.luaL_Buffer* %b), !dbg !867
  %37 = load i32* %anchor, align 4, !dbg !868
  %38 = icmp ne i32 %37, 0, !dbg !868
  br i1 %38, label %39, label %44, !dbg !868

; <label>:39                                      ; preds = %33
  %40 = load i8** %p, align 4, !dbg !870
  %41 = getelementptr inbounds i8* %40, i32 1, !dbg !870
  store i8* %41, i8** %p, align 4, !dbg !870
  %42 = load i32* %lp, align 4, !dbg !872
  %43 = add i32 %42, -1, !dbg !872
  store i32 %43, i32* %lp, align 4, !dbg !872
  br label %44, !dbg !873

; <label>:44                                      ; preds = %39, %33
  %45 = load %struct.lua_State** %1, align 4, !dbg !874
  %46 = load i8** %src, align 4, !dbg !874
  %47 = load i32* %srcl, align 4, !dbg !874
  %48 = load i8** %p, align 4, !dbg !874
  %49 = load i32* %lp, align 4, !dbg !874
  call void @prepstate(%struct.MatchState* %ms, %struct.lua_State* %45, i8* %46, i32 %47, i8* %48, i32 %49), !dbg !874
  br label %50, !dbg !875

; <label>:50                                      ; preds = %102, %44
  %51 = load i64* %n, align 8, !dbg !876
  %52 = load i64* %max_s, align 8, !dbg !876
  %53 = icmp slt i64 %51, %52, !dbg !876
  br i1 %53, label %54, label %103, !dbg !876

; <label>:54                                      ; preds = %50
  call void @llvm.dbg.declare(metadata !{i8** %e}, metadata !878), !dbg !880
  call void @reprepstate(%struct.MatchState* %ms), !dbg !881
  %55 = load i8** %src, align 4, !dbg !882
  %56 = load i8** %p, align 4, !dbg !882
  %57 = call i8* @match(%struct.MatchState* %ms, i8* %55, i8* %56), !dbg !882
  store i8* %57, i8** %e, align 4, !dbg !882
  %58 = icmp ne i8* %57, null, !dbg !882
  br i1 %58, label %59, label %70, !dbg !882

; <label>:59                                      ; preds = %54
  %60 = load i8** %e, align 4, !dbg !884
  %61 = load i8** %lastmatch, align 4, !dbg !884
  %62 = icmp ne i8* %60, %61, !dbg !884
  br i1 %62, label %63, label %70, !dbg !884

; <label>:63                                      ; preds = %59
  %64 = load i64* %n, align 8, !dbg !886
  %65 = add nsw i64 %64, 1, !dbg !886
  store i64 %65, i64* %n, align 8, !dbg !886
  %66 = load i8** %src, align 4, !dbg !888
  %67 = load i8** %e, align 4, !dbg !888
  %68 = load i32* %tr, align 4, !dbg !888
  call void @add_value(%struct.MatchState* %ms, %struct.luaL_Buffer* %b, i8* %66, i8* %67, i32 %68), !dbg !888
  %69 = load i8** %e, align 4, !dbg !889
  store i8* %69, i8** %lastmatch, align 4, !dbg !889
  store i8* %69, i8** %src, align 4, !dbg !889
  br label %98, !dbg !890

; <label>:70                                      ; preds = %59, %54
  %71 = load i8** %src, align 4, !dbg !891
  %72 = getelementptr inbounds %struct.MatchState* %ms, i32 0, i32 1, !dbg !891
  %73 = load i8** %72, align 4, !dbg !891
  %74 = icmp ult i8* %71, %73, !dbg !891
  br i1 %74, label %75, label %96, !dbg !891

; <label>:75                                      ; preds = %70
  %76 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !893
  %77 = load i32* %76, align 4, !dbg !893
  %78 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 1, !dbg !893
  %79 = load i32* %78, align 4, !dbg !893
  %80 = icmp ult i32 %77, %79, !dbg !893
  br i1 %80, label %84, label %81, !dbg !893

; <label>:81                                      ; preds = %75
  %82 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %b, i32 1), !dbg !894
  %83 = icmp ne i8* %82, null, !dbg !894
  br label %84, !dbg !894

; <label>:84                                      ; preds = %81, %75
  %85 = phi i1 [ true, %75 ], [ %83, %81 ]
  %86 = zext i1 %85 to i32, !dbg !896
  %87 = load i8** %src, align 4, !dbg !896
  %88 = getelementptr inbounds i8* %87, i32 1, !dbg !896
  store i8* %88, i8** %src, align 4, !dbg !896
  %89 = load i8* %87, align 1, !dbg !896
  %90 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !896
  %91 = load i32* %90, align 4, !dbg !896
  %92 = add i32 %91, 1, !dbg !896
  store i32 %92, i32* %90, align 4, !dbg !896
  %93 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 0, !dbg !896
  %94 = load i8** %93, align 4, !dbg !896
  %95 = getelementptr inbounds i8* %94, i32 %91, !dbg !896
  store i8 %89, i8* %95, align 1, !dbg !896
  br label %97, !dbg !896

; <label>:96                                      ; preds = %70
  br label %103, !dbg !899

; <label>:97                                      ; preds = %84
  br label %98

; <label>:98                                      ; preds = %97, %63
  %99 = load i32* %anchor, align 4, !dbg !900
  %100 = icmp ne i32 %99, 0, !dbg !900
  br i1 %100, label %101, label %102, !dbg !900

; <label>:101                                     ; preds = %98
  br label %103, !dbg !902

; <label>:102                                     ; preds = %98
  br label %50, !dbg !904

; <label>:103                                     ; preds = %101, %96, %50
  %104 = load i8** %src, align 4, !dbg !905
  %105 = getelementptr inbounds %struct.MatchState* %ms, i32 0, i32 1, !dbg !905
  %106 = load i8** %105, align 4, !dbg !905
  %107 = load i8** %src, align 4, !dbg !905
  %108 = ptrtoint i8* %106 to i32, !dbg !905
  %109 = ptrtoint i8* %107 to i32, !dbg !905
  %110 = sub i32 %108, %109, !dbg !905
  call void @luaL_addlstring(%struct.luaL_Buffer* %b, i8* %104, i32 %110), !dbg !905
  call void @luaL_pushresult(%struct.luaL_Buffer* %b), !dbg !906
  %111 = load %struct.lua_State** %1, align 4, !dbg !907
  %112 = load i64* %n, align 8, !dbg !907
  call void @lua_pushinteger(%struct.lua_State* %111, i64 %112), !dbg !907
  ret i32 2, !dbg !908
}

; Function Attrs: nounwind
define internal i32 @str_len(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %l = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !909), !dbg !910
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !911), !dbg !912
  %2 = load %struct.lua_State** %1, align 4, !dbg !913
  %3 = call i8* @luaL_checklstring(%struct.lua_State* %2, i32 1, i32* %l), !dbg !913
  %4 = load %struct.lua_State** %1, align 4, !dbg !914
  %5 = load i32* %l, align 4, !dbg !914
  %6 = zext i32 %5 to i64, !dbg !914
  call void @lua_pushinteger(%struct.lua_State* %4, i64 %6), !dbg !914
  ret i32 1, !dbg !915
}

; Function Attrs: nounwind
define internal i32 @str_lower(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %l = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca %struct.luaL_Buffer, align 4
  %s = alloca i8*, align 4
  %p = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !916), !dbg !917
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !918), !dbg !919
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !920), !dbg !921
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer* %b}, metadata !922), !dbg !923
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !924), !dbg !925
  %2 = load %struct.lua_State** %1, align 4, !dbg !926
  %3 = call i8* @luaL_checklstring(%struct.lua_State* %2, i32 1, i32* %l), !dbg !926
  store i8* %3, i8** %s, align 4, !dbg !926
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !927), !dbg !928
  %4 = load %struct.lua_State** %1, align 4, !dbg !929
  %5 = load i32* %l, align 4, !dbg !929
  %6 = call i8* @luaL_buffinitsize(%struct.lua_State* %4, %struct.luaL_Buffer* %b, i32 %5), !dbg !929
  store i8* %6, i8** %p, align 4, !dbg !929
  store i32 0, i32* %i, align 4, !dbg !930
  br label %7, !dbg !930

; <label>:7                                       ; preds = %22, %0
  %8 = load i32* %i, align 4, !dbg !932
  %9 = load i32* %l, align 4, !dbg !932
  %10 = icmp ult i32 %8, %9, !dbg !932
  br i1 %10, label %11, label %25, !dbg !932

; <label>:11                                      ; preds = %7
  %12 = load i32* %i, align 4, !dbg !935
  %13 = load i8** %s, align 4, !dbg !935
  %14 = getelementptr inbounds i8* %13, i32 %12, !dbg !935
  %15 = load i8* %14, align 1, !dbg !935
  %16 = zext i8 %15 to i32, !dbg !935
  %17 = call i32 @tolower(i32 %16) #4, !dbg !935
  %18 = trunc i32 %17 to i8, !dbg !935
  %19 = load i32* %i, align 4, !dbg !935
  %20 = load i8** %p, align 4, !dbg !935
  %21 = getelementptr inbounds i8* %20, i32 %19, !dbg !935
  store i8 %18, i8* %21, align 1, !dbg !935
  br label %22, !dbg !935

; <label>:22                                      ; preds = %11
  %23 = load i32* %i, align 4, !dbg !936
  %24 = add i32 %23, 1, !dbg !936
  store i32 %24, i32* %i, align 4, !dbg !936
  br label %7, !dbg !936

; <label>:25                                      ; preds = %7
  %26 = load i32* %l, align 4, !dbg !937
  call void @luaL_pushresultsize(%struct.luaL_Buffer* %b, i32 %26), !dbg !937
  ret i32 1, !dbg !938
}

; Function Attrs: nounwind
define internal i32 @str_match(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !939), !dbg !940
  %2 = load %struct.lua_State** %1, align 4, !dbg !941
  %3 = call i32 @str_find_aux(%struct.lua_State* %2, i32 0), !dbg !941
  ret i32 %3, !dbg !941
}

; Function Attrs: nounwind
define internal i32 @str_rep(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %l = alloca i32, align 4
  %lsep = alloca i32, align 4
  %s = alloca i8*, align 4
  %n = alloca i64, align 8
  %sep = alloca i8*, align 4
  %totallen = alloca i32, align 4
  %b = alloca %struct.luaL_Buffer, align 4
  %p = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !942), !dbg !943
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !944), !dbg !945
  call void @llvm.dbg.declare(metadata !{i32* %lsep}, metadata !946), !dbg !947
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !948), !dbg !949
  %3 = load %struct.lua_State** %2, align 4, !dbg !950
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %3, i32 1, i32* %l), !dbg !950
  store i8* %4, i8** %s, align 4, !dbg !950
  call void @llvm.dbg.declare(metadata !{i64* %n}, metadata !951), !dbg !952
  %5 = load %struct.lua_State** %2, align 4, !dbg !953
  %6 = call i64 @luaL_checkinteger(%struct.lua_State* %5, i32 2), !dbg !953
  store i64 %6, i64* %n, align 8, !dbg !953
  call void @llvm.dbg.declare(metadata !{i8** %sep}, metadata !954), !dbg !955
  %7 = load %struct.lua_State** %2, align 4, !dbg !956
  %8 = call i8* @luaL_optlstring(%struct.lua_State* %7, i32 3, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32* %lsep), !dbg !956
  store i8* %8, i8** %sep, align 4, !dbg !956
  %9 = load i64* %n, align 8, !dbg !957
  %10 = icmp sle i64 %9, 0, !dbg !957
  br i1 %10, label %11, label %14, !dbg !957

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_State** %2, align 4, !dbg !959
  %13 = call i8* @lua_pushstring(%struct.lua_State* %12, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)), !dbg !959
  br label %75, !dbg !959

; <label>:14                                      ; preds = %0
  %15 = load i32* %l, align 4, !dbg !961
  %16 = load i32* %lsep, align 4, !dbg !961
  %17 = add i32 %15, %16, !dbg !961
  %18 = load i32* %l, align 4, !dbg !961
  %19 = icmp ult i32 %17, %18, !dbg !961
  br i1 %19, label %28, label %20, !dbg !961

; <label>:20                                      ; preds = %14
  %21 = load i32* %l, align 4, !dbg !963
  %22 = load i32* %lsep, align 4, !dbg !963
  %23 = add i32 %21, %22, !dbg !963
  %24 = zext i32 %23 to i64, !dbg !963
  %25 = load i64* %n, align 8, !dbg !963
  %26 = sdiv i64 2147483647, %25, !dbg !963
  %27 = icmp sgt i64 %24, %26, !dbg !963
  br i1 %27, label %28, label %31, !dbg !963

; <label>:28                                      ; preds = %20, %14
  %29 = load %struct.lua_State** %2, align 4, !dbg !965
  %30 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %29, i8* getelementptr inbounds ([27 x i8]* @.str35, i32 0, i32 0)), !dbg !965
  store i32 %30, i32* %1, !dbg !965
  br label %76, !dbg !965

; <label>:31                                      ; preds = %20
  call void @llvm.dbg.declare(metadata !{i32* %totallen}, metadata !966), !dbg !968
  %32 = load i64* %n, align 8, !dbg !969
  %33 = trunc i64 %32 to i32, !dbg !969
  %34 = load i32* %l, align 4, !dbg !969
  %35 = mul i32 %33, %34, !dbg !969
  %36 = load i64* %n, align 8, !dbg !969
  %37 = sub nsw i64 %36, 1, !dbg !969
  %38 = trunc i64 %37 to i32, !dbg !969
  %39 = load i32* %lsep, align 4, !dbg !969
  %40 = mul i32 %38, %39, !dbg !969
  %41 = add i32 %35, %40, !dbg !969
  store i32 %41, i32* %totallen, align 4, !dbg !969
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer* %b}, metadata !970), !dbg !971
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !972), !dbg !973
  %42 = load %struct.lua_State** %2, align 4, !dbg !974
  %43 = load i32* %totallen, align 4, !dbg !974
  %44 = call i8* @luaL_buffinitsize(%struct.lua_State* %42, %struct.luaL_Buffer* %b, i32 %43), !dbg !974
  store i8* %44, i8** %p, align 4, !dbg !974
  br label %45, !dbg !975

; <label>:45                                      ; preds = %67, %31
  %46 = load i64* %n, align 8, !dbg !976
  %47 = add nsw i64 %46, -1, !dbg !976
  store i64 %47, i64* %n, align 8, !dbg !976
  %48 = icmp sgt i64 %46, 1, !dbg !976
  br i1 %48, label %49, label %68, !dbg !976

; <label>:49                                      ; preds = %45
  %50 = load i8** %p, align 4, !dbg !978
  %51 = load i8** %s, align 4, !dbg !978
  %52 = load i32* %l, align 4, !dbg !978
  %53 = mul i32 %52, 1, !dbg !978
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %50, i8* %51, i32 %53, i32 1, i1 false), !dbg !978
  %54 = load i32* %l, align 4, !dbg !980
  %55 = load i8** %p, align 4, !dbg !980
  %56 = getelementptr inbounds i8* %55, i32 %54, !dbg !980
  store i8* %56, i8** %p, align 4, !dbg !980
  %57 = load i32* %lsep, align 4, !dbg !981
  %58 = icmp ugt i32 %57, 0, !dbg !981
  br i1 %58, label %59, label %67, !dbg !981

; <label>:59                                      ; preds = %49
  %60 = load i8** %p, align 4, !dbg !983
  %61 = load i8** %sep, align 4, !dbg !983
  %62 = load i32* %lsep, align 4, !dbg !983
  %63 = mul i32 %62, 1, !dbg !983
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %60, i8* %61, i32 %63, i32 1, i1 false), !dbg !983
  %64 = load i32* %lsep, align 4, !dbg !985
  %65 = load i8** %p, align 4, !dbg !985
  %66 = getelementptr inbounds i8* %65, i32 %64, !dbg !985
  store i8* %66, i8** %p, align 4, !dbg !985
  br label %67, !dbg !986

; <label>:67                                      ; preds = %59, %49
  br label %45, !dbg !987

; <label>:68                                      ; preds = %45
  %69 = load i8** %p, align 4, !dbg !988
  %70 = load i8** %s, align 4, !dbg !988
  %71 = load i32* %l, align 4, !dbg !988
  %72 = mul i32 %71, 1, !dbg !988
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %69, i8* %70, i32 %72, i32 1, i1 false), !dbg !988
  %73 = load i32* %totallen, align 4, !dbg !989
  call void @luaL_pushresultsize(%struct.luaL_Buffer* %b, i32 %73), !dbg !989
  br label %74

; <label>:74                                      ; preds = %68
  br label %75

; <label>:75                                      ; preds = %74, %11
  store i32 1, i32* %1, !dbg !990
  br label %76, !dbg !990

; <label>:76                                      ; preds = %75, %28
  %77 = load i32* %1, !dbg !991
  ret i32 %77, !dbg !991
}

; Function Attrs: nounwind
define internal i32 @str_reverse(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %l = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca %struct.luaL_Buffer, align 4
  %s = alloca i8*, align 4
  %p = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !992), !dbg !993
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !994), !dbg !995
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !996), !dbg !997
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer* %b}, metadata !998), !dbg !999
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !1000), !dbg !1001
  %2 = load %struct.lua_State** %1, align 4, !dbg !1002
  %3 = call i8* @luaL_checklstring(%struct.lua_State* %2, i32 1, i32* %l), !dbg !1002
  store i8* %3, i8** %s, align 4, !dbg !1002
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !1003), !dbg !1004
  %4 = load %struct.lua_State** %1, align 4, !dbg !1005
  %5 = load i32* %l, align 4, !dbg !1005
  %6 = call i8* @luaL_buffinitsize(%struct.lua_State* %4, %struct.luaL_Buffer* %b, i32 %5), !dbg !1005
  store i8* %6, i8** %p, align 4, !dbg !1005
  store i32 0, i32* %i, align 4, !dbg !1006
  br label %7, !dbg !1006

; <label>:7                                       ; preds = %22, %0
  %8 = load i32* %i, align 4, !dbg !1008
  %9 = load i32* %l, align 4, !dbg !1008
  %10 = icmp ult i32 %8, %9, !dbg !1008
  br i1 %10, label %11, label %25, !dbg !1008

; <label>:11                                      ; preds = %7
  %12 = load i32* %l, align 4, !dbg !1011
  %13 = load i32* %i, align 4, !dbg !1011
  %14 = sub i32 %12, %13, !dbg !1011
  %15 = sub i32 %14, 1, !dbg !1011
  %16 = load i8** %s, align 4, !dbg !1011
  %17 = getelementptr inbounds i8* %16, i32 %15, !dbg !1011
  %18 = load i8* %17, align 1, !dbg !1011
  %19 = load i32* %i, align 4, !dbg !1011
  %20 = load i8** %p, align 4, !dbg !1011
  %21 = getelementptr inbounds i8* %20, i32 %19, !dbg !1011
  store i8 %18, i8* %21, align 1, !dbg !1011
  br label %22, !dbg !1011

; <label>:22                                      ; preds = %11
  %23 = load i32* %i, align 4, !dbg !1012
  %24 = add i32 %23, 1, !dbg !1012
  store i32 %24, i32* %i, align 4, !dbg !1012
  br label %7, !dbg !1012

; <label>:25                                      ; preds = %7
  %26 = load i32* %l, align 4, !dbg !1013
  call void @luaL_pushresultsize(%struct.luaL_Buffer* %b, i32 %26), !dbg !1013
  ret i32 1, !dbg !1014
}

; Function Attrs: nounwind
define internal i32 @str_sub(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %l = alloca i32, align 4
  %s = alloca i8*, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1015), !dbg !1016
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !1017), !dbg !1018
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !1019), !dbg !1020
  %2 = load %struct.lua_State** %1, align 4, !dbg !1021
  %3 = call i8* @luaL_checklstring(%struct.lua_State* %2, i32 1, i32* %l), !dbg !1021
  store i8* %3, i8** %s, align 4, !dbg !1021
  call void @llvm.dbg.declare(metadata !{i64* %start}, metadata !1022), !dbg !1023
  %4 = load %struct.lua_State** %1, align 4, !dbg !1024
  %5 = call i64 @luaL_checkinteger(%struct.lua_State* %4, i32 2), !dbg !1024
  %6 = load i32* %l, align 4, !dbg !1025
  %7 = call i64 @posrelat(i64 %5, i32 %6), !dbg !1025
  store i64 %7, i64* %start, align 8, !dbg !1025
  call void @llvm.dbg.declare(metadata !{i64* %end}, metadata !1026), !dbg !1027
  %8 = load %struct.lua_State** %1, align 4, !dbg !1028
  %9 = call i64 @luaL_optinteger(%struct.lua_State* %8, i32 3, i64 -1), !dbg !1028
  %10 = load i32* %l, align 4, !dbg !1029
  %11 = call i64 @posrelat(i64 %9, i32 %10), !dbg !1029
  store i64 %11, i64* %end, align 8, !dbg !1029
  %12 = load i64* %start, align 8, !dbg !1030
  %13 = icmp slt i64 %12, 1, !dbg !1030
  br i1 %13, label %14, label %15, !dbg !1030

; <label>:14                                      ; preds = %0
  store i64 1, i64* %start, align 8, !dbg !1032
  br label %15, !dbg !1032

; <label>:15                                      ; preds = %14, %0
  %16 = load i64* %end, align 8, !dbg !1034
  %17 = load i32* %l, align 4, !dbg !1034
  %18 = zext i32 %17 to i64, !dbg !1034
  %19 = icmp sgt i64 %16, %18, !dbg !1034
  br i1 %19, label %20, label %23, !dbg !1034

; <label>:20                                      ; preds = %15
  %21 = load i32* %l, align 4, !dbg !1036
  %22 = zext i32 %21 to i64, !dbg !1036
  store i64 %22, i64* %end, align 8, !dbg !1036
  br label %23, !dbg !1036

; <label>:23                                      ; preds = %20, %15
  %24 = load i64* %start, align 8, !dbg !1038
  %25 = load i64* %end, align 8, !dbg !1038
  %26 = icmp sle i64 %24, %25, !dbg !1038
  br i1 %26, label %27, label %40, !dbg !1038

; <label>:27                                      ; preds = %23
  %28 = load %struct.lua_State** %1, align 4, !dbg !1040
  %29 = load i8** %s, align 4, !dbg !1040
  %30 = load i64* %start, align 8, !dbg !1040
  %31 = trunc i64 %30 to i32, !dbg !1040
  %32 = getelementptr inbounds i8* %29, i32 %31, !dbg !1040
  %33 = getelementptr inbounds i8* %32, i32 -1, !dbg !1040
  %34 = load i64* %end, align 8, !dbg !1040
  %35 = load i64* %start, align 8, !dbg !1040
  %36 = sub nsw i64 %34, %35, !dbg !1040
  %37 = trunc i64 %36 to i32, !dbg !1040
  %38 = add i32 %37, 1, !dbg !1040
  %39 = call i8* @lua_pushlstring(%struct.lua_State* %28, i8* %33, i32 %38), !dbg !1040
  br label %43, !dbg !1040

; <label>:40                                      ; preds = %23
  %41 = load %struct.lua_State** %1, align 4, !dbg !1041
  %42 = call i8* @lua_pushstring(%struct.lua_State* %41, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)), !dbg !1041
  br label %43

; <label>:43                                      ; preds = %40, %27
  ret i32 1, !dbg !1042
}

; Function Attrs: nounwind
define internal i32 @str_upper(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %l = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca %struct.luaL_Buffer, align 4
  %s = alloca i8*, align 4
  %p = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1043), !dbg !1044
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !1045), !dbg !1046
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1047), !dbg !1048
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer* %b}, metadata !1049), !dbg !1050
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !1051), !dbg !1052
  %2 = load %struct.lua_State** %1, align 4, !dbg !1053
  %3 = call i8* @luaL_checklstring(%struct.lua_State* %2, i32 1, i32* %l), !dbg !1053
  store i8* %3, i8** %s, align 4, !dbg !1053
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !1054), !dbg !1055
  %4 = load %struct.lua_State** %1, align 4, !dbg !1056
  %5 = load i32* %l, align 4, !dbg !1056
  %6 = call i8* @luaL_buffinitsize(%struct.lua_State* %4, %struct.luaL_Buffer* %b, i32 %5), !dbg !1056
  store i8* %6, i8** %p, align 4, !dbg !1056
  store i32 0, i32* %i, align 4, !dbg !1057
  br label %7, !dbg !1057

; <label>:7                                       ; preds = %22, %0
  %8 = load i32* %i, align 4, !dbg !1059
  %9 = load i32* %l, align 4, !dbg !1059
  %10 = icmp ult i32 %8, %9, !dbg !1059
  br i1 %10, label %11, label %25, !dbg !1059

; <label>:11                                      ; preds = %7
  %12 = load i32* %i, align 4, !dbg !1062
  %13 = load i8** %s, align 4, !dbg !1062
  %14 = getelementptr inbounds i8* %13, i32 %12, !dbg !1062
  %15 = load i8* %14, align 1, !dbg !1062
  %16 = zext i8 %15 to i32, !dbg !1062
  %17 = call i32 @toupper(i32 %16) #4, !dbg !1062
  %18 = trunc i32 %17 to i8, !dbg !1062
  %19 = load i32* %i, align 4, !dbg !1062
  %20 = load i8** %p, align 4, !dbg !1062
  %21 = getelementptr inbounds i8* %20, i32 %19, !dbg !1062
  store i8 %18, i8* %21, align 1, !dbg !1062
  br label %22, !dbg !1062

; <label>:22                                      ; preds = %11
  %23 = load i32* %i, align 4, !dbg !1063
  %24 = add i32 %23, 1, !dbg !1063
  store i32 %24, i32* %i, align 4, !dbg !1063
  br label %7, !dbg !1063

; <label>:25                                      ; preds = %7
  %26 = load i32* %l, align 4, !dbg !1064
  call void @luaL_pushresultsize(%struct.luaL_Buffer* %b, i32 %26), !dbg !1064
  ret i32 1, !dbg !1065
}

; Function Attrs: nounwind
define internal i32 @str_pack(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %b = alloca %struct.luaL_Buffer, align 4
  %h = alloca %struct.Header, align 4
  %fmt = alloca i8*, align 4
  %arg = alloca i32, align 4
  %totalsize = alloca i32, align 4
  %size = alloca i32, align 4
  %ntoalign = alloca i32, align 4
  %opt = alloca i32, align 4
  %n = alloca i64, align 8
  %lim = alloca i64, align 8
  %n1 = alloca i64, align 8
  %u = alloca %union.Ftypes, align 8
  %buff = alloca i8*, align 4
  %n2 = alloca double, align 8
  %len = alloca i32, align 4
  %s = alloca i8*, align 4
  %len3 = alloca i32, align 4
  %s4 = alloca i8*, align 4
  %len5 = alloca i32, align 4
  %s6 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1066), !dbg !1067
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer* %b}, metadata !1068), !dbg !1069
  call void @llvm.dbg.declare(metadata !{%struct.Header* %h}, metadata !1070), !dbg !1071
  call void @llvm.dbg.declare(metadata !{i8** %fmt}, metadata !1072), !dbg !1073
  %2 = load %struct.lua_State** %1, align 4, !dbg !1074
  %3 = call i8* @luaL_checklstring(%struct.lua_State* %2, i32 1, i32* null), !dbg !1074
  store i8* %3, i8** %fmt, align 4, !dbg !1074
  call void @llvm.dbg.declare(metadata !{i32* %arg}, metadata !1075), !dbg !1076
  store i32 1, i32* %arg, align 4, !dbg !1077
  call void @llvm.dbg.declare(metadata !{i32* %totalsize}, metadata !1078), !dbg !1079
  store i32 0, i32* %totalsize, align 4, !dbg !1080
  %4 = load %struct.lua_State** %1, align 4, !dbg !1081
  call void @initheader(%struct.lua_State* %4, %struct.Header* %h), !dbg !1081
  %5 = load %struct.lua_State** %1, align 4, !dbg !1082
  call void @lua_pushnil(%struct.lua_State* %5), !dbg !1082
  %6 = load %struct.lua_State** %1, align 4, !dbg !1083
  call void @luaL_buffinit(%struct.lua_State* %6, %struct.luaL_Buffer* %b), !dbg !1083
  br label %7, !dbg !1084

; <label>:7                                       ; preds = %272, %0
  %8 = load i8** %fmt, align 4, !dbg !1085
  %9 = load i8* %8, align 1, !dbg !1085
  %10 = zext i8 %9 to i32, !dbg !1085
  %11 = icmp ne i32 %10, 0, !dbg !1085
  br i1 %11, label %12, label %273, !dbg !1085

; <label>:12                                      ; preds = %7
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !1087), !dbg !1089
  call void @llvm.dbg.declare(metadata !{i32* %ntoalign}, metadata !1090), !dbg !1091
  call void @llvm.dbg.declare(metadata !{i32* %opt}, metadata !1092), !dbg !1093
  %13 = load i32* %totalsize, align 4, !dbg !1094
  %14 = call i32 @getdetails(%struct.Header* %h, i32 %13, i8** %fmt, i32* %size, i32* %ntoalign), !dbg !1094
  store i32 %14, i32* %opt, align 4, !dbg !1094
  %15 = load i32* %ntoalign, align 4, !dbg !1095
  %16 = load i32* %size, align 4, !dbg !1095
  %17 = add nsw i32 %15, %16, !dbg !1095
  %18 = load i32* %totalsize, align 4, !dbg !1095
  %19 = add i32 %18, %17, !dbg !1095
  store i32 %19, i32* %totalsize, align 4, !dbg !1095
  br label %20, !dbg !1096

; <label>:20                                      ; preds = %33, %12
  %21 = load i32* %ntoalign, align 4, !dbg !1097
  %22 = add nsw i32 %21, -1, !dbg !1097
  store i32 %22, i32* %ntoalign, align 4, !dbg !1097
  %23 = icmp sgt i32 %21, 0, !dbg !1097
  br i1 %23, label %24, label %42, !dbg !1097

; <label>:24                                      ; preds = %20
  %25 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !1099
  %26 = load i32* %25, align 4, !dbg !1099
  %27 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 1, !dbg !1099
  %28 = load i32* %27, align 4, !dbg !1099
  %29 = icmp ult i32 %26, %28, !dbg !1099
  br i1 %29, label %33, label %30, !dbg !1099

; <label>:30                                      ; preds = %24
  %31 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %b, i32 1), !dbg !1100
  %32 = icmp ne i8* %31, null, !dbg !1100
  br label %33, !dbg !1100

; <label>:33                                      ; preds = %30, %24
  %34 = phi i1 [ true, %24 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32, !dbg !1102
  %36 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !1102
  %37 = load i32* %36, align 4, !dbg !1102
  %38 = add i32 %37, 1, !dbg !1102
  store i32 %38, i32* %36, align 4, !dbg !1102
  %39 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 0, !dbg !1102
  %40 = load i8** %39, align 4, !dbg !1102
  %41 = getelementptr inbounds i8* %40, i32 %37, !dbg !1102
  store i8 0, i8* %41, align 1, !dbg !1102
  br label %20, !dbg !1102

; <label>:42                                      ; preds = %20
  %43 = load i32* %arg, align 4, !dbg !1105
  %44 = add nsw i32 %43, 1, !dbg !1105
  store i32 %44, i32* %arg, align 4, !dbg !1105
  %45 = load i32* %opt, align 4, !dbg !1106
  switch i32 %45, label %272 [
    i32 0, label %46
    i32 1, label %82
    i32 2, label %108
    i32 3, label %141
    i32 4, label %182
    i32 5, label %212
    i32 6, label %251
    i32 7, label %269
    i32 8, label %269
  ], !dbg !1106

; <label>:46                                      ; preds = %42
  call void @llvm.dbg.declare(metadata !{i64* %n}, metadata !1107), !dbg !1110
  %47 = load %struct.lua_State** %1, align 4, !dbg !1111
  %48 = load i32* %arg, align 4, !dbg !1111
  %49 = call i64 @luaL_checkinteger(%struct.lua_State* %47, i32 %48), !dbg !1111
  store i64 %49, i64* %n, align 8, !dbg !1111
  %50 = load i32* %size, align 4, !dbg !1112
  %51 = icmp slt i32 %50, 8, !dbg !1112
  br i1 %51, label %52, label %74, !dbg !1112

; <label>:52                                      ; preds = %46
  call void @llvm.dbg.declare(metadata !{i64* %lim}, metadata !1114), !dbg !1116
  %53 = load i32* %size, align 4, !dbg !1117
  %54 = mul nsw i32 %53, 8, !dbg !1117
  %55 = sub nsw i32 %54, 1, !dbg !1117
  %56 = zext i32 %55 to i64, !dbg !1117
  %57 = shl i64 1, %56, !dbg !1117
  store i64 %57, i64* %lim, align 8, !dbg !1117
  %58 = load i64* %lim, align 8, !dbg !1118
  %59 = sub nsw i64 0, %58, !dbg !1118
  %60 = load i64* %n, align 8, !dbg !1118
  %61 = icmp sle i64 %59, %60, !dbg !1118
  br i1 %61, label %62, label %66, !dbg !1118

; <label>:62                                      ; preds = %52
  %63 = load i64* %n, align 8, !dbg !1119
  %64 = load i64* %lim, align 8, !dbg !1119
  %65 = icmp slt i64 %63, %64, !dbg !1119
  br i1 %65, label %71, label %66, !dbg !1119

; <label>:66                                      ; preds = %62, %52
  %67 = load %struct.lua_State** %1, align 4, !dbg !1121
  %68 = load i32* %arg, align 4, !dbg !1121
  %69 = call i32 @luaL_argerror(%struct.lua_State* %67, i32 %68, i8* getelementptr inbounds ([17 x i8]* @.str30, i32 0, i32 0)), !dbg !1121
  %70 = icmp ne i32 %69, 0, !dbg !1121
  br label %71, !dbg !1121

; <label>:71                                      ; preds = %66, %62
  %72 = phi i1 [ true, %62 ], [ %70, %66 ]
  %73 = zext i1 %72 to i32, !dbg !1124
  br label %74, !dbg !1127

; <label>:74                                      ; preds = %71, %46
  %75 = load i64* %n, align 8, !dbg !1128
  %76 = getelementptr inbounds %struct.Header* %h, i32 0, i32 1, !dbg !1128
  %77 = load i32* %76, align 4, !dbg !1128
  %78 = load i32* %size, align 4, !dbg !1128
  %79 = load i64* %n, align 8, !dbg !1128
  %80 = icmp slt i64 %79, 0, !dbg !1128
  %81 = zext i1 %80 to i32, !dbg !1128
  call void @packint(%struct.luaL_Buffer* %b, i64 %75, i32 %77, i32 %78, i32 %81), !dbg !1128
  br label %272, !dbg !1129

; <label>:82                                      ; preds = %42
  call void @llvm.dbg.declare(metadata !{i64* %n1}, metadata !1130), !dbg !1132
  %83 = load %struct.lua_State** %1, align 4, !dbg !1133
  %84 = load i32* %arg, align 4, !dbg !1133
  %85 = call i64 @luaL_checkinteger(%struct.lua_State* %83, i32 %84), !dbg !1133
  store i64 %85, i64* %n1, align 8, !dbg !1133
  %86 = load i32* %size, align 4, !dbg !1134
  %87 = icmp slt i32 %86, 8, !dbg !1134
  br i1 %87, label %88, label %103, !dbg !1134

; <label>:88                                      ; preds = %82
  %89 = load i64* %n1, align 8, !dbg !1136
  %90 = load i32* %size, align 4, !dbg !1136
  %91 = mul nsw i32 %90, 8, !dbg !1136
  %92 = zext i32 %91 to i64, !dbg !1136
  %93 = shl i64 1, %92, !dbg !1136
  %94 = icmp ult i64 %89, %93, !dbg !1136
  br i1 %94, label %100, label %95, !dbg !1136

; <label>:95                                      ; preds = %88
  %96 = load %struct.lua_State** %1, align 4, !dbg !1137
  %97 = load i32* %arg, align 4, !dbg !1137
  %98 = call i32 @luaL_argerror(%struct.lua_State* %96, i32 %97, i8* getelementptr inbounds ([18 x i8]* @.str31, i32 0, i32 0)), !dbg !1137
  %99 = icmp ne i32 %98, 0, !dbg !1137
  br label %100, !dbg !1137

; <label>:100                                     ; preds = %95, %88
  %101 = phi i1 [ true, %88 ], [ %99, %95 ]
  %102 = zext i1 %101 to i32, !dbg !1139
  br label %103, !dbg !1139

; <label>:103                                     ; preds = %100, %82
  %104 = load i64* %n1, align 8, !dbg !1142
  %105 = getelementptr inbounds %struct.Header* %h, i32 0, i32 1, !dbg !1142
  %106 = load i32* %105, align 4, !dbg !1142
  %107 = load i32* %size, align 4, !dbg !1142
  call void @packint(%struct.luaL_Buffer* %b, i64 %104, i32 %106, i32 %107, i32 0), !dbg !1142
  br label %272, !dbg !1143

; <label>:108                                     ; preds = %42
  call void @llvm.dbg.declare(metadata !{%union.Ftypes* %u}, metadata !1144), !dbg !1160
  call void @llvm.dbg.declare(metadata !{i8** %buff}, metadata !1161), !dbg !1162
  %109 = load i32* %size, align 4, !dbg !1163
  %110 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %b, i32 %109), !dbg !1163
  store i8* %110, i8** %buff, align 4, !dbg !1163
  call void @llvm.dbg.declare(metadata !{double* %n2}, metadata !1164), !dbg !1165
  %111 = load %struct.lua_State** %1, align 4, !dbg !1166
  %112 = load i32* %arg, align 4, !dbg !1166
  %113 = call double @luaL_checknumber(%struct.lua_State* %111, i32 %112), !dbg !1166
  store double %113, double* %n2, align 8, !dbg !1166
  %114 = load i32* %size, align 4, !dbg !1167
  %115 = icmp eq i32 %114, 4, !dbg !1167
  br i1 %115, label %116, label %120, !dbg !1167

; <label>:116                                     ; preds = %108
  %117 = load double* %n2, align 8, !dbg !1169
  %118 = fptrunc double %117 to float, !dbg !1169
  %119 = bitcast %union.Ftypes* %u to float*, !dbg !1169
  store volatile float %118, float* %119, align 4, !dbg !1169
  br label %130, !dbg !1169

; <label>:120                                     ; preds = %108
  %121 = load i32* %size, align 4, !dbg !1171
  %122 = icmp eq i32 %121, 8, !dbg !1171
  br i1 %122, label %123, label %126, !dbg !1171

; <label>:123                                     ; preds = %120
  %124 = load double* %n2, align 8, !dbg !1173
  %125 = bitcast %union.Ftypes* %u to double*, !dbg !1173
  store volatile double %124, double* %125, align 8, !dbg !1173
  br label %129, !dbg !1173

; <label>:126                                     ; preds = %120
  %127 = load double* %n2, align 8, !dbg !1175
  %128 = bitcast %union.Ftypes* %u to double*, !dbg !1175
  store volatile double %127, double* %128, align 8, !dbg !1175
  br label %129

; <label>:129                                     ; preds = %126, %123
  br label %130

; <label>:130                                     ; preds = %129, %116
  %131 = load i8** %buff, align 4, !dbg !1176
  %132 = bitcast %union.Ftypes* %u to [40 x i8]*, !dbg !1176
  %133 = getelementptr inbounds [40 x i8]* %132, i32 0, i32 0, !dbg !1176
  %134 = load i32* %size, align 4, !dbg !1176
  %135 = getelementptr inbounds %struct.Header* %h, i32 0, i32 1, !dbg !1176
  %136 = load i32* %135, align 4, !dbg !1176
  call void @copywithendian(i8* %131, i8* %133, i32 %134, i32 %136), !dbg !1176
  %137 = load i32* %size, align 4, !dbg !1177
  %138 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !1177
  %139 = load i32* %138, align 4, !dbg !1177
  %140 = add i32 %139, %137, !dbg !1177
  store i32 %140, i32* %138, align 4, !dbg !1177
  br label %272, !dbg !1178

; <label>:141                                     ; preds = %42
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !1179), !dbg !1181
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !1182), !dbg !1183
  %142 = load %struct.lua_State** %1, align 4, !dbg !1184
  %143 = load i32* %arg, align 4, !dbg !1184
  %144 = call i8* @luaL_checklstring(%struct.lua_State* %142, i32 %143, i32* %len), !dbg !1184
  store i8* %144, i8** %s, align 4, !dbg !1184
  %145 = load i32* %len, align 4, !dbg !1185
  %146 = load i32* %size, align 4, !dbg !1185
  %147 = icmp ule i32 %145, %146, !dbg !1185
  br i1 %147, label %153, label %148, !dbg !1185

; <label>:148                                     ; preds = %141
  %149 = load %struct.lua_State** %1, align 4, !dbg !1186
  %150 = load i32* %arg, align 4, !dbg !1186
  %151 = call i32 @luaL_argerror(%struct.lua_State* %149, i32 %150, i8* getelementptr inbounds ([30 x i8]* @.str32, i32 0, i32 0)), !dbg !1186
  %152 = icmp ne i32 %151, 0, !dbg !1186
  br label %153, !dbg !1186

; <label>:153                                     ; preds = %148, %141
  %154 = phi i1 [ true, %141 ], [ %152, %148 ]
  %155 = zext i1 %154 to i32, !dbg !1188
  %156 = load i8** %s, align 4, !dbg !1191
  %157 = load i32* %len, align 4, !dbg !1191
  call void @luaL_addlstring(%struct.luaL_Buffer* %b, i8* %156, i32 %157), !dbg !1191
  br label %158, !dbg !1192

; <label>:158                                     ; preds = %172, %153
  %159 = load i32* %len, align 4, !dbg !1193
  %160 = add i32 %159, 1, !dbg !1193
  store i32 %160, i32* %len, align 4, !dbg !1193
  %161 = load i32* %size, align 4, !dbg !1193
  %162 = icmp ult i32 %159, %161, !dbg !1193
  br i1 %162, label %163, label %181, !dbg !1193

; <label>:163                                     ; preds = %158
  %164 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !1195
  %165 = load i32* %164, align 4, !dbg !1195
  %166 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 1, !dbg !1195
  %167 = load i32* %166, align 4, !dbg !1195
  %168 = icmp ult i32 %165, %167, !dbg !1195
  br i1 %168, label %172, label %169, !dbg !1195

; <label>:169                                     ; preds = %163
  %170 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %b, i32 1), !dbg !1196
  %171 = icmp ne i8* %170, null, !dbg !1196
  br label %172, !dbg !1196

; <label>:172                                     ; preds = %169, %163
  %173 = phi i1 [ true, %163 ], [ %171, %169 ]
  %174 = zext i1 %173 to i32, !dbg !1198
  %175 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !1198
  %176 = load i32* %175, align 4, !dbg !1198
  %177 = add i32 %176, 1, !dbg !1198
  store i32 %177, i32* %175, align 4, !dbg !1198
  %178 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 0, !dbg !1198
  %179 = load i8** %178, align 4, !dbg !1198
  %180 = getelementptr inbounds i8* %179, i32 %176, !dbg !1198
  store i8 0, i8* %180, align 1, !dbg !1198
  br label %158, !dbg !1198

; <label>:181                                     ; preds = %158
  br label %272, !dbg !1201

; <label>:182                                     ; preds = %42
  call void @llvm.dbg.declare(metadata !{i32* %len3}, metadata !1202), !dbg !1204
  call void @llvm.dbg.declare(metadata !{i8** %s4}, metadata !1205), !dbg !1206
  %183 = load %struct.lua_State** %1, align 4, !dbg !1207
  %184 = load i32* %arg, align 4, !dbg !1207
  %185 = call i8* @luaL_checklstring(%struct.lua_State* %183, i32 %184, i32* %len3), !dbg !1207
  store i8* %185, i8** %s4, align 4, !dbg !1207
  %186 = load i32* %size, align 4, !dbg !1208
  %187 = icmp sge i32 %186, 4, !dbg !1208
  br i1 %187, label %199, label %188, !dbg !1208

; <label>:188                                     ; preds = %182
  %189 = load i32* %len3, align 4, !dbg !1209
  %190 = load i32* %size, align 4, !dbg !1209
  %191 = mul nsw i32 %190, 8, !dbg !1209
  %192 = shl i32 1, %191, !dbg !1209
  %193 = icmp ult i32 %189, %192, !dbg !1209
  br i1 %193, label %199, label %194, !dbg !1209

; <label>:194                                     ; preds = %188
  %195 = load %struct.lua_State** %1, align 4, !dbg !1211
  %196 = load i32* %arg, align 4, !dbg !1211
  %197 = call i32 @luaL_argerror(%struct.lua_State* %195, i32 %196, i8* getelementptr inbounds ([41 x i8]* @.str33, i32 0, i32 0)), !dbg !1211
  %198 = icmp ne i32 %197, 0, !dbg !1211
  br label %199, !dbg !1211

; <label>:199                                     ; preds = %194, %188, %182
  %200 = phi i1 [ true, %188 ], [ true, %182 ], [ %198, %194 ]
  %201 = zext i1 %200 to i32, !dbg !1213
  %202 = load i32* %len3, align 4, !dbg !1217
  %203 = zext i32 %202 to i64, !dbg !1217
  %204 = getelementptr inbounds %struct.Header* %h, i32 0, i32 1, !dbg !1217
  %205 = load i32* %204, align 4, !dbg !1217
  %206 = load i32* %size, align 4, !dbg !1217
  call void @packint(%struct.luaL_Buffer* %b, i64 %203, i32 %205, i32 %206, i32 0), !dbg !1217
  %207 = load i8** %s4, align 4, !dbg !1218
  %208 = load i32* %len3, align 4, !dbg !1218
  call void @luaL_addlstring(%struct.luaL_Buffer* %b, i8* %207, i32 %208), !dbg !1218
  %209 = load i32* %len3, align 4, !dbg !1219
  %210 = load i32* %totalsize, align 4, !dbg !1219
  %211 = add i32 %210, %209, !dbg !1219
  store i32 %211, i32* %totalsize, align 4, !dbg !1219
  br label %272, !dbg !1220

; <label>:212                                     ; preds = %42
  call void @llvm.dbg.declare(metadata !{i32* %len5}, metadata !1221), !dbg !1223
  call void @llvm.dbg.declare(metadata !{i8** %s6}, metadata !1224), !dbg !1225
  %213 = load %struct.lua_State** %1, align 4, !dbg !1226
  %214 = load i32* %arg, align 4, !dbg !1226
  %215 = call i8* @luaL_checklstring(%struct.lua_State* %213, i32 %214, i32* %len5), !dbg !1226
  store i8* %215, i8** %s6, align 4, !dbg !1226
  %216 = load i8** %s6, align 4, !dbg !1227
  %217 = call i32 @strlen(i8* %216) #6, !dbg !1227
  %218 = load i32* %len5, align 4, !dbg !1227
  %219 = icmp eq i32 %217, %218, !dbg !1227
  br i1 %219, label %225, label %220, !dbg !1227

; <label>:220                                     ; preds = %212
  %221 = load %struct.lua_State** %1, align 4, !dbg !1228
  %222 = load i32* %arg, align 4, !dbg !1228
  %223 = call i32 @luaL_argerror(%struct.lua_State* %221, i32 %222, i8* getelementptr inbounds ([22 x i8]* @.str34, i32 0, i32 0)), !dbg !1228
  %224 = icmp ne i32 %223, 0, !dbg !1228
  br label %225, !dbg !1228

; <label>:225                                     ; preds = %220, %212
  %226 = phi i1 [ true, %212 ], [ %224, %220 ]
  %227 = zext i1 %226 to i32, !dbg !1230
  %228 = load i8** %s6, align 4, !dbg !1233
  %229 = load i32* %len5, align 4, !dbg !1233
  call void @luaL_addlstring(%struct.luaL_Buffer* %b, i8* %228, i32 %229), !dbg !1233
  %230 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !1234
  %231 = load i32* %230, align 4, !dbg !1234
  %232 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 1, !dbg !1234
  %233 = load i32* %232, align 4, !dbg !1234
  %234 = icmp ult i32 %231, %233, !dbg !1234
  br i1 %234, label %238, label %235, !dbg !1234

; <label>:235                                     ; preds = %225
  %236 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %b, i32 1), !dbg !1235
  %237 = icmp ne i8* %236, null, !dbg !1235
  br label %238, !dbg !1235

; <label>:238                                     ; preds = %235, %225
  %239 = phi i1 [ true, %225 ], [ %237, %235 ]
  %240 = zext i1 %239 to i32, !dbg !1237
  %241 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !1237
  %242 = load i32* %241, align 4, !dbg !1237
  %243 = add i32 %242, 1, !dbg !1237
  store i32 %243, i32* %241, align 4, !dbg !1237
  %244 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 0, !dbg !1237
  %245 = load i8** %244, align 4, !dbg !1237
  %246 = getelementptr inbounds i8* %245, i32 %242, !dbg !1237
  store i8 0, i8* %246, align 1, !dbg !1237
  %247 = load i32* %len5, align 4, !dbg !1240
  %248 = add i32 %247, 1, !dbg !1240
  %249 = load i32* %totalsize, align 4, !dbg !1240
  %250 = add i32 %249, %248, !dbg !1240
  store i32 %250, i32* %totalsize, align 4, !dbg !1240
  br label %272, !dbg !1241

; <label>:251                                     ; preds = %42
  %252 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !1242
  %253 = load i32* %252, align 4, !dbg !1242
  %254 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 1, !dbg !1242
  %255 = load i32* %254, align 4, !dbg !1242
  %256 = icmp ult i32 %253, %255, !dbg !1242
  br i1 %256, label %260, label %257, !dbg !1242

; <label>:257                                     ; preds = %251
  %258 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %b, i32 1), !dbg !1243
  %259 = icmp ne i8* %258, null, !dbg !1243
  br label %260, !dbg !1243

; <label>:260                                     ; preds = %257, %251
  %261 = phi i1 [ true, %251 ], [ %259, %257 ]
  %262 = zext i1 %261 to i32, !dbg !1245
  %263 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !1245
  %264 = load i32* %263, align 4, !dbg !1245
  %265 = add i32 %264, 1, !dbg !1245
  store i32 %265, i32* %263, align 4, !dbg !1245
  %266 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 0, !dbg !1245
  %267 = load i8** %266, align 4, !dbg !1245
  %268 = getelementptr inbounds i8* %267, i32 %264, !dbg !1245
  store i8 0, i8* %268, align 1, !dbg !1245
  br label %269, !dbg !1245

; <label>:269                                     ; preds = %42, %42, %260
  %270 = load i32* %arg, align 4, !dbg !1248
  %271 = add nsw i32 %270, -1, !dbg !1248
  store i32 %271, i32* %arg, align 4, !dbg !1248
  br label %272, !dbg !1249

; <label>:272                                     ; preds = %42, %269, %238, %199, %181, %130, %103, %74
  br label %7, !dbg !1250

; <label>:273                                     ; preds = %7
  call void @luaL_pushresult(%struct.luaL_Buffer* %b), !dbg !1251
  ret i32 1, !dbg !1252
}

; Function Attrs: nounwind
define internal i32 @str_packsize(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %h = alloca %struct.Header, align 4
  %fmt = alloca i8*, align 4
  %totalsize = alloca i32, align 4
  %size = alloca i32, align 4
  %ntoalign = alloca i32, align 4
  %opt = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1253), !dbg !1254
  call void @llvm.dbg.declare(metadata !{%struct.Header* %h}, metadata !1255), !dbg !1256
  call void @llvm.dbg.declare(metadata !{i8** %fmt}, metadata !1257), !dbg !1258
  %2 = load %struct.lua_State** %1, align 4, !dbg !1259
  %3 = call i8* @luaL_checklstring(%struct.lua_State* %2, i32 1, i32* null), !dbg !1259
  store i8* %3, i8** %fmt, align 4, !dbg !1259
  call void @llvm.dbg.declare(metadata !{i32* %totalsize}, metadata !1260), !dbg !1261
  store i32 0, i32* %totalsize, align 4, !dbg !1262
  %4 = load %struct.lua_State** %1, align 4, !dbg !1263
  call void @initheader(%struct.lua_State* %4, %struct.Header* %h), !dbg !1263
  br label %5, !dbg !1264

; <label>:5                                       ; preds = %35, %0
  %6 = load i8** %fmt, align 4, !dbg !1265
  %7 = load i8* %6, align 1, !dbg !1265
  %8 = zext i8 %7 to i32, !dbg !1265
  %9 = icmp ne i32 %8, 0, !dbg !1265
  br i1 %9, label %10, label %36, !dbg !1265

; <label>:10                                      ; preds = %5
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !1267), !dbg !1269
  call void @llvm.dbg.declare(metadata !{i32* %ntoalign}, metadata !1270), !dbg !1271
  call void @llvm.dbg.declare(metadata !{i32* %opt}, metadata !1272), !dbg !1273
  %11 = load i32* %totalsize, align 4, !dbg !1274
  %12 = call i32 @getdetails(%struct.Header* %h, i32 %11, i8** %fmt, i32* %size, i32* %ntoalign), !dbg !1274
  store i32 %12, i32* %opt, align 4, !dbg !1274
  %13 = load i32* %ntoalign, align 4, !dbg !1275
  %14 = load i32* %size, align 4, !dbg !1275
  %15 = add nsw i32 %14, %13, !dbg !1275
  store i32 %15, i32* %size, align 4, !dbg !1275
  %16 = load i32* %totalsize, align 4, !dbg !1276
  %17 = load i32* %size, align 4, !dbg !1276
  %18 = sub i32 2147483647, %17, !dbg !1276
  %19 = icmp ule i32 %16, %18, !dbg !1276
  br i1 %19, label %24, label %20, !dbg !1276

; <label>:20                                      ; preds = %10
  %21 = load %struct.lua_State** %1, align 4, !dbg !1277
  %22 = call i32 @luaL_argerror(%struct.lua_State* %21, i32 1, i8* getelementptr inbounds ([24 x i8]* @.str28, i32 0, i32 0)), !dbg !1277
  %23 = icmp ne i32 %22, 0, !dbg !1277
  br label %24, !dbg !1277

; <label>:24                                      ; preds = %20, %10
  %25 = phi i1 [ true, %10 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32, !dbg !1279
  %27 = load i32* %size, align 4, !dbg !1282
  %28 = load i32* %totalsize, align 4, !dbg !1282
  %29 = add i32 %28, %27, !dbg !1282
  store i32 %29, i32* %totalsize, align 4, !dbg !1282
  %30 = load i32* %opt, align 4, !dbg !1283
  switch i32 %30, label %34 [
    i32 4, label %31
    i32 5, label %31
  ], !dbg !1283

; <label>:31                                      ; preds = %24, %24
  %32 = load %struct.lua_State** %1, align 4, !dbg !1284
  %33 = call i32 @luaL_argerror(%struct.lua_State* %32, i32 1, i8* getelementptr inbounds ([23 x i8]* @.str29, i32 0, i32 0)), !dbg !1284
  br label %34, !dbg !1284

; <label>:34                                      ; preds = %24, %31
  br label %35, !dbg !1286

; <label>:35                                      ; preds = %34
  br label %5, !dbg !1287

; <label>:36                                      ; preds = %5
  %37 = load %struct.lua_State** %1, align 4, !dbg !1288
  %38 = load i32* %totalsize, align 4, !dbg !1288
  %39 = zext i32 %38 to i64, !dbg !1288
  call void @lua_pushinteger(%struct.lua_State* %37, i64 %39), !dbg !1288
  ret i32 1, !dbg !1289
}

; Function Attrs: nounwind
define internal i32 @str_unpack(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %h = alloca %struct.Header, align 4
  %fmt = alloca i8*, align 4
  %ld = alloca i32, align 4
  %data = alloca i8*, align 4
  %pos = alloca i32, align 4
  %n = alloca i32, align 4
  %size = alloca i32, align 4
  %ntoalign = alloca i32, align 4
  %opt = alloca i32, align 4
  %res = alloca i64, align 8
  %u = alloca %union.Ftypes, align 8
  %num = alloca double, align 8
  %len = alloca i32, align 4
  %len1 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1290), !dbg !1291
  call void @llvm.dbg.declare(metadata !{%struct.Header* %h}, metadata !1292), !dbg !1293
  call void @llvm.dbg.declare(metadata !{i8** %fmt}, metadata !1294), !dbg !1295
  %2 = load %struct.lua_State** %1, align 4, !dbg !1296
  %3 = call i8* @luaL_checklstring(%struct.lua_State* %2, i32 1, i32* null), !dbg !1296
  store i8* %3, i8** %fmt, align 4, !dbg !1296
  call void @llvm.dbg.declare(metadata !{i32* %ld}, metadata !1297), !dbg !1298
  call void @llvm.dbg.declare(metadata !{i8** %data}, metadata !1299), !dbg !1300
  %4 = load %struct.lua_State** %1, align 4, !dbg !1301
  %5 = call i8* @luaL_checklstring(%struct.lua_State* %4, i32 2, i32* %ld), !dbg !1301
  store i8* %5, i8** %data, align 4, !dbg !1301
  call void @llvm.dbg.declare(metadata !{i32* %pos}, metadata !1302), !dbg !1303
  %6 = load %struct.lua_State** %1, align 4, !dbg !1304
  %7 = call i64 @luaL_optinteger(%struct.lua_State* %6, i32 3, i64 1), !dbg !1304
  %8 = load i32* %ld, align 4, !dbg !1305
  %9 = call i64 @posrelat(i64 %7, i32 %8), !dbg !1305
  %10 = trunc i64 %9 to i32, !dbg !1305
  %11 = sub i32 %10, 1, !dbg !1305
  store i32 %11, i32* %pos, align 4, !dbg !1305
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !1306), !dbg !1307
  store i32 0, i32* %n, align 4, !dbg !1308
  %12 = load i32* %pos, align 4, !dbg !1309
  %13 = load i32* %ld, align 4, !dbg !1309
  %14 = icmp ule i32 %12, %13, !dbg !1309
  br i1 %14, label %19, label %15, !dbg !1309

; <label>:15                                      ; preds = %0
  %16 = load %struct.lua_State** %1, align 4, !dbg !1310
  %17 = call i32 @luaL_argerror(%struct.lua_State* %16, i32 3, i8* getelementptr inbounds ([31 x i8]* @.str19, i32 0, i32 0)), !dbg !1310
  %18 = icmp ne i32 %17, 0, !dbg !1310
  br label %19, !dbg !1310

; <label>:19                                      ; preds = %15, %0
  %20 = phi i1 [ true, %0 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32, !dbg !1312
  %22 = load %struct.lua_State** %1, align 4, !dbg !1315
  call void @initheader(%struct.lua_State* %22, %struct.Header* %h), !dbg !1315
  br label %23, !dbg !1316

; <label>:23                                      ; preds = %158, %19
  %24 = load i8** %fmt, align 4, !dbg !1317
  %25 = load i8* %24, align 1, !dbg !1317
  %26 = zext i8 %25 to i32, !dbg !1317
  %27 = icmp ne i32 %26, 0, !dbg !1317
  br i1 %27, label %28, label %162, !dbg !1317

; <label>:28                                      ; preds = %23
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !1319), !dbg !1321
  call void @llvm.dbg.declare(metadata !{i32* %ntoalign}, metadata !1322), !dbg !1323
  call void @llvm.dbg.declare(metadata !{i32* %opt}, metadata !1324), !dbg !1325
  %29 = load i32* %pos, align 4, !dbg !1326
  %30 = call i32 @getdetails(%struct.Header* %h, i32 %29, i8** %fmt, i32* %size, i32* %ntoalign), !dbg !1326
  store i32 %30, i32* %opt, align 4, !dbg !1326
  %31 = load i32* %ntoalign, align 4, !dbg !1327
  %32 = load i32* %size, align 4, !dbg !1327
  %33 = add i32 %31, %32, !dbg !1327
  %34 = load i32* %pos, align 4, !dbg !1327
  %35 = xor i32 %34, -1, !dbg !1327
  %36 = icmp ugt i32 %33, %35, !dbg !1327
  br i1 %36, label %45, label %37, !dbg !1327

; <label>:37                                      ; preds = %28
  %38 = load i32* %pos, align 4, !dbg !1329
  %39 = load i32* %ntoalign, align 4, !dbg !1329
  %40 = add i32 %38, %39, !dbg !1329
  %41 = load i32* %size, align 4, !dbg !1329
  %42 = add i32 %40, %41, !dbg !1329
  %43 = load i32* %ld, align 4, !dbg !1329
  %44 = icmp ugt i32 %42, %43, !dbg !1329
  br i1 %44, label %45, label %48, !dbg !1329

; <label>:45                                      ; preds = %37, %28
  %46 = load %struct.lua_State** %1, align 4, !dbg !1331
  %47 = call i32 @luaL_argerror(%struct.lua_State* %46, i32 2, i8* getelementptr inbounds ([22 x i8]* @.str20, i32 0, i32 0)), !dbg !1331
  br label %48, !dbg !1331

; <label>:48                                      ; preds = %45, %37
  %49 = load i32* %ntoalign, align 4, !dbg !1332
  %50 = load i32* %pos, align 4, !dbg !1332
  %51 = add i32 %50, %49, !dbg !1332
  store i32 %51, i32* %pos, align 4, !dbg !1332
  %52 = load %struct.lua_State** %1, align 4, !dbg !1333
  call void @luaL_checkstack(%struct.lua_State* %52, i32 2, i8* getelementptr inbounds ([17 x i8]* @.str21, i32 0, i32 0)), !dbg !1333
  %53 = load i32* %n, align 4, !dbg !1334
  %54 = add nsw i32 %53, 1, !dbg !1334
  store i32 %54, i32* %n, align 4, !dbg !1334
  %55 = load i32* %opt, align 4, !dbg !1335
  switch i32 %55, label %158 [
    i32 0, label %56
    i32 1, label %56
    i32 2, label %70
    i32 3, label %98
    i32 4, label %105
    i32 5, label %140
    i32 7, label %155
    i32 6, label %155
    i32 8, label %155
  ], !dbg !1335

; <label>:56                                      ; preds = %48, %48
  call void @llvm.dbg.declare(metadata !{i64* %res}, metadata !1336), !dbg !1339
  %57 = load %struct.lua_State** %1, align 4, !dbg !1340
  %58 = load i8** %data, align 4, !dbg !1340
  %59 = load i32* %pos, align 4, !dbg !1340
  %60 = getelementptr inbounds i8* %58, i32 %59, !dbg !1340
  %61 = getelementptr inbounds %struct.Header* %h, i32 0, i32 1, !dbg !1340
  %62 = load i32* %61, align 4, !dbg !1340
  %63 = load i32* %size, align 4, !dbg !1340
  %64 = load i32* %opt, align 4, !dbg !1340
  %65 = icmp eq i32 %64, 0, !dbg !1340
  %66 = zext i1 %65 to i32, !dbg !1340
  %67 = call i64 @unpackint(%struct.lua_State* %57, i8* %60, i32 %62, i32 %63, i32 %66), !dbg !1340
  store i64 %67, i64* %res, align 8, !dbg !1340
  %68 = load %struct.lua_State** %1, align 4, !dbg !1341
  %69 = load i64* %res, align 8, !dbg !1341
  call void @lua_pushinteger(%struct.lua_State* %68, i64 %69), !dbg !1341
  br label %158, !dbg !1342

; <label>:70                                      ; preds = %48
  call void @llvm.dbg.declare(metadata !{%union.Ftypes* %u}, metadata !1343), !dbg !1345
  call void @llvm.dbg.declare(metadata !{double* %num}, metadata !1346), !dbg !1347
  %71 = bitcast %union.Ftypes* %u to [40 x i8]*, !dbg !1348
  %72 = getelementptr inbounds [40 x i8]* %71, i32 0, i32 0, !dbg !1348
  %73 = load i8** %data, align 4, !dbg !1348
  %74 = load i32* %pos, align 4, !dbg !1348
  %75 = getelementptr inbounds i8* %73, i32 %74, !dbg !1348
  %76 = load i32* %size, align 4, !dbg !1348
  %77 = getelementptr inbounds %struct.Header* %h, i32 0, i32 1, !dbg !1348
  %78 = load i32* %77, align 4, !dbg !1348
  call void @copywithendian(i8* %72, i8* %75, i32 %76, i32 %78), !dbg !1348
  %79 = load i32* %size, align 4, !dbg !1349
  %80 = icmp eq i32 %79, 4, !dbg !1349
  br i1 %80, label %81, label %85, !dbg !1349

; <label>:81                                      ; preds = %70
  %82 = bitcast %union.Ftypes* %u to float*, !dbg !1351
  %83 = load volatile float* %82, align 4, !dbg !1351
  %84 = fpext float %83 to double, !dbg !1351
  store double %84, double* %num, align 8, !dbg !1351
  br label %95, !dbg !1351

; <label>:85                                      ; preds = %70
  %86 = load i32* %size, align 4, !dbg !1353
  %87 = icmp eq i32 %86, 8, !dbg !1353
  br i1 %87, label %88, label %91, !dbg !1353

; <label>:88                                      ; preds = %85
  %89 = bitcast %union.Ftypes* %u to double*, !dbg !1355
  %90 = load volatile double* %89, align 8, !dbg !1355
  store double %90, double* %num, align 8, !dbg !1355
  br label %94, !dbg !1355

; <label>:91                                      ; preds = %85
  %92 = bitcast %union.Ftypes* %u to double*, !dbg !1357
  %93 = load volatile double* %92, align 8, !dbg !1357
  store double %93, double* %num, align 8, !dbg !1357
  br label %94

; <label>:94                                      ; preds = %91, %88
  br label %95

; <label>:95                                      ; preds = %94, %81
  %96 = load %struct.lua_State** %1, align 4, !dbg !1358
  %97 = load double* %num, align 8, !dbg !1358
  call void @lua_pushnumber(%struct.lua_State* %96, double %97), !dbg !1358
  br label %158, !dbg !1359

; <label>:98                                      ; preds = %48
  %99 = load %struct.lua_State** %1, align 4, !dbg !1360
  %100 = load i8** %data, align 4, !dbg !1360
  %101 = load i32* %pos, align 4, !dbg !1360
  %102 = getelementptr inbounds i8* %100, i32 %101, !dbg !1360
  %103 = load i32* %size, align 4, !dbg !1360
  %104 = call i8* @lua_pushlstring(%struct.lua_State* %99, i8* %102, i32 %103), !dbg !1360
  br label %158, !dbg !1362

; <label>:105                                     ; preds = %48
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !1363), !dbg !1365
  %106 = load %struct.lua_State** %1, align 4, !dbg !1366
  %107 = load i8** %data, align 4, !dbg !1366
  %108 = load i32* %pos, align 4, !dbg !1366
  %109 = getelementptr inbounds i8* %107, i32 %108, !dbg !1366
  %110 = getelementptr inbounds %struct.Header* %h, i32 0, i32 1, !dbg !1366
  %111 = load i32* %110, align 4, !dbg !1366
  %112 = load i32* %size, align 4, !dbg !1366
  %113 = call i64 @unpackint(%struct.lua_State* %106, i8* %109, i32 %111, i32 %112, i32 0), !dbg !1366
  %114 = trunc i64 %113 to i32, !dbg !1366
  store i32 %114, i32* %len, align 4, !dbg !1366
  %115 = load i32* %pos, align 4, !dbg !1367
  %116 = load i32* %len, align 4, !dbg !1367
  %117 = add i32 %115, %116, !dbg !1367
  %118 = load i32* %size, align 4, !dbg !1367
  %119 = add i32 %117, %118, !dbg !1367
  %120 = load i32* %ld, align 4, !dbg !1367
  %121 = icmp ule i32 %119, %120, !dbg !1367
  br i1 %121, label %126, label %122, !dbg !1367

; <label>:122                                     ; preds = %105
  %123 = load %struct.lua_State** %1, align 4, !dbg !1368
  %124 = call i32 @luaL_argerror(%struct.lua_State* %123, i32 2, i8* getelementptr inbounds ([22 x i8]* @.str20, i32 0, i32 0)), !dbg !1368
  %125 = icmp ne i32 %124, 0, !dbg !1368
  br label %126, !dbg !1368

; <label>:126                                     ; preds = %122, %105
  %127 = phi i1 [ true, %105 ], [ %125, %122 ]
  %128 = zext i1 %127 to i32, !dbg !1370
  %129 = load %struct.lua_State** %1, align 4, !dbg !1373
  %130 = load i8** %data, align 4, !dbg !1373
  %131 = load i32* %pos, align 4, !dbg !1373
  %132 = getelementptr inbounds i8* %130, i32 %131, !dbg !1373
  %133 = load i32* %size, align 4, !dbg !1373
  %134 = getelementptr inbounds i8* %132, i32 %133, !dbg !1373
  %135 = load i32* %len, align 4, !dbg !1373
  %136 = call i8* @lua_pushlstring(%struct.lua_State* %129, i8* %134, i32 %135), !dbg !1373
  %137 = load i32* %len, align 4, !dbg !1374
  %138 = load i32* %pos, align 4, !dbg !1374
  %139 = add i32 %138, %137, !dbg !1374
  store i32 %139, i32* %pos, align 4, !dbg !1374
  br label %158, !dbg !1375

; <label>:140                                     ; preds = %48
  call void @llvm.dbg.declare(metadata !{i32* %len1}, metadata !1376), !dbg !1378
  %141 = load i8** %data, align 4, !dbg !1379
  %142 = load i32* %pos, align 4, !dbg !1379
  %143 = getelementptr inbounds i8* %141, i32 %142, !dbg !1379
  %144 = call i32 @strlen(i8* %143) #6, !dbg !1379
  store i32 %144, i32* %len1, align 4, !dbg !1379
  %145 = load %struct.lua_State** %1, align 4, !dbg !1380
  %146 = load i8** %data, align 4, !dbg !1380
  %147 = load i32* %pos, align 4, !dbg !1380
  %148 = getelementptr inbounds i8* %146, i32 %147, !dbg !1380
  %149 = load i32* %len1, align 4, !dbg !1380
  %150 = call i8* @lua_pushlstring(%struct.lua_State* %145, i8* %148, i32 %149), !dbg !1380
  %151 = load i32* %len1, align 4, !dbg !1381
  %152 = add i32 %151, 1, !dbg !1381
  %153 = load i32* %pos, align 4, !dbg !1381
  %154 = add i32 %153, %152, !dbg !1381
  store i32 %154, i32* %pos, align 4, !dbg !1381
  br label %158, !dbg !1382

; <label>:155                                     ; preds = %48, %48, %48
  %156 = load i32* %n, align 4, !dbg !1383
  %157 = add nsw i32 %156, -1, !dbg !1383
  store i32 %157, i32* %n, align 4, !dbg !1383
  br label %158, !dbg !1384

; <label>:158                                     ; preds = %48, %155, %140, %126, %98, %95, %56
  %159 = load i32* %size, align 4, !dbg !1385
  %160 = load i32* %pos, align 4, !dbg !1385
  %161 = add i32 %160, %159, !dbg !1385
  store i32 %161, i32* %pos, align 4, !dbg !1385
  br label %23, !dbg !1386

; <label>:162                                     ; preds = %23
  %163 = load %struct.lua_State** %1, align 4, !dbg !1387
  %164 = load i32* %pos, align 4, !dbg !1387
  %165 = add i32 %164, 1, !dbg !1387
  %166 = zext i32 %165 to i64, !dbg !1387
  call void @lua_pushinteger(%struct.lua_State* %163, i64 %166), !dbg !1387
  %167 = load i32* %n, align 4, !dbg !1388
  %168 = add nsw i32 %167, 1, !dbg !1388
  ret i32 %168, !dbg !1388
}

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i32*) #2

; Function Attrs: nounwind
define internal i64 @posrelat(i64 %pos, i32 %len) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %pos, i64* %2, align 8
  call void @llvm.dbg.declare(metadata !{i64* %2}, metadata !1389), !dbg !1390
  store i32 %len, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1391), !dbg !1392
  %4 = load i64* %2, align 8, !dbg !1393
  %5 = icmp sge i64 %4, 0, !dbg !1393
  br i1 %5, label %6, label %8, !dbg !1393

; <label>:6                                       ; preds = %0
  %7 = load i64* %2, align 8, !dbg !1395
  store i64 %7, i64* %1, !dbg !1395
  br label %21, !dbg !1395

; <label>:8                                       ; preds = %0
  %9 = load i64* %2, align 8, !dbg !1397
  %10 = trunc i64 %9 to i32, !dbg !1397
  %11 = sub i32 0, %10, !dbg !1397
  %12 = load i32* %3, align 4, !dbg !1397
  %13 = icmp ugt i32 %11, %12, !dbg !1397
  br i1 %13, label %14, label %15, !dbg !1397

; <label>:14                                      ; preds = %8
  store i64 0, i64* %1, !dbg !1399
  br label %21, !dbg !1399

; <label>:15                                      ; preds = %8
  %16 = load i32* %3, align 4, !dbg !1401
  %17 = zext i32 %16 to i64, !dbg !1401
  %18 = load i64* %2, align 8, !dbg !1401
  %19 = add nsw i64 %17, %18, !dbg !1401
  %20 = add nsw i64 %19, 1, !dbg !1401
  store i64 %20, i64* %1, !dbg !1401
  br label %21, !dbg !1401

; <label>:21                                      ; preds = %15, %14, %6
  %22 = load i64* %1, !dbg !1402
  ret i64 %22, !dbg !1402
}

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #2

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #2

; Function Attrs: nounwind
define internal void @initheader(%struct.lua_State* %L, %struct.Header* %h) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.Header*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1403), !dbg !1404
  store %struct.Header* %h, %struct.Header** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Header** %2}, metadata !1405), !dbg !1406
  %3 = load %struct.lua_State** %1, align 4, !dbg !1407
  %4 = load %struct.Header** %2, align 4, !dbg !1407
  %5 = getelementptr inbounds %struct.Header* %4, i32 0, i32 0, !dbg !1407
  store %struct.lua_State* %3, %struct.lua_State** %5, align 4, !dbg !1407
  %6 = load i8* bitcast (%union.anon* @nativeendian to i8*), align 1, !dbg !1408
  %7 = zext i8 %6 to i32, !dbg !1408
  %8 = load %struct.Header** %2, align 4, !dbg !1408
  %9 = getelementptr inbounds %struct.Header* %8, i32 0, i32 1, !dbg !1408
  store i32 %7, i32* %9, align 4, !dbg !1408
  %10 = load %struct.Header** %2, align 4, !dbg !1409
  %11 = getelementptr inbounds %struct.Header* %10, i32 0, i32 2, !dbg !1409
  store i32 1, i32* %11, align 4, !dbg !1409
  ret void, !dbg !1410
}

; Function Attrs: nounwind
define internal i32 @getdetails(%struct.Header* %h, i32 %totalsize, i8** %fmt, i32* %psize, i32* %ntoalign) #0 {
  %1 = alloca %struct.Header*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  %4 = alloca i32*, align 4
  %5 = alloca i32*, align 4
  %opt = alloca i32, align 4
  %align = alloca i32, align 4
  store %struct.Header* %h, %struct.Header** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Header** %1}, metadata !1411), !dbg !1412
  store i32 %totalsize, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1413), !dbg !1414
  store i8** %fmt, i8*** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !1415), !dbg !1416
  store i32* %psize, i32** %4, align 4
  call void @llvm.dbg.declare(metadata !{i32** %4}, metadata !1417), !dbg !1418
  store i32* %ntoalign, i32** %5, align 4
  call void @llvm.dbg.declare(metadata !{i32** %5}, metadata !1419), !dbg !1420
  call void @llvm.dbg.declare(metadata !{i32* %opt}, metadata !1421), !dbg !1422
  %6 = load %struct.Header** %1, align 4, !dbg !1423
  %7 = load i8*** %3, align 4, !dbg !1423
  %8 = load i32** %4, align 4, !dbg !1423
  %9 = call i32 @getoption(%struct.Header* %6, i8** %7, i32* %8), !dbg !1423
  store i32 %9, i32* %opt, align 4, !dbg !1423
  call void @llvm.dbg.declare(metadata !{i32* %align}, metadata !1424), !dbg !1425
  %10 = load i32** %4, align 4, !dbg !1426
  %11 = load i32* %10, align 4, !dbg !1426
  store i32 %11, i32* %align, align 4, !dbg !1426
  %12 = load i32* %opt, align 4, !dbg !1427
  %13 = icmp eq i32 %12, 7, !dbg !1427
  br i1 %13, label %14, label %34, !dbg !1427

; <label>:14                                      ; preds = %0
  %15 = load i8*** %3, align 4, !dbg !1429
  %16 = load i8** %15, align 4, !dbg !1429
  %17 = load i8* %16, align 1, !dbg !1429
  %18 = zext i8 %17 to i32, !dbg !1429
  %19 = icmp eq i32 %18, 0, !dbg !1429
  br i1 %19, label %28, label %20, !dbg !1429

; <label>:20                                      ; preds = %14
  %21 = load %struct.Header** %1, align 4, !dbg !1432
  %22 = load i8*** %3, align 4, !dbg !1432
  %23 = call i32 @getoption(%struct.Header* %21, i8** %22, i32* %align), !dbg !1432
  %24 = icmp eq i32 %23, 3, !dbg !1432
  br i1 %24, label %28, label %25, !dbg !1432

; <label>:25                                      ; preds = %20
  %26 = load i32* %align, align 4, !dbg !1434
  %27 = icmp eq i32 %26, 0, !dbg !1434
  br i1 %27, label %28, label %33, !dbg !1434

; <label>:28                                      ; preds = %25, %20, %14
  %29 = load %struct.Header** %1, align 4, !dbg !1436
  %30 = getelementptr inbounds %struct.Header* %29, i32 0, i32 0, !dbg !1436
  %31 = load %struct.lua_State** %30, align 4, !dbg !1436
  %32 = call i32 @luaL_argerror(%struct.lua_State* %31, i32 1, i8* getelementptr inbounds ([35 x i8]* @.str23, i32 0, i32 0)), !dbg !1436
  br label %33, !dbg !1436

; <label>:33                                      ; preds = %28, %25
  br label %34, !dbg !1437

; <label>:34                                      ; preds = %33, %0
  %35 = load i32* %align, align 4, !dbg !1438
  %36 = icmp sle i32 %35, 1, !dbg !1438
  br i1 %36, label %40, label %37, !dbg !1438

; <label>:37                                      ; preds = %34
  %38 = load i32* %opt, align 4, !dbg !1440
  %39 = icmp eq i32 %38, 3, !dbg !1440
  br i1 %39, label %40, label %42, !dbg !1440

; <label>:40                                      ; preds = %37, %34
  %41 = load i32** %5, align 4, !dbg !1442
  store i32 0, i32* %41, align 4, !dbg !1442
  br label %74, !dbg !1442

; <label>:42                                      ; preds = %37
  %43 = load i32* %align, align 4, !dbg !1443
  %44 = load %struct.Header** %1, align 4, !dbg !1443
  %45 = getelementptr inbounds %struct.Header* %44, i32 0, i32 2, !dbg !1443
  %46 = load i32* %45, align 4, !dbg !1443
  %47 = icmp sgt i32 %43, %46, !dbg !1443
  br i1 %47, label %48, label %52, !dbg !1443

; <label>:48                                      ; preds = %42
  %49 = load %struct.Header** %1, align 4, !dbg !1446
  %50 = getelementptr inbounds %struct.Header* %49, i32 0, i32 2, !dbg !1446
  %51 = load i32* %50, align 4, !dbg !1446
  store i32 %51, i32* %align, align 4, !dbg !1446
  br label %52, !dbg !1446

; <label>:52                                      ; preds = %48, %42
  %53 = load i32* %align, align 4, !dbg !1447
  %54 = load i32* %align, align 4, !dbg !1447
  %55 = sub nsw i32 %54, 1, !dbg !1447
  %56 = and i32 %53, %55, !dbg !1447
  %57 = icmp ne i32 %56, 0, !dbg !1447
  br i1 %57, label %58, label %63, !dbg !1447

; <label>:58                                      ; preds = %52
  %59 = load %struct.Header** %1, align 4, !dbg !1449
  %60 = getelementptr inbounds %struct.Header* %59, i32 0, i32 0, !dbg !1449
  %61 = load %struct.lua_State** %60, align 4, !dbg !1449
  %62 = call i32 @luaL_argerror(%struct.lua_State* %61, i32 1, i8* getelementptr inbounds ([41 x i8]* @.str24, i32 0, i32 0)), !dbg !1449
  br label %63, !dbg !1449

; <label>:63                                      ; preds = %58, %52
  %64 = load i32* %align, align 4, !dbg !1450
  %65 = load i32* %2, align 4, !dbg !1450
  %66 = load i32* %align, align 4, !dbg !1450
  %67 = sub nsw i32 %66, 1, !dbg !1450
  %68 = and i32 %65, %67, !dbg !1450
  %69 = sub nsw i32 %64, %68, !dbg !1450
  %70 = load i32* %align, align 4, !dbg !1450
  %71 = sub nsw i32 %70, 1, !dbg !1450
  %72 = and i32 %69, %71, !dbg !1450
  %73 = load i32** %5, align 4, !dbg !1450
  store i32 %72, i32* %73, align 4, !dbg !1450
  br label %74

; <label>:74                                      ; preds = %63, %40
  %75 = load i32* %opt, align 4, !dbg !1451
  ret i32 %75, !dbg !1451
}

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) #2

; Function Attrs: nounwind
define internal i64 @unpackint(%struct.lua_State* %L, i8* %str, i32 %islittle, i32 %size, i32 %issigned) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %res = alloca i64, align 8
  %i = alloca i32, align 4
  %limit = alloca i32, align 4
  %mask = alloca i64, align 8
  %mask1 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1452), !dbg !1453
  store i8* %str, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1454), !dbg !1455
  store i32 %islittle, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1456), !dbg !1457
  store i32 %size, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1458), !dbg !1459
  store i32 %issigned, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !1460), !dbg !1461
  call void @llvm.dbg.declare(metadata !{i64* %res}, metadata !1462), !dbg !1463
  store i64 0, i64* %res, align 8, !dbg !1464
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1465), !dbg !1466
  call void @llvm.dbg.declare(metadata !{i32* %limit}, metadata !1467), !dbg !1468
  %6 = load i32* %4, align 4, !dbg !1469
  %7 = icmp sle i32 %6, 8, !dbg !1469
  br i1 %7, label %8, label %10, !dbg !1469

; <label>:8                                       ; preds = %0
  %9 = load i32* %4, align 4, !dbg !1470
  br label %11, !dbg !1470

; <label>:10                                      ; preds = %0
  br label %11, !dbg !1472

; <label>:11                                      ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ 8, %10 ], !dbg !1469
  store i32 %12, i32* %limit, align 4, !dbg !1474
  %13 = load i32* %limit, align 4, !dbg !1477
  %14 = sub nsw i32 %13, 1, !dbg !1477
  store i32 %14, i32* %i, align 4, !dbg !1477
  br label %15, !dbg !1477

; <label>:15                                      ; preds = %38, %11
  %16 = load i32* %i, align 4, !dbg !1479
  %17 = icmp sge i32 %16, 0, !dbg !1479
  br i1 %17, label %18, label %41, !dbg !1479

; <label>:18                                      ; preds = %15
  %19 = load i64* %res, align 8, !dbg !1482
  %20 = shl i64 %19, 8, !dbg !1482
  store i64 %20, i64* %res, align 8, !dbg !1482
  %21 = load i32* %3, align 4, !dbg !1484
  %22 = icmp ne i32 %21, 0, !dbg !1484
  br i1 %22, label %23, label %25, !dbg !1484

; <label>:23                                      ; preds = %18
  %24 = load i32* %i, align 4, !dbg !1485
  br label %30, !dbg !1485

; <label>:25                                      ; preds = %18
  %26 = load i32* %4, align 4, !dbg !1487
  %27 = sub nsw i32 %26, 1, !dbg !1487
  %28 = load i32* %i, align 4, !dbg !1487
  %29 = sub nsw i32 %27, %28, !dbg !1487
  br label %30, !dbg !1487

; <label>:30                                      ; preds = %25, %23
  %31 = phi i32 [ %24, %23 ], [ %29, %25 ], !dbg !1484
  %32 = load i8** %2, align 4, !dbg !1489
  %33 = getelementptr inbounds i8* %32, i32 %31, !dbg !1489
  %34 = load i8* %33, align 1, !dbg !1489
  %35 = zext i8 %34 to i64, !dbg !1489
  %36 = load i64* %res, align 8, !dbg !1489
  %37 = or i64 %36, %35, !dbg !1489
  store i64 %37, i64* %res, align 8, !dbg !1489
  br label %38, !dbg !1492

; <label>:38                                      ; preds = %30
  %39 = load i32* %i, align 4, !dbg !1493
  %40 = add nsw i32 %39, -1, !dbg !1493
  store i32 %40, i32* %i, align 4, !dbg !1493
  br label %15, !dbg !1493

; <label>:41                                      ; preds = %15
  %42 = load i32* %4, align 4, !dbg !1494
  %43 = icmp slt i32 %42, 8, !dbg !1494
  br i1 %43, label %44, label %59, !dbg !1494

; <label>:44                                      ; preds = %41
  %45 = load i32* %5, align 4, !dbg !1496
  %46 = icmp ne i32 %45, 0, !dbg !1496
  br i1 %46, label %47, label %58, !dbg !1496

; <label>:47                                      ; preds = %44
  call void @llvm.dbg.declare(metadata !{i64* %mask}, metadata !1499), !dbg !1501
  %48 = load i32* %4, align 4, !dbg !1502
  %49 = mul nsw i32 %48, 8, !dbg !1502
  %50 = sub nsw i32 %49, 1, !dbg !1502
  %51 = zext i32 %50 to i64, !dbg !1502
  %52 = shl i64 1, %51, !dbg !1502
  store i64 %52, i64* %mask, align 8, !dbg !1502
  %53 = load i64* %res, align 8, !dbg !1503
  %54 = load i64* %mask, align 8, !dbg !1503
  %55 = xor i64 %53, %54, !dbg !1503
  %56 = load i64* %mask, align 8, !dbg !1503
  %57 = sub i64 %55, %56, !dbg !1503
  store i64 %57, i64* %res, align 8, !dbg !1503
  br label %58, !dbg !1504

; <label>:58                                      ; preds = %47, %44
  br label %104, !dbg !1505

; <label>:59                                      ; preds = %41
  %60 = load i32* %4, align 4, !dbg !1506
  %61 = icmp sgt i32 %60, 8, !dbg !1506
  br i1 %61, label %62, label %103, !dbg !1506

; <label>:62                                      ; preds = %59
  call void @llvm.dbg.declare(metadata !{i32* %mask1}, metadata !1508), !dbg !1510
  %63 = load i32* %5, align 4, !dbg !1511
  %64 = icmp ne i32 %63, 0, !dbg !1511
  br i1 %64, label %65, label %68, !dbg !1511

; <label>:65                                      ; preds = %62
  %66 = load i64* %res, align 8, !dbg !1512
  %67 = icmp sge i64 %66, 0, !dbg !1512
  br label %68, !dbg !1512

; <label>:68                                      ; preds = %65, %62
  %69 = phi i1 [ true, %62 ], [ %67, %65 ]
  %70 = select i1 %69, i32 0, i32 255, !dbg !1514
  store i32 %70, i32* %mask1, align 4, !dbg !1514
  %71 = load i32* %limit, align 4, !dbg !1517
  store i32 %71, i32* %i, align 4, !dbg !1517
  br label %72, !dbg !1517

; <label>:72                                      ; preds = %99, %68
  %73 = load i32* %i, align 4, !dbg !1519
  %74 = load i32* %4, align 4, !dbg !1519
  %75 = icmp slt i32 %73, %74, !dbg !1519
  br i1 %75, label %76, label %102, !dbg !1519

; <label>:76                                      ; preds = %72
  %77 = load i32* %3, align 4, !dbg !1522
  %78 = icmp ne i32 %77, 0, !dbg !1522
  br i1 %78, label %79, label %81, !dbg !1522

; <label>:79                                      ; preds = %76
  %80 = load i32* %i, align 4, !dbg !1525
  br label %86, !dbg !1525

; <label>:81                                      ; preds = %76
  %82 = load i32* %4, align 4, !dbg !1527
  %83 = sub nsw i32 %82, 1, !dbg !1527
  %84 = load i32* %i, align 4, !dbg !1527
  %85 = sub nsw i32 %83, %84, !dbg !1527
  br label %86, !dbg !1527

; <label>:86                                      ; preds = %81, %79
  %87 = phi i32 [ %80, %79 ], [ %85, %81 ], !dbg !1522
  %88 = load i8** %2, align 4, !dbg !1529
  %89 = getelementptr inbounds i8* %88, i32 %87, !dbg !1529
  %90 = load i8* %89, align 1, !dbg !1529
  %91 = zext i8 %90 to i32, !dbg !1529
  %92 = load i32* %mask1, align 4, !dbg !1529
  %93 = icmp ne i32 %91, %92, !dbg !1529
  br i1 %93, label %94, label %98, !dbg !1529

; <label>:94                                      ; preds = %86
  %95 = load %struct.lua_State** %1, align 4, !dbg !1532
  %96 = load i32* %4, align 4, !dbg !1532
  %97 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %95, i8* getelementptr inbounds ([46 x i8]* @.str22, i32 0, i32 0), i32 %96), !dbg !1532
  br label %98, !dbg !1532

; <label>:98                                      ; preds = %94, %86
  br label %99, !dbg !1533

; <label>:99                                      ; preds = %98
  %100 = load i32* %i, align 4, !dbg !1534
  %101 = add nsw i32 %100, 1, !dbg !1534
  store i32 %101, i32* %i, align 4, !dbg !1534
  br label %72, !dbg !1534

; <label>:102                                     ; preds = %72
  br label %103, !dbg !1535

; <label>:103                                     ; preds = %102, %59
  br label %104

; <label>:104                                     ; preds = %103, %58
  %105 = load i64* %res, align 8, !dbg !1536
  ret i64 %105, !dbg !1536
}

declare void @lua_pushinteger(%struct.lua_State*, i64) #2

; Function Attrs: nounwind
define internal void @copywithendian(i8* %dest, i8* %src, i32 %size, i32 %islittle) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %dest, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !1537), !dbg !1538
  store i8* %src, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1539), !dbg !1540
  store i32 %size, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1541), !dbg !1542
  store i32 %islittle, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1543), !dbg !1544
  %5 = load i32* %4, align 4, !dbg !1545
  %6 = load i8* bitcast (%union.anon* @nativeendian to i8*), align 1, !dbg !1545
  %7 = zext i8 %6 to i32, !dbg !1545
  %8 = icmp eq i32 %5, %7, !dbg !1545
  br i1 %8, label %9, label %21, !dbg !1545

; <label>:9                                       ; preds = %0
  br label %10, !dbg !1547

; <label>:10                                      ; preds = %14, %9
  %11 = load i32* %3, align 4, !dbg !1549
  %12 = add nsw i32 %11, -1, !dbg !1549
  store i32 %12, i32* %3, align 4, !dbg !1549
  %13 = icmp ne i32 %11, 0, !dbg !1549
  br i1 %13, label %14, label %20, !dbg !1549

; <label>:14                                      ; preds = %10
  %15 = load i8** %2, align 4, !dbg !1551
  %16 = getelementptr inbounds i8* %15, i32 1, !dbg !1551
  store i8* %16, i8** %2, align 4, !dbg !1551
  %17 = load volatile i8* %15, align 1, !dbg !1551
  %18 = load i8** %1, align 4, !dbg !1551
  %19 = getelementptr inbounds i8* %18, i32 1, !dbg !1551
  store i8* %19, i8** %1, align 4, !dbg !1551
  store volatile i8 %17, i8* %18, align 1, !dbg !1551
  br label %10, !dbg !1551

; <label>:20                                      ; preds = %10
  br label %37, !dbg !1552

; <label>:21                                      ; preds = %0
  %22 = load i32* %3, align 4, !dbg !1553
  %23 = sub nsw i32 %22, 1, !dbg !1553
  %24 = load i8** %1, align 4, !dbg !1553
  %25 = getelementptr inbounds i8* %24, i32 %23, !dbg !1553
  store i8* %25, i8** %1, align 4, !dbg !1553
  br label %26, !dbg !1555

; <label>:26                                      ; preds = %30, %21
  %27 = load i32* %3, align 4, !dbg !1556
  %28 = add nsw i32 %27, -1, !dbg !1556
  store i32 %28, i32* %3, align 4, !dbg !1556
  %29 = icmp ne i32 %27, 0, !dbg !1556
  br i1 %29, label %30, label %36, !dbg !1556

; <label>:30                                      ; preds = %26
  %31 = load i8** %2, align 4, !dbg !1558
  %32 = getelementptr inbounds i8* %31, i32 1, !dbg !1558
  store i8* %32, i8** %2, align 4, !dbg !1558
  %33 = load volatile i8* %31, align 1, !dbg !1558
  %34 = load i8** %1, align 4, !dbg !1558
  %35 = getelementptr inbounds i8* %34, i32 -1, !dbg !1558
  store i8* %35, i8** %1, align 4, !dbg !1558
  store volatile i8 %33, i8* %34, align 1, !dbg !1558
  br label %26, !dbg !1558

; <label>:36                                      ; preds = %26
  br label %37

; <label>:37                                      ; preds = %36, %20
  ret void, !dbg !1559
}

declare void @lua_pushnumber(%struct.lua_State*, double) #2

declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #3

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #2

; Function Attrs: nounwind
define internal i32 @getoption(%struct.Header* %h, i8** %fmt, i32* %size) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Header*, align 4
  %3 = alloca i8**, align 4
  %4 = alloca i32*, align 4
  %opt = alloca i32, align 4
  store %struct.Header* %h, %struct.Header** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Header** %2}, metadata !1560), !dbg !1561
  store i8** %fmt, i8*** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !1562), !dbg !1563
  store i32* %size, i32** %4, align 4
  call void @llvm.dbg.declare(metadata !{i32** %4}, metadata !1564), !dbg !1565
  call void @llvm.dbg.declare(metadata !{i32* %opt}, metadata !1566), !dbg !1567
  %5 = load i8*** %3, align 4, !dbg !1568
  %6 = load i8** %5, align 4, !dbg !1568
  %7 = getelementptr inbounds i8* %6, i32 1, !dbg !1568
  store i8* %7, i8** %5, align 4, !dbg !1568
  %8 = load i8* %6, align 1, !dbg !1568
  %9 = zext i8 %8 to i32, !dbg !1568
  store i32 %9, i32* %opt, align 4, !dbg !1568
  %10 = load i32** %4, align 4, !dbg !1569
  store i32 0, i32* %10, align 4, !dbg !1569
  %11 = load i32* %opt, align 4, !dbg !1570
  switch i32 %11, label %86 [
    i32 98, label %12
    i32 66, label %14
    i32 104, label %16
    i32 72, label %18
    i32 108, label %20
    i32 76, label %22
    i32 106, label %24
    i32 74, label %26
    i32 84, label %28
    i32 102, label %30
    i32 100, label %32
    i32 110, label %34
    i32 105, label %36
    i32 73, label %41
    i32 115, label %46
    i32 99, label %51
    i32 122, label %64
    i32 120, label %65
    i32 88, label %67
    i32 32, label %68
    i32 60, label %69
    i32 62, label %72
    i32 61, label %75
    i32 33, label %80
  ], !dbg !1570

; <label>:12                                      ; preds = %0
  %13 = load i32** %4, align 4, !dbg !1571
  store i32 1, i32* %13, align 4, !dbg !1571
  store i32 0, i32* %1, !dbg !1573
  br label %93, !dbg !1573

; <label>:14                                      ; preds = %0
  %15 = load i32** %4, align 4, !dbg !1574
  store i32 1, i32* %15, align 4, !dbg !1574
  store i32 1, i32* %1, !dbg !1575
  br label %93, !dbg !1575

; <label>:16                                      ; preds = %0
  %17 = load i32** %4, align 4, !dbg !1576
  store i32 2, i32* %17, align 4, !dbg !1576
  store i32 0, i32* %1, !dbg !1577
  br label %93, !dbg !1577

; <label>:18                                      ; preds = %0
  %19 = load i32** %4, align 4, !dbg !1578
  store i32 2, i32* %19, align 4, !dbg !1578
  store i32 1, i32* %1, !dbg !1579
  br label %93, !dbg !1579

; <label>:20                                      ; preds = %0
  %21 = load i32** %4, align 4, !dbg !1580
  store i32 4, i32* %21, align 4, !dbg !1580
  store i32 0, i32* %1, !dbg !1581
  br label %93, !dbg !1581

; <label>:22                                      ; preds = %0
  %23 = load i32** %4, align 4, !dbg !1582
  store i32 4, i32* %23, align 4, !dbg !1582
  store i32 1, i32* %1, !dbg !1583
  br label %93, !dbg !1583

; <label>:24                                      ; preds = %0
  %25 = load i32** %4, align 4, !dbg !1584
  store i32 8, i32* %25, align 4, !dbg !1584
  store i32 0, i32* %1, !dbg !1585
  br label %93, !dbg !1585

; <label>:26                                      ; preds = %0
  %27 = load i32** %4, align 4, !dbg !1586
  store i32 8, i32* %27, align 4, !dbg !1586
  store i32 1, i32* %1, !dbg !1587
  br label %93, !dbg !1587

; <label>:28                                      ; preds = %0
  %29 = load i32** %4, align 4, !dbg !1588
  store i32 4, i32* %29, align 4, !dbg !1588
  store i32 1, i32* %1, !dbg !1589
  br label %93, !dbg !1589

; <label>:30                                      ; preds = %0
  %31 = load i32** %4, align 4, !dbg !1590
  store i32 4, i32* %31, align 4, !dbg !1590
  store i32 2, i32* %1, !dbg !1591
  br label %93, !dbg !1591

; <label>:32                                      ; preds = %0
  %33 = load i32** %4, align 4, !dbg !1592
  store i32 8, i32* %33, align 4, !dbg !1592
  store i32 2, i32* %1, !dbg !1593
  br label %93, !dbg !1593

; <label>:34                                      ; preds = %0
  %35 = load i32** %4, align 4, !dbg !1594
  store i32 8, i32* %35, align 4, !dbg !1594
  store i32 2, i32* %1, !dbg !1595
  br label %93, !dbg !1595

; <label>:36                                      ; preds = %0
  %37 = load %struct.Header** %2, align 4, !dbg !1596
  %38 = load i8*** %3, align 4, !dbg !1596
  %39 = call i32 @getnumlimit(%struct.Header* %37, i8** %38, i32 4), !dbg !1596
  %40 = load i32** %4, align 4, !dbg !1596
  store i32 %39, i32* %40, align 4, !dbg !1596
  store i32 0, i32* %1, !dbg !1597
  br label %93, !dbg !1597

; <label>:41                                      ; preds = %0
  %42 = load %struct.Header** %2, align 4, !dbg !1598
  %43 = load i8*** %3, align 4, !dbg !1598
  %44 = call i32 @getnumlimit(%struct.Header* %42, i8** %43, i32 4), !dbg !1598
  %45 = load i32** %4, align 4, !dbg !1598
  store i32 %44, i32* %45, align 4, !dbg !1598
  store i32 1, i32* %1, !dbg !1599
  br label %93, !dbg !1599

; <label>:46                                      ; preds = %0
  %47 = load %struct.Header** %2, align 4, !dbg !1600
  %48 = load i8*** %3, align 4, !dbg !1600
  %49 = call i32 @getnumlimit(%struct.Header* %47, i8** %48, i32 4), !dbg !1600
  %50 = load i32** %4, align 4, !dbg !1600
  store i32 %49, i32* %50, align 4, !dbg !1600
  store i32 4, i32* %1, !dbg !1601
  br label %93, !dbg !1601

; <label>:51                                      ; preds = %0
  %52 = load i8*** %3, align 4, !dbg !1602
  %53 = call i32 @getnum(i8** %52, i32 -1), !dbg !1602
  %54 = load i32** %4, align 4, !dbg !1602
  store i32 %53, i32* %54, align 4, !dbg !1602
  %55 = load i32** %4, align 4, !dbg !1603
  %56 = load i32* %55, align 4, !dbg !1603
  %57 = icmp eq i32 %56, -1, !dbg !1603
  br i1 %57, label %58, label %63, !dbg !1603

; <label>:58                                      ; preds = %51
  %59 = load %struct.Header** %2, align 4, !dbg !1605
  %60 = getelementptr inbounds %struct.Header* %59, i32 0, i32 0, !dbg !1605
  %61 = load %struct.lua_State** %60, align 4, !dbg !1605
  %62 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %61, i8* getelementptr inbounds ([35 x i8]* @.str25, i32 0, i32 0)), !dbg !1605
  br label %63, !dbg !1605

; <label>:63                                      ; preds = %58, %51
  store i32 3, i32* %1, !dbg !1606
  br label %93, !dbg !1606

; <label>:64                                      ; preds = %0
  store i32 5, i32* %1, !dbg !1607
  br label %93, !dbg !1607

; <label>:65                                      ; preds = %0
  %66 = load i32** %4, align 4, !dbg !1608
  store i32 1, i32* %66, align 4, !dbg !1608
  store i32 6, i32* %1, !dbg !1609
  br label %93, !dbg !1609

; <label>:67                                      ; preds = %0
  store i32 7, i32* %1, !dbg !1610
  br label %93, !dbg !1610

; <label>:68                                      ; preds = %0
  br label %92, !dbg !1611

; <label>:69                                      ; preds = %0
  %70 = load %struct.Header** %2, align 4, !dbg !1612
  %71 = getelementptr inbounds %struct.Header* %70, i32 0, i32 1, !dbg !1612
  store i32 1, i32* %71, align 4, !dbg !1612
  br label %92, !dbg !1613

; <label>:72                                      ; preds = %0
  %73 = load %struct.Header** %2, align 4, !dbg !1614
  %74 = getelementptr inbounds %struct.Header* %73, i32 0, i32 1, !dbg !1614
  store i32 0, i32* %74, align 4, !dbg !1614
  br label %92, !dbg !1615

; <label>:75                                      ; preds = %0
  %76 = load i8* bitcast (%union.anon* @nativeendian to i8*), align 1, !dbg !1616
  %77 = zext i8 %76 to i32, !dbg !1616
  %78 = load %struct.Header** %2, align 4, !dbg !1616
  %79 = getelementptr inbounds %struct.Header* %78, i32 0, i32 1, !dbg !1616
  store i32 %77, i32* %79, align 4, !dbg !1616
  br label %92, !dbg !1617

; <label>:80                                      ; preds = %0
  %81 = load %struct.Header** %2, align 4, !dbg !1618
  %82 = load i8*** %3, align 4, !dbg !1618
  %83 = call i32 @getnumlimit(%struct.Header* %81, i8** %82, i32 8), !dbg !1618
  %84 = load %struct.Header** %2, align 4, !dbg !1618
  %85 = getelementptr inbounds %struct.Header* %84, i32 0, i32 2, !dbg !1618
  store i32 %83, i32* %85, align 4, !dbg !1618
  br label %92, !dbg !1619

; <label>:86                                      ; preds = %0
  %87 = load %struct.Header** %2, align 4, !dbg !1620
  %88 = getelementptr inbounds %struct.Header* %87, i32 0, i32 0, !dbg !1620
  %89 = load %struct.lua_State** %88, align 4, !dbg !1620
  %90 = load i32* %opt, align 4, !dbg !1620
  %91 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %89, i8* getelementptr inbounds ([27 x i8]* @.str26, i32 0, i32 0), i32 %90), !dbg !1620
  br label %92, !dbg !1621

; <label>:92                                      ; preds = %86, %80, %75, %72, %69, %68
  store i32 8, i32* %1, !dbg !1622
  br label %93, !dbg !1622

; <label>:93                                      ; preds = %92, %67, %65, %64, %63, %46, %41, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12
  %94 = load i32* %1, !dbg !1623
  ret i32 %94, !dbg !1623
}

; Function Attrs: nounwind
define internal i32 @getnumlimit(%struct.Header* %h, i8** %fmt, i32 %df) #0 {
  %1 = alloca %struct.Header*, align 4
  %2 = alloca i8**, align 4
  %3 = alloca i32, align 4
  %sz = alloca i32, align 4
  store %struct.Header* %h, %struct.Header** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Header** %1}, metadata !1624), !dbg !1625
  store i8** %fmt, i8*** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %2}, metadata !1626), !dbg !1627
  store i32 %df, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1628), !dbg !1629
  call void @llvm.dbg.declare(metadata !{i32* %sz}, metadata !1630), !dbg !1631
  %4 = load i8*** %2, align 4, !dbg !1632
  %5 = load i32* %3, align 4, !dbg !1632
  %6 = call i32 @getnum(i8** %4, i32 %5), !dbg !1632
  store i32 %6, i32* %sz, align 4, !dbg !1632
  %7 = load i32* %sz, align 4, !dbg !1633
  %8 = icmp sgt i32 %7, 16, !dbg !1633
  br i1 %8, label %12, label %9, !dbg !1633

; <label>:9                                       ; preds = %0
  %10 = load i32* %sz, align 4, !dbg !1635
  %11 = icmp sle i32 %10, 0, !dbg !1635
  br i1 %11, label %12, label %18, !dbg !1635

; <label>:12                                      ; preds = %9, %0
  %13 = load %struct.Header** %1, align 4, !dbg !1637
  %14 = getelementptr inbounds %struct.Header* %13, i32 0, i32 0, !dbg !1637
  %15 = load %struct.lua_State** %14, align 4, !dbg !1637
  %16 = load i32* %sz, align 4, !dbg !1637
  %17 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %15, i8* getelementptr inbounds ([40 x i8]* @.str27, i32 0, i32 0), i32 %16, i32 16), !dbg !1637
  br label %18, !dbg !1637

; <label>:18                                      ; preds = %12, %9
  %19 = load i32* %sz, align 4, !dbg !1638
  ret i32 %19, !dbg !1638
}

; Function Attrs: nounwind
define internal i32 @getnum(i8** %fmt, i32 %df) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 4
  %3 = alloca i32, align 4
  %a = alloca i32, align 4
  store i8** %fmt, i8*** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %2}, metadata !1639), !dbg !1640
  store i32 %df, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1641), !dbg !1642
  %4 = load i8*** %2, align 4, !dbg !1643
  %5 = load i8** %4, align 4, !dbg !1643
  %6 = load i8* %5, align 1, !dbg !1643
  %7 = zext i8 %6 to i32, !dbg !1643
  %8 = call i32 @digit(i32 %7), !dbg !1643
  %9 = icmp ne i32 %8, 0, !dbg !1643
  br i1 %9, label %12, label %10, !dbg !1643

; <label>:10                                      ; preds = %0
  %11 = load i32* %3, align 4, !dbg !1645
  store i32 %11, i32* %1, !dbg !1645
  br label %37, !dbg !1645

; <label>:12                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !1646), !dbg !1648
  store i32 0, i32* %a, align 4, !dbg !1649
  br label %13, !dbg !1650

; <label>:13                                      ; preds = %33, %12
  %14 = load i32* %a, align 4, !dbg !1651
  %15 = mul nsw i32 %14, 10, !dbg !1651
  %16 = load i8*** %2, align 4, !dbg !1651
  %17 = load i8** %16, align 4, !dbg !1651
  %18 = getelementptr inbounds i8* %17, i32 1, !dbg !1651
  store i8* %18, i8** %16, align 4, !dbg !1651
  %19 = load i8* %17, align 1, !dbg !1651
  %20 = zext i8 %19 to i32, !dbg !1651
  %21 = sub nsw i32 %20, 48, !dbg !1651
  %22 = add nsw i32 %15, %21, !dbg !1651
  store i32 %22, i32* %a, align 4, !dbg !1651
  br label %23, !dbg !1653

; <label>:23                                      ; preds = %13
  %24 = load i8*** %2, align 4, !dbg !1654
  %25 = load i8** %24, align 4, !dbg !1654
  %26 = load i8* %25, align 1, !dbg !1654
  %27 = zext i8 %26 to i32, !dbg !1654
  %28 = call i32 @digit(i32 %27), !dbg !1654
  %29 = icmp ne i32 %28, 0, !dbg !1654
  br i1 %29, label %30, label %33, !dbg !1654

; <label>:30                                      ; preds = %23
  %31 = load i32* %a, align 4, !dbg !1656
  %32 = icmp sle i32 %31, 214748363, !dbg !1656
  br label %33

; <label>:33                                      ; preds = %30, %23
  %34 = phi i1 [ false, %23 ], [ %32, %30 ]
  br i1 %34, label %13, label %35, !dbg !1658

; <label>:35                                      ; preds = %33
  %36 = load i32* %a, align 4, !dbg !1660
  store i32 %36, i32* %1, !dbg !1660
  br label %37, !dbg !1660

; <label>:37                                      ; preds = %35, %10
  %38 = load i32* %1, !dbg !1661
  ret i32 %38, !dbg !1661
}

; Function Attrs: nounwind
define internal i32 @digit(i32 %c) #0 {
  %1 = alloca i32, align 4
  store i32 %c, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !1662), !dbg !1663
  %2 = load i32* %1, align 4, !dbg !1664
  %3 = icmp sle i32 48, %2, !dbg !1664
  br i1 %3, label %4, label %7, !dbg !1664

; <label>:4                                       ; preds = %0
  %5 = load i32* %1, align 4, !dbg !1665
  %6 = icmp sle i32 %5, 57, !dbg !1665
  br label %7

; <label>:7                                       ; preds = %4, %0
  %8 = phi i1 [ false, %0 ], [ %6, %4 ]
  %9 = zext i1 %8 to i32, !dbg !1667
  ret i32 %9, !dbg !1667
}

declare void @lua_pushnil(%struct.lua_State*) #2

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) #2

declare i8* @luaL_prepbuffsize(%struct.luaL_Buffer*, i32) #2

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal void @packint(%struct.luaL_Buffer* %b, i64 %n, i32 %islittle, i32 %size, i32 %neg) #0 {
  %1 = alloca %struct.luaL_Buffer*, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %buff = alloca i8*, align 4
  %i = alloca i32, align 4
  store %struct.luaL_Buffer* %b, %struct.luaL_Buffer** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer** %1}, metadata !1669), !dbg !1670
  store i64 %n, i64* %2, align 8
  call void @llvm.dbg.declare(metadata !{i64* %2}, metadata !1671), !dbg !1672
  store i32 %islittle, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1673), !dbg !1674
  store i32 %size, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1675), !dbg !1676
  store i32 %neg, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !1677), !dbg !1678
  call void @llvm.dbg.declare(metadata !{i8** %buff}, metadata !1679), !dbg !1680
  %6 = load %struct.luaL_Buffer** %1, align 4, !dbg !1681
  %7 = load i32* %4, align 4, !dbg !1681
  %8 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %6, i32 %7), !dbg !1681
  store i8* %8, i8** %buff, align 4, !dbg !1681
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1682), !dbg !1683
  %9 = load i64* %2, align 8, !dbg !1684
  %10 = and i64 %9, 255, !dbg !1684
  %11 = trunc i64 %10 to i8, !dbg !1684
  %12 = load i32* %3, align 4, !dbg !1684
  %13 = icmp ne i32 %12, 0, !dbg !1684
  br i1 %13, label %14, label %15, !dbg !1684

; <label>:14                                      ; preds = %0
  br label %18, !dbg !1685

; <label>:15                                      ; preds = %0
  %16 = load i32* %4, align 4, !dbg !1687
  %17 = sub nsw i32 %16, 1, !dbg !1687
  br label %18, !dbg !1687

; <label>:18                                      ; preds = %15, %14
  %19 = phi i32 [ 0, %14 ], [ %17, %15 ], !dbg !1684
  %20 = load i8** %buff, align 4, !dbg !1689
  %21 = getelementptr inbounds i8* %20, i32 %19, !dbg !1689
  store i8 %11, i8* %21, align 1, !dbg !1689
  store i32 1, i32* %i, align 4, !dbg !1692
  br label %22, !dbg !1692

; <label>:22                                      ; preds = %45, %18
  %23 = load i32* %i, align 4, !dbg !1694
  %24 = load i32* %4, align 4, !dbg !1694
  %25 = icmp slt i32 %23, %24, !dbg !1694
  br i1 %25, label %26, label %48, !dbg !1694

; <label>:26                                      ; preds = %22
  %27 = load i64* %2, align 8, !dbg !1697
  %28 = lshr i64 %27, 8, !dbg !1697
  store i64 %28, i64* %2, align 8, !dbg !1697
  %29 = load i64* %2, align 8, !dbg !1699
  %30 = and i64 %29, 255, !dbg !1699
  %31 = trunc i64 %30 to i8, !dbg !1699
  %32 = load i32* %3, align 4, !dbg !1699
  %33 = icmp ne i32 %32, 0, !dbg !1699
  br i1 %33, label %34, label %36, !dbg !1699

; <label>:34                                      ; preds = %26
  %35 = load i32* %i, align 4, !dbg !1700
  br label %41, !dbg !1700

; <label>:36                                      ; preds = %26
  %37 = load i32* %4, align 4, !dbg !1702
  %38 = sub nsw i32 %37, 1, !dbg !1702
  %39 = load i32* %i, align 4, !dbg !1702
  %40 = sub nsw i32 %38, %39, !dbg !1702
  br label %41, !dbg !1702

; <label>:41                                      ; preds = %36, %34
  %42 = phi i32 [ %35, %34 ], [ %40, %36 ], !dbg !1699
  %43 = load i8** %buff, align 4, !dbg !1704
  %44 = getelementptr inbounds i8* %43, i32 %42, !dbg !1704
  store i8 %31, i8* %44, align 1, !dbg !1704
  br label %45, !dbg !1707

; <label>:45                                      ; preds = %41
  %46 = load i32* %i, align 4, !dbg !1708
  %47 = add nsw i32 %46, 1, !dbg !1708
  store i32 %47, i32* %i, align 4, !dbg !1708
  br label %22, !dbg !1708

; <label>:48                                      ; preds = %22
  %49 = load i32* %5, align 4, !dbg !1709
  %50 = icmp ne i32 %49, 0, !dbg !1709
  br i1 %50, label %51, label %77, !dbg !1709

; <label>:51                                      ; preds = %48
  %52 = load i32* %4, align 4, !dbg !1711
  %53 = icmp sgt i32 %52, 8, !dbg !1711
  br i1 %53, label %54, label %77, !dbg !1711

; <label>:54                                      ; preds = %51
  store i32 8, i32* %i, align 4, !dbg !1713
  br label %55, !dbg !1713

; <label>:55                                      ; preds = %73, %54
  %56 = load i32* %i, align 4, !dbg !1716
  %57 = load i32* %4, align 4, !dbg !1716
  %58 = icmp slt i32 %56, %57, !dbg !1716
  br i1 %58, label %59, label %76, !dbg !1716

; <label>:59                                      ; preds = %55
  %60 = load i32* %3, align 4, !dbg !1719
  %61 = icmp ne i32 %60, 0, !dbg !1719
  br i1 %61, label %62, label %64, !dbg !1719

; <label>:62                                      ; preds = %59
  %63 = load i32* %i, align 4, !dbg !1720
  br label %69, !dbg !1720

; <label>:64                                      ; preds = %59
  %65 = load i32* %4, align 4, !dbg !1722
  %66 = sub nsw i32 %65, 1, !dbg !1722
  %67 = load i32* %i, align 4, !dbg !1722
  %68 = sub nsw i32 %66, %67, !dbg !1722
  br label %69, !dbg !1722

; <label>:69                                      ; preds = %64, %62
  %70 = phi i32 [ %63, %62 ], [ %68, %64 ], !dbg !1719
  %71 = load i8** %buff, align 4, !dbg !1724
  %72 = getelementptr inbounds i8* %71, i32 %70, !dbg !1724
  store i8 -1, i8* %72, align 1, !dbg !1724
  br label %73, !dbg !1724

; <label>:73                                      ; preds = %69
  %74 = load i32* %i, align 4, !dbg !1727
  %75 = add nsw i32 %74, 1, !dbg !1727
  store i32 %75, i32* %i, align 4, !dbg !1727
  br label %55, !dbg !1727

; <label>:76                                      ; preds = %55
  br label %77, !dbg !1728

; <label>:77                                      ; preds = %76, %51, %48
  %78 = load i32* %4, align 4, !dbg !1729
  %79 = load %struct.luaL_Buffer** %1, align 4, !dbg !1729
  %80 = getelementptr inbounds %struct.luaL_Buffer* %79, i32 0, i32 2, !dbg !1729
  %81 = load i32* %80, align 4, !dbg !1729
  %82 = add i32 %81, %78, !dbg !1729
  store i32 %82, i32* %80, align 4, !dbg !1729
  ret void, !dbg !1730
}

declare double @luaL_checknumber(%struct.lua_State*, i32) #2

declare void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i32) #2

declare void @luaL_pushresult(%struct.luaL_Buffer*) #2

declare i8* @luaL_buffinitsize(%struct.lua_State*, %struct.luaL_Buffer*, i32) #2

; Function Attrs: nounwind
declare i32 @toupper(i32) #0

declare void @luaL_pushresultsize(%struct.luaL_Buffer*, i32) #2

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #4

; Function Attrs: nounwind
define internal i32 @str_find_aux(%struct.lua_State* %L, i32 %find) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %ls = alloca i32, align 4
  %lp = alloca i32, align 4
  %s = alloca i8*, align 4
  %p = alloca i8*, align 4
  %init = alloca i64, align 8
  %s2 = alloca i8*, align 4
  %ms = alloca %struct.MatchState, align 4
  %s1 = alloca i8*, align 4
  %anchor = alloca i32, align 4
  %res = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1731), !dbg !1732
  store i32 %find, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1733), !dbg !1734
  call void @llvm.dbg.declare(metadata !{i32* %ls}, metadata !1735), !dbg !1736
  call void @llvm.dbg.declare(metadata !{i32* %lp}, metadata !1737), !dbg !1738
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !1739), !dbg !1740
  %4 = load %struct.lua_State** %2, align 4, !dbg !1741
  %5 = call i8* @luaL_checklstring(%struct.lua_State* %4, i32 1, i32* %ls), !dbg !1741
  store i8* %5, i8** %s, align 4, !dbg !1741
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !1742), !dbg !1743
  %6 = load %struct.lua_State** %2, align 4, !dbg !1744
  %7 = call i8* @luaL_checklstring(%struct.lua_State* %6, i32 2, i32* %lp), !dbg !1744
  store i8* %7, i8** %p, align 4, !dbg !1744
  call void @llvm.dbg.declare(metadata !{i64* %init}, metadata !1745), !dbg !1746
  %8 = load %struct.lua_State** %2, align 4, !dbg !1747
  %9 = call i64 @luaL_optinteger(%struct.lua_State* %8, i32 3, i64 1), !dbg !1747
  %10 = load i32* %ls, align 4, !dbg !1748
  %11 = call i64 @posrelat(i64 %9, i32 %10), !dbg !1748
  store i64 %11, i64* %init, align 8, !dbg !1748
  %12 = load i64* %init, align 8, !dbg !1749
  %13 = icmp slt i64 %12, 1, !dbg !1749
  br i1 %13, label %14, label %15, !dbg !1749

; <label>:14                                      ; preds = %0
  store i64 1, i64* %init, align 8, !dbg !1751
  br label %24, !dbg !1751

; <label>:15                                      ; preds = %0
  %16 = load i64* %init, align 8, !dbg !1753
  %17 = load i32* %ls, align 4, !dbg !1753
  %18 = zext i32 %17 to i64, !dbg !1753
  %19 = add nsw i64 %18, 1, !dbg !1753
  %20 = icmp sgt i64 %16, %19, !dbg !1753
  br i1 %20, label %21, label %23, !dbg !1753

; <label>:21                                      ; preds = %15
  %22 = load %struct.lua_State** %2, align 4, !dbg !1755
  call void @lua_pushnil(%struct.lua_State* %22), !dbg !1755
  store i32 1, i32* %1, !dbg !1757
  br label %141, !dbg !1757

; <label>:23                                      ; preds = %15
  br label %24

; <label>:24                                      ; preds = %23, %14
  %25 = load i32* %3, align 4, !dbg !1758
  %26 = icmp ne i32 %25, 0, !dbg !1758
  br i1 %26, label %27, label %71, !dbg !1758

; <label>:27                                      ; preds = %24
  %28 = load %struct.lua_State** %2, align 4, !dbg !1760
  %29 = call i32 @lua_toboolean(%struct.lua_State* %28, i32 4), !dbg !1760
  %30 = icmp ne i32 %29, 0, !dbg !1760
  br i1 %30, label %36, label %31, !dbg !1760

; <label>:31                                      ; preds = %27
  %32 = load i8** %p, align 4, !dbg !1762
  %33 = load i32* %lp, align 4, !dbg !1762
  %34 = call i32 @nospecials(i8* %32, i32 %33), !dbg !1762
  %35 = icmp ne i32 %34, 0, !dbg !1762
  br i1 %35, label %36, label %71, !dbg !1762

; <label>:36                                      ; preds = %31, %27
  call void @llvm.dbg.declare(metadata !{i8** %s2}, metadata !1764), !dbg !1766
  %37 = load i8** %s, align 4, !dbg !1767
  %38 = load i64* %init, align 8, !dbg !1767
  %39 = trunc i64 %38 to i32, !dbg !1767
  %40 = getelementptr inbounds i8* %37, i32 %39, !dbg !1767
  %41 = getelementptr inbounds i8* %40, i32 -1, !dbg !1767
  %42 = load i32* %ls, align 4, !dbg !1767
  %43 = load i64* %init, align 8, !dbg !1767
  %44 = trunc i64 %43 to i32, !dbg !1767
  %45 = sub i32 %42, %44, !dbg !1767
  %46 = add i32 %45, 1, !dbg !1767
  %47 = load i8** %p, align 4, !dbg !1767
  %48 = load i32* %lp, align 4, !dbg !1767
  %49 = call i8* @lmemfind(i8* %41, i32 %46, i8* %47, i32 %48), !dbg !1767
  store i8* %49, i8** %s2, align 4, !dbg !1767
  %50 = load i8** %s2, align 4, !dbg !1768
  %51 = icmp ne i8* %50, null, !dbg !1768
  br i1 %51, label %52, label %70, !dbg !1768

; <label>:52                                      ; preds = %36
  %53 = load %struct.lua_State** %2, align 4, !dbg !1770
  %54 = load i8** %s2, align 4, !dbg !1770
  %55 = load i8** %s, align 4, !dbg !1770
  %56 = ptrtoint i8* %54 to i32, !dbg !1770
  %57 = ptrtoint i8* %55 to i32, !dbg !1770
  %58 = sub i32 %56, %57, !dbg !1770
  %59 = add nsw i32 %58, 1, !dbg !1770
  %60 = sext i32 %59 to i64, !dbg !1770
  call void @lua_pushinteger(%struct.lua_State* %53, i64 %60), !dbg !1770
  %61 = load %struct.lua_State** %2, align 4, !dbg !1772
  %62 = load i8** %s2, align 4, !dbg !1772
  %63 = load i8** %s, align 4, !dbg !1772
  %64 = ptrtoint i8* %62 to i32, !dbg !1772
  %65 = ptrtoint i8* %63 to i32, !dbg !1772
  %66 = sub i32 %64, %65, !dbg !1772
  %67 = load i32* %lp, align 4, !dbg !1772
  %68 = add i32 %66, %67, !dbg !1772
  %69 = zext i32 %68 to i64, !dbg !1772
  call void @lua_pushinteger(%struct.lua_State* %61, i64 %69), !dbg !1772
  store i32 2, i32* %1, !dbg !1773
  br label %141, !dbg !1773

; <label>:70                                      ; preds = %36
  br label %139, !dbg !1774

; <label>:71                                      ; preds = %31, %24
  call void @llvm.dbg.declare(metadata !{%struct.MatchState* %ms}, metadata !1775), !dbg !1777
  call void @llvm.dbg.declare(metadata !{i8** %s1}, metadata !1778), !dbg !1779
  %72 = load i8** %s, align 4, !dbg !1780
  %73 = load i64* %init, align 8, !dbg !1780
  %74 = trunc i64 %73 to i32, !dbg !1780
  %75 = getelementptr inbounds i8* %72, i32 %74, !dbg !1780
  %76 = getelementptr inbounds i8* %75, i32 -1, !dbg !1780
  store i8* %76, i8** %s1, align 4, !dbg !1780
  call void @llvm.dbg.declare(metadata !{i32* %anchor}, metadata !1781), !dbg !1782
  %77 = load i8** %p, align 4, !dbg !1783
  %78 = load i8* %77, align 1, !dbg !1783
  %79 = zext i8 %78 to i32, !dbg !1783
  %80 = icmp eq i32 %79, 94, !dbg !1783
  %81 = zext i1 %80 to i32, !dbg !1783
  store i32 %81, i32* %anchor, align 4, !dbg !1783
  %82 = load i32* %anchor, align 4, !dbg !1784
  %83 = icmp ne i32 %82, 0, !dbg !1784
  br i1 %83, label %84, label %89, !dbg !1784

; <label>:84                                      ; preds = %71
  %85 = load i8** %p, align 4, !dbg !1786
  %86 = getelementptr inbounds i8* %85, i32 1, !dbg !1786
  store i8* %86, i8** %p, align 4, !dbg !1786
  %87 = load i32* %lp, align 4, !dbg !1788
  %88 = add i32 %87, -1, !dbg !1788
  store i32 %88, i32* %lp, align 4, !dbg !1788
  br label %89, !dbg !1789

; <label>:89                                      ; preds = %84, %71
  %90 = load %struct.lua_State** %2, align 4, !dbg !1790
  %91 = load i8** %s, align 4, !dbg !1790
  %92 = load i32* %ls, align 4, !dbg !1790
  %93 = load i8** %p, align 4, !dbg !1790
  %94 = load i32* %lp, align 4, !dbg !1790
  call void @prepstate(%struct.MatchState* %ms, %struct.lua_State* %90, i8* %91, i32 %92, i8* %93, i32 %94), !dbg !1790
  br label %95, !dbg !1791

; <label>:95                                      ; preds = %136, %89
  call void @llvm.dbg.declare(metadata !{i8** %res}, metadata !1792), !dbg !1794
  call void @reprepstate(%struct.MatchState* %ms), !dbg !1795
  %96 = load i8** %s1, align 4, !dbg !1796
  %97 = load i8** %p, align 4, !dbg !1796
  %98 = call i8* @match(%struct.MatchState* %ms, i8* %96, i8* %97), !dbg !1796
  store i8* %98, i8** %res, align 4, !dbg !1796
  %99 = icmp ne i8* %98, null, !dbg !1796
  br i1 %99, label %100, label %125, !dbg !1796

; <label>:100                                     ; preds = %95
  %101 = load i32* %3, align 4, !dbg !1798
  %102 = icmp ne i32 %101, 0, !dbg !1798
  br i1 %102, label %103, label %121, !dbg !1798

; <label>:103                                     ; preds = %100
  %104 = load %struct.lua_State** %2, align 4, !dbg !1801
  %105 = load i8** %s1, align 4, !dbg !1801
  %106 = load i8** %s, align 4, !dbg !1801
  %107 = ptrtoint i8* %105 to i32, !dbg !1801
  %108 = ptrtoint i8* %106 to i32, !dbg !1801
  %109 = sub i32 %107, %108, !dbg !1801
  %110 = add nsw i32 %109, 1, !dbg !1801
  %111 = sext i32 %110 to i64, !dbg !1801
  call void @lua_pushinteger(%struct.lua_State* %104, i64 %111), !dbg !1801
  %112 = load %struct.lua_State** %2, align 4, !dbg !1803
  %113 = load i8** %res, align 4, !dbg !1803
  %114 = load i8** %s, align 4, !dbg !1803
  %115 = ptrtoint i8* %113 to i32, !dbg !1803
  %116 = ptrtoint i8* %114 to i32, !dbg !1803
  %117 = sub i32 %115, %116, !dbg !1803
  %118 = sext i32 %117 to i64, !dbg !1803
  call void @lua_pushinteger(%struct.lua_State* %112, i64 %118), !dbg !1803
  %119 = call i32 @push_captures(%struct.MatchState* %ms, i8* null, i8* null), !dbg !1804
  %120 = add nsw i32 %119, 2, !dbg !1804
  store i32 %120, i32* %1, !dbg !1804
  br label %141, !dbg !1804

; <label>:121                                     ; preds = %100
  %122 = load i8** %s1, align 4, !dbg !1805
  %123 = load i8** %res, align 4, !dbg !1805
  %124 = call i32 @push_captures(%struct.MatchState* %ms, i8* %122, i8* %123), !dbg !1805
  store i32 %124, i32* %1, !dbg !1805
  br label %141, !dbg !1805

; <label>:125                                     ; preds = %95
  br label %126, !dbg !1806

; <label>:126                                     ; preds = %125
  %127 = load i8** %s1, align 4, !dbg !1807
  %128 = getelementptr inbounds i8* %127, i32 1, !dbg !1807
  store i8* %128, i8** %s1, align 4, !dbg !1807
  %129 = getelementptr inbounds %struct.MatchState* %ms, i32 0, i32 1, !dbg !1807
  %130 = load i8** %129, align 4, !dbg !1807
  %131 = icmp ult i8* %127, %130, !dbg !1807
  br i1 %131, label %132, label %136, !dbg !1807

; <label>:132                                     ; preds = %126
  %133 = load i32* %anchor, align 4, !dbg !1809
  %134 = icmp ne i32 %133, 0, !dbg !1809
  %135 = xor i1 %134, true, !dbg !1809
  br label %136

; <label>:136                                     ; preds = %132, %126
  %137 = phi i1 [ false, %126 ], [ %135, %132 ]
  br i1 %137, label %95, label %138, !dbg !1811

; <label>:138                                     ; preds = %136
  br label %139

; <label>:139                                     ; preds = %138, %70
  %140 = load %struct.lua_State** %2, align 4, !dbg !1813
  call void @lua_pushnil(%struct.lua_State* %140), !dbg !1813
  store i32 1, i32* %1, !dbg !1814
  br label %141, !dbg !1814

; <label>:141                                     ; preds = %139, %121, %103, %52, %21
  %142 = load i32* %1, !dbg !1815
  ret i32 %142, !dbg !1815
}

declare i32 @lua_toboolean(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal i32 @nospecials(i8* %p, i32 %l) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %upto = alloca i32, align 4
  store i8* %p, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1816), !dbg !1817
  store i32 %l, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1818), !dbg !1819
  call void @llvm.dbg.declare(metadata !{i32* %upto}, metadata !1820), !dbg !1821
  store i32 0, i32* %upto, align 4, !dbg !1822
  br label %4, !dbg !1823

; <label>:4                                       ; preds = %19, %0
  %5 = load i8** %2, align 4, !dbg !1824
  %6 = load i32* %upto, align 4, !dbg !1824
  %7 = getelementptr inbounds i8* %5, i32 %6, !dbg !1824
  %8 = call i8* @strpbrk(i8* %7, i8* getelementptr inbounds ([11 x i8]* @.str45, i32 0, i32 0)) #6, !dbg !1824
  %9 = icmp ne i8* %8, null, !dbg !1824
  br i1 %9, label %10, label %11, !dbg !1824

; <label>:10                                      ; preds = %4
  store i32 0, i32* %1, !dbg !1827
  br label %24, !dbg !1827

; <label>:11                                      ; preds = %4
  %12 = load i8** %2, align 4, !dbg !1828
  %13 = load i32* %upto, align 4, !dbg !1828
  %14 = getelementptr inbounds i8* %12, i32 %13, !dbg !1828
  %15 = call i32 @strlen(i8* %14) #6, !dbg !1828
  %16 = add i32 %15, 1, !dbg !1828
  %17 = load i32* %upto, align 4, !dbg !1828
  %18 = add i32 %17, %16, !dbg !1828
  store i32 %18, i32* %upto, align 4, !dbg !1828
  br label %19, !dbg !1829

; <label>:19                                      ; preds = %11
  %20 = load i32* %upto, align 4, !dbg !1830
  %21 = load i32* %3, align 4, !dbg !1830
  %22 = icmp ule i32 %20, %21, !dbg !1830
  br i1 %22, label %4, label %23, !dbg !1830

; <label>:23                                      ; preds = %19
  store i32 1, i32* %1, !dbg !1832
  br label %24, !dbg !1832

; <label>:24                                      ; preds = %23, %10
  %25 = load i32* %1, !dbg !1833
  ret i32 %25, !dbg !1833
}

; Function Attrs: nounwind
define internal i8* @lmemfind(i8* %s1, i32 %l1, i8* %s2, i32 %l2) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %init = alloca i8*, align 4
  store i8* %s1, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1834), !dbg !1835
  store i32 %l1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1836), !dbg !1837
  store i8* %s2, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !1838), !dbg !1839
  store i32 %l2, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !1840), !dbg !1841
  %6 = load i32* %5, align 4, !dbg !1842
  %7 = icmp eq i32 %6, 0, !dbg !1842
  br i1 %7, label %8, label %10, !dbg !1842

; <label>:8                                       ; preds = %0
  %9 = load i8** %2, align 4, !dbg !1844
  store i8* %9, i8** %1, !dbg !1844
  br label %57, !dbg !1844

; <label>:10                                      ; preds = %0
  %11 = load i32* %5, align 4, !dbg !1846
  %12 = load i32* %3, align 4, !dbg !1846
  %13 = icmp ugt i32 %11, %12, !dbg !1846
  br i1 %13, label %14, label %15, !dbg !1846

; <label>:14                                      ; preds = %10
  store i8* null, i8** %1, !dbg !1848
  br label %57, !dbg !1848

; <label>:15                                      ; preds = %10
  call void @llvm.dbg.declare(metadata !{i8** %init}, metadata !1850), !dbg !1852
  %16 = load i32* %5, align 4, !dbg !1853
  %17 = add i32 %16, -1, !dbg !1853
  store i32 %17, i32* %5, align 4, !dbg !1853
  %18 = load i32* %3, align 4, !dbg !1854
  %19 = load i32* %5, align 4, !dbg !1854
  %20 = sub i32 %18, %19, !dbg !1854
  store i32 %20, i32* %3, align 4, !dbg !1854
  br label %21, !dbg !1855

; <label>:21                                      ; preds = %55, %15
  %22 = load i32* %3, align 4, !dbg !1856
  %23 = icmp ugt i32 %22, 0, !dbg !1856
  br i1 %23, label %24, label %32, !dbg !1856

; <label>:24                                      ; preds = %21
  %25 = load i8** %2, align 4, !dbg !1858
  %26 = load i8** %4, align 4, !dbg !1858
  %27 = load i8* %26, align 1, !dbg !1858
  %28 = zext i8 %27 to i32, !dbg !1858
  %29 = load i32* %3, align 4, !dbg !1858
  %30 = call i8* @memchr(i8* %25, i32 %28, i32 %29) #6, !dbg !1858
  store i8* %30, i8** %init, align 4, !dbg !1858
  %31 = icmp ne i8* %30, null, !dbg !1858
  br label %32

; <label>:32                                      ; preds = %24, %21
  %33 = phi i1 [ false, %21 ], [ %31, %24 ]
  br i1 %33, label %34, label %56, !dbg !1860

; <label>:34                                      ; preds = %32
  %35 = load i8** %init, align 4, !dbg !1862
  %36 = getelementptr inbounds i8* %35, i32 1, !dbg !1862
  store i8* %36, i8** %init, align 4, !dbg !1862
  %37 = load i8** %init, align 4, !dbg !1864
  %38 = load i8** %4, align 4, !dbg !1864
  %39 = getelementptr inbounds i8* %38, i32 1, !dbg !1864
  %40 = load i32* %5, align 4, !dbg !1864
  %41 = call i32 @memcmp(i8* %37, i8* %39, i32 %40) #6, !dbg !1864
  %42 = icmp eq i32 %41, 0, !dbg !1864
  br i1 %42, label %43, label %46, !dbg !1864

; <label>:43                                      ; preds = %34
  %44 = load i8** %init, align 4, !dbg !1866
  %45 = getelementptr inbounds i8* %44, i32 -1, !dbg !1866
  store i8* %45, i8** %1, !dbg !1866
  br label %57, !dbg !1866

; <label>:46                                      ; preds = %34
  %47 = load i8** %init, align 4, !dbg !1867
  %48 = load i8** %2, align 4, !dbg !1867
  %49 = ptrtoint i8* %47 to i32, !dbg !1867
  %50 = ptrtoint i8* %48 to i32, !dbg !1867
  %51 = sub i32 %49, %50, !dbg !1867
  %52 = load i32* %3, align 4, !dbg !1867
  %53 = sub i32 %52, %51, !dbg !1867
  store i32 %53, i32* %3, align 4, !dbg !1867
  %54 = load i8** %init, align 4, !dbg !1869
  store i8* %54, i8** %2, align 4, !dbg !1869
  br label %55

; <label>:55                                      ; preds = %46
  br label %21, !dbg !1870

; <label>:56                                      ; preds = %32
  store i8* null, i8** %1, !dbg !1871
  br label %57, !dbg !1871

; <label>:57                                      ; preds = %56, %43, %14, %8
  %58 = load i8** %1, !dbg !1872
  ret i8* %58, !dbg !1872
}

; Function Attrs: nounwind
define internal void @prepstate(%struct.MatchState* %ms, %struct.lua_State* %L, i8* %s, i32 %ls, i8* %p, i32 %lp) #0 {
  %1 = alloca %struct.MatchState*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.MatchState** %1}, metadata !1873), !dbg !1874
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1875), !dbg !1876
  store i8* %s, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1877), !dbg !1878
  store i32 %ls, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1879), !dbg !1880
  store i8* %p, i8** %5, align 4
  call void @llvm.dbg.declare(metadata !{i8** %5}, metadata !1881), !dbg !1882
  store i32 %lp, i32* %6, align 4
  call void @llvm.dbg.declare(metadata !{i32* %6}, metadata !1883), !dbg !1884
  %7 = load %struct.lua_State** %2, align 4, !dbg !1885
  %8 = load %struct.MatchState** %1, align 4, !dbg !1885
  %9 = getelementptr inbounds %struct.MatchState* %8, i32 0, i32 3, !dbg !1885
  store %struct.lua_State* %7, %struct.lua_State** %9, align 4, !dbg !1885
  %10 = load %struct.MatchState** %1, align 4, !dbg !1886
  %11 = getelementptr inbounds %struct.MatchState* %10, i32 0, i32 4, !dbg !1886
  store i32 200, i32* %11, align 4, !dbg !1886
  %12 = load i8** %3, align 4, !dbg !1887
  %13 = load %struct.MatchState** %1, align 4, !dbg !1887
  %14 = getelementptr inbounds %struct.MatchState* %13, i32 0, i32 0, !dbg !1887
  store i8* %12, i8** %14, align 4, !dbg !1887
  %15 = load i8** %3, align 4, !dbg !1888
  %16 = load i32* %4, align 4, !dbg !1888
  %17 = getelementptr inbounds i8* %15, i32 %16, !dbg !1888
  %18 = load %struct.MatchState** %1, align 4, !dbg !1888
  %19 = getelementptr inbounds %struct.MatchState* %18, i32 0, i32 1, !dbg !1888
  store i8* %17, i8** %19, align 4, !dbg !1888
  %20 = load i8** %5, align 4, !dbg !1889
  %21 = load i32* %6, align 4, !dbg !1889
  %22 = getelementptr inbounds i8* %20, i32 %21, !dbg !1889
  %23 = load %struct.MatchState** %1, align 4, !dbg !1889
  %24 = getelementptr inbounds %struct.MatchState* %23, i32 0, i32 2, !dbg !1889
  store i8* %22, i8** %24, align 4, !dbg !1889
  ret void, !dbg !1890
}

; Function Attrs: nounwind
define internal void @reprepstate(%struct.MatchState* %ms) #0 {
  %1 = alloca %struct.MatchState*, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.MatchState** %1}, metadata !1891), !dbg !1892
  %2 = load %struct.MatchState** %1, align 4, !dbg !1893
  %3 = getelementptr inbounds %struct.MatchState* %2, i32 0, i32 5, !dbg !1893
  store i8 0, i8* %3, align 1, !dbg !1893
  ret void, !dbg !1894
}

; Function Attrs: nounwind
define internal i8* @match(%struct.MatchState* %ms, i8* %s, i8* %p) #0 {
  %1 = alloca %struct.MatchState*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %ep = alloca i8*, align 4
  %previous = alloca i8, align 1
  %ep1 = alloca i8*, align 4
  %res = alloca i8*, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.MatchState** %1}, metadata !1895), !dbg !1896
  store i8* %s, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1897), !dbg !1898
  store i8* %p, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1899), !dbg !1900
  %4 = load %struct.MatchState** %1, align 4, !dbg !1901
  %5 = getelementptr inbounds %struct.MatchState* %4, i32 0, i32 4, !dbg !1901
  %6 = load i32* %5, align 4, !dbg !1901
  %7 = add nsw i32 %6, -1, !dbg !1901
  store i32 %7, i32* %5, align 4, !dbg !1901
  %8 = icmp eq i32 %6, 0, !dbg !1901
  br i1 %8, label %9, label %14, !dbg !1901

; <label>:9                                       ; preds = %0
  %10 = load %struct.MatchState** %1, align 4, !dbg !1903
  %11 = getelementptr inbounds %struct.MatchState* %10, i32 0, i32 3, !dbg !1903
  %12 = load %struct.lua_State** %11, align 4, !dbg !1903
  %13 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %12, i8* getelementptr inbounds ([20 x i8]* @.str39, i32 0, i32 0)), !dbg !1903
  br label %14, !dbg !1903

; <label>:14                                      ; preds = %9, %0
  br label %15, !dbg !1904

; <label>:15                                      ; preds = %215, %196, %177, %145, %132, %82, %14
  %16 = load i8** %3, align 4, !dbg !1906
  %17 = load %struct.MatchState** %1, align 4, !dbg !1906
  %18 = getelementptr inbounds %struct.MatchState* %17, i32 0, i32 2, !dbg !1906
  %19 = load i8** %18, align 4, !dbg !1906
  %20 = icmp ne i8* %16, %19, !dbg !1906
  br i1 %20, label %21, label %222, !dbg !1906

; <label>:21                                      ; preds = %15
  %22 = load i8** %3, align 4, !dbg !1908
  %23 = load i8* %22, align 1, !dbg !1908
  %24 = zext i8 %23 to i32, !dbg !1908
  switch i32 %24, label %151 [
    i32 40, label %25
    i32 41, label %44
    i32 36, label %50
    i32 37, label %69
  ], !dbg !1908

; <label>:25                                      ; preds = %21
  %26 = load i8** %3, align 4, !dbg !1910
  %27 = getelementptr inbounds i8* %26, i32 1, !dbg !1910
  %28 = load i8* %27, align 1, !dbg !1910
  %29 = zext i8 %28 to i32, !dbg !1910
  %30 = icmp eq i32 %29, 41, !dbg !1910
  br i1 %30, label %31, label %37, !dbg !1910

; <label>:31                                      ; preds = %25
  %32 = load %struct.MatchState** %1, align 4, !dbg !1914
  %33 = load i8** %2, align 4, !dbg !1914
  %34 = load i8** %3, align 4, !dbg !1914
  %35 = getelementptr inbounds i8* %34, i32 2, !dbg !1914
  %36 = call i8* @start_capture(%struct.MatchState* %32, i8* %33, i8* %35, i32 -2), !dbg !1914
  store i8* %36, i8** %2, align 4, !dbg !1914
  br label %43, !dbg !1914

; <label>:37                                      ; preds = %25
  %38 = load %struct.MatchState** %1, align 4, !dbg !1915
  %39 = load i8** %2, align 4, !dbg !1915
  %40 = load i8** %3, align 4, !dbg !1915
  %41 = getelementptr inbounds i8* %40, i32 1, !dbg !1915
  %42 = call i8* @start_capture(%struct.MatchState* %38, i8* %39, i8* %41, i32 -1), !dbg !1915
  store i8* %42, i8** %2, align 4, !dbg !1915
  br label %43

; <label>:43                                      ; preds = %37, %31
  br label %221, !dbg !1916

; <label>:44                                      ; preds = %21
  %45 = load %struct.MatchState** %1, align 4, !dbg !1917
  %46 = load i8** %2, align 4, !dbg !1917
  %47 = load i8** %3, align 4, !dbg !1917
  %48 = getelementptr inbounds i8* %47, i32 1, !dbg !1917
  %49 = call i8* @end_capture(%struct.MatchState* %45, i8* %46, i8* %48), !dbg !1917
  store i8* %49, i8** %2, align 4, !dbg !1917
  br label %221, !dbg !1919

; <label>:50                                      ; preds = %21
  %51 = load i8** %3, align 4, !dbg !1920
  %52 = getelementptr inbounds i8* %51, i32 1, !dbg !1920
  %53 = load %struct.MatchState** %1, align 4, !dbg !1920
  %54 = getelementptr inbounds %struct.MatchState* %53, i32 0, i32 2, !dbg !1920
  %55 = load i8** %54, align 4, !dbg !1920
  %56 = icmp ne i8* %52, %55, !dbg !1920
  br i1 %56, label %57, label %58, !dbg !1920

; <label>:57                                      ; preds = %50
  br label %152, !dbg !1923

; <label>:58                                      ; preds = %50
  %59 = load i8** %2, align 4, !dbg !1924
  %60 = load %struct.MatchState** %1, align 4, !dbg !1924
  %61 = getelementptr inbounds %struct.MatchState* %60, i32 0, i32 1, !dbg !1924
  %62 = load i8** %61, align 4, !dbg !1924
  %63 = icmp eq i8* %59, %62, !dbg !1924
  br i1 %63, label %64, label %66, !dbg !1924

; <label>:64                                      ; preds = %58
  %65 = load i8** %2, align 4, !dbg !1925
  br label %67, !dbg !1925

; <label>:66                                      ; preds = %58
  br label %67, !dbg !1927

; <label>:67                                      ; preds = %66, %64
  %68 = phi i8* [ %65, %64 ], [ null, %66 ], !dbg !1924
  store i8* %68, i8** %2, align 4, !dbg !1929
  br label %221, !dbg !1932

; <label>:69                                      ; preds = %21
  %70 = load i8** %3, align 4, !dbg !1933
  %71 = getelementptr inbounds i8* %70, i32 1, !dbg !1933
  %72 = load i8* %71, align 1, !dbg !1933
  %73 = zext i8 %72 to i32, !dbg !1933
  switch i32 %73, label %149 [
    i32 98, label %74
    i32 102, label %86
    i32 48, label %135
    i32 49, label %135
    i32 50, label %135
    i32 51, label %135
    i32 52, label %135
    i32 53, label %135
    i32 54, label %135
    i32 55, label %135
    i32 56, label %135
    i32 57, label %135
  ], !dbg !1933

; <label>:74                                      ; preds = %69
  %75 = load %struct.MatchState** %1, align 4, !dbg !1935
  %76 = load i8** %2, align 4, !dbg !1935
  %77 = load i8** %3, align 4, !dbg !1935
  %78 = getelementptr inbounds i8* %77, i32 2, !dbg !1935
  %79 = call i8* @matchbalance(%struct.MatchState* %75, i8* %76, i8* %78), !dbg !1935
  store i8* %79, i8** %2, align 4, !dbg !1935
  %80 = load i8** %2, align 4, !dbg !1938
  %81 = icmp ne i8* %80, null, !dbg !1938
  br i1 %81, label %82, label %85, !dbg !1938

; <label>:82                                      ; preds = %74
  %83 = load i8** %3, align 4, !dbg !1940
  %84 = getelementptr inbounds i8* %83, i32 4, !dbg !1940
  store i8* %84, i8** %3, align 4, !dbg !1940
  br label %15, !dbg !1942

; <label>:85                                      ; preds = %74
  br label %150, !dbg !1943

; <label>:86                                      ; preds = %69
  call void @llvm.dbg.declare(metadata !{i8** %ep}, metadata !1944), !dbg !1946
  call void @llvm.dbg.declare(metadata !{i8* %previous}, metadata !1947), !dbg !1948
  %87 = load i8** %3, align 4, !dbg !1949
  %88 = getelementptr inbounds i8* %87, i32 2, !dbg !1949
  store i8* %88, i8** %3, align 4, !dbg !1949
  %89 = load i8** %3, align 4, !dbg !1950
  %90 = load i8* %89, align 1, !dbg !1950
  %91 = zext i8 %90 to i32, !dbg !1950
  %92 = icmp ne i32 %91, 91, !dbg !1950
  br i1 %92, label %93, label %98, !dbg !1950

; <label>:93                                      ; preds = %86
  %94 = load %struct.MatchState** %1, align 4, !dbg !1952
  %95 = getelementptr inbounds %struct.MatchState* %94, i32 0, i32 3, !dbg !1952
  %96 = load %struct.lua_State** %95, align 4, !dbg !1952
  %97 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %96, i8* getelementptr inbounds ([35 x i8]* @.str40, i32 0, i32 0)), !dbg !1952
  br label %98, !dbg !1952

; <label>:98                                      ; preds = %93, %86
  %99 = load %struct.MatchState** %1, align 4, !dbg !1953
  %100 = load i8** %3, align 4, !dbg !1953
  %101 = call i8* @classend(%struct.MatchState* %99, i8* %100), !dbg !1953
  store i8* %101, i8** %ep, align 4, !dbg !1953
  %102 = load i8** %2, align 4, !dbg !1954
  %103 = load %struct.MatchState** %1, align 4, !dbg !1954
  %104 = getelementptr inbounds %struct.MatchState* %103, i32 0, i32 0, !dbg !1954
  %105 = load i8** %104, align 4, !dbg !1954
  %106 = icmp eq i8* %102, %105, !dbg !1954
  br i1 %106, label %107, label %108, !dbg !1954

; <label>:107                                     ; preds = %98
  br label %113, !dbg !1955

; <label>:108                                     ; preds = %98
  %109 = load i8** %2, align 4, !dbg !1957
  %110 = getelementptr inbounds i8* %109, i32 -1, !dbg !1957
  %111 = load i8* %110, align 1, !dbg !1957
  %112 = zext i8 %111 to i32, !dbg !1957
  br label %113, !dbg !1957

; <label>:113                                     ; preds = %108, %107
  %114 = phi i32 [ 0, %107 ], [ %112, %108 ], !dbg !1954
  %115 = trunc i32 %114 to i8, !dbg !1959
  store i8 %115, i8* %previous, align 1, !dbg !1959
  %116 = load i8* %previous, align 1, !dbg !1962
  %117 = zext i8 %116 to i32, !dbg !1962
  %118 = load i8** %3, align 4, !dbg !1962
  %119 = load i8** %ep, align 4, !dbg !1962
  %120 = getelementptr inbounds i8* %119, i32 -1, !dbg !1962
  %121 = call i32 @matchbracketclass(i32 %117, i8* %118, i8* %120), !dbg !1962
  %122 = icmp ne i32 %121, 0, !dbg !1962
  br i1 %122, label %134, label %123, !dbg !1962

; <label>:123                                     ; preds = %113
  %124 = load i8** %2, align 4, !dbg !1964
  %125 = load i8* %124, align 1, !dbg !1964
  %126 = zext i8 %125 to i32, !dbg !1964
  %127 = load i8** %3, align 4, !dbg !1964
  %128 = load i8** %ep, align 4, !dbg !1964
  %129 = getelementptr inbounds i8* %128, i32 -1, !dbg !1964
  %130 = call i32 @matchbracketclass(i32 %126, i8* %127, i8* %129), !dbg !1964
  %131 = icmp ne i32 %130, 0, !dbg !1964
  br i1 %131, label %132, label %134, !dbg !1964

; <label>:132                                     ; preds = %123
  %133 = load i8** %ep, align 4, !dbg !1965
  store i8* %133, i8** %3, align 4, !dbg !1965
  br label %15, !dbg !1967

; <label>:134                                     ; preds = %123, %113
  store i8* null, i8** %2, align 4, !dbg !1968
  br label %150, !dbg !1969

; <label>:135                                     ; preds = %69, %69, %69, %69, %69, %69, %69, %69, %69, %69
  %136 = load %struct.MatchState** %1, align 4, !dbg !1970
  %137 = load i8** %2, align 4, !dbg !1970
  %138 = load i8** %3, align 4, !dbg !1970
  %139 = getelementptr inbounds i8* %138, i32 1, !dbg !1970
  %140 = load i8* %139, align 1, !dbg !1970
  %141 = zext i8 %140 to i32, !dbg !1970
  %142 = call i8* @match_capture(%struct.MatchState* %136, i8* %137, i32 %141), !dbg !1970
  store i8* %142, i8** %2, align 4, !dbg !1970
  %143 = load i8** %2, align 4, !dbg !1972
  %144 = icmp ne i8* %143, null, !dbg !1972
  br i1 %144, label %145, label %148, !dbg !1972

; <label>:145                                     ; preds = %135
  %146 = load i8** %3, align 4, !dbg !1974
  %147 = getelementptr inbounds i8* %146, i32 2, !dbg !1974
  store i8* %147, i8** %3, align 4, !dbg !1974
  br label %15, !dbg !1976

; <label>:148                                     ; preds = %135
  br label %150, !dbg !1977

; <label>:149                                     ; preds = %69
  br label %152, !dbg !1978

; <label>:150                                     ; preds = %148, %134, %85
  br label %221, !dbg !1979

; <label>:151                                     ; preds = %21
  br label %152, !dbg !1980

; <label>:152                                     ; preds = %151, %149, %57
  call void @llvm.dbg.declare(metadata !{i8** %ep1}, metadata !1981), !dbg !1983
  %153 = load %struct.MatchState** %1, align 4, !dbg !1984
  %154 = load i8** %3, align 4, !dbg !1984
  %155 = call i8* @classend(%struct.MatchState* %153, i8* %154), !dbg !1984
  store i8* %155, i8** %ep1, align 4, !dbg !1984
  %156 = load %struct.MatchState** %1, align 4, !dbg !1985
  %157 = load i8** %2, align 4, !dbg !1985
  %158 = load i8** %3, align 4, !dbg !1985
  %159 = load i8** %ep1, align 4, !dbg !1985
  %160 = call i32 @singlematch(%struct.MatchState* %156, i8* %157, i8* %158, i8* %159), !dbg !1985
  %161 = icmp ne i32 %160, 0, !dbg !1985
  br i1 %161, label %182, label %162, !dbg !1985

; <label>:162                                     ; preds = %152
  %163 = load i8** %ep1, align 4, !dbg !1987
  %164 = load i8* %163, align 1, !dbg !1987
  %165 = zext i8 %164 to i32, !dbg !1987
  %166 = icmp eq i32 %165, 42, !dbg !1987
  br i1 %166, label %177, label %167, !dbg !1987

; <label>:167                                     ; preds = %162
  %168 = load i8** %ep1, align 4, !dbg !1990
  %169 = load i8* %168, align 1, !dbg !1990
  %170 = zext i8 %169 to i32, !dbg !1990
  %171 = icmp eq i32 %170, 63, !dbg !1990
  br i1 %171, label %177, label %172, !dbg !1990

; <label>:172                                     ; preds = %167
  %173 = load i8** %ep1, align 4, !dbg !1992
  %174 = load i8* %173, align 1, !dbg !1992
  %175 = zext i8 %174 to i32, !dbg !1992
  %176 = icmp eq i32 %175, 45, !dbg !1992
  br i1 %176, label %177, label %180, !dbg !1992

; <label>:177                                     ; preds = %172, %167, %162
  %178 = load i8** %ep1, align 4, !dbg !1994
  %179 = getelementptr inbounds i8* %178, i32 1, !dbg !1994
  store i8* %179, i8** %3, align 4, !dbg !1994
  br label %15, !dbg !1996

; <label>:180                                     ; preds = %172
  store i8* null, i8** %2, align 4, !dbg !1997
  br label %181

; <label>:181                                     ; preds = %180
  br label %220, !dbg !1998

; <label>:182                                     ; preds = %152
  %183 = load i8** %ep1, align 4, !dbg !1999
  %184 = load i8* %183, align 1, !dbg !1999
  %185 = zext i8 %184 to i32, !dbg !1999
  switch i32 %185, label %215 [
    i32 63, label %186
    i32 43, label %200
    i32 42, label %203
    i32 45, label %209
  ], !dbg !1999

; <label>:186                                     ; preds = %182
  call void @llvm.dbg.declare(metadata !{i8** %res}, metadata !2001), !dbg !2004
  %187 = load %struct.MatchState** %1, align 4, !dbg !2005
  %188 = load i8** %2, align 4, !dbg !2005
  %189 = getelementptr inbounds i8* %188, i32 1, !dbg !2005
  %190 = load i8** %ep1, align 4, !dbg !2005
  %191 = getelementptr inbounds i8* %190, i32 1, !dbg !2005
  %192 = call i8* @match(%struct.MatchState* %187, i8* %189, i8* %191), !dbg !2005
  store i8* %192, i8** %res, align 4, !dbg !2005
  %193 = icmp ne i8* %192, null, !dbg !2005
  br i1 %193, label %194, label %196, !dbg !2005

; <label>:194                                     ; preds = %186
  %195 = load i8** %res, align 4, !dbg !2007
  store i8* %195, i8** %2, align 4, !dbg !2007
  br label %199, !dbg !2007

; <label>:196                                     ; preds = %186
  %197 = load i8** %ep1, align 4, !dbg !2008
  %198 = getelementptr inbounds i8* %197, i32 1, !dbg !2008
  store i8* %198, i8** %3, align 4, !dbg !2008
  br label %15, !dbg !2010

; <label>:199                                     ; preds = %194
  br label %219, !dbg !2011

; <label>:200                                     ; preds = %182
  %201 = load i8** %2, align 4, !dbg !2012
  %202 = getelementptr inbounds i8* %201, i32 1, !dbg !2012
  store i8* %202, i8** %2, align 4, !dbg !2012
  br label %203, !dbg !2012

; <label>:203                                     ; preds = %182, %200
  %204 = load %struct.MatchState** %1, align 4, !dbg !2013
  %205 = load i8** %2, align 4, !dbg !2013
  %206 = load i8** %3, align 4, !dbg !2013
  %207 = load i8** %ep1, align 4, !dbg !2013
  %208 = call i8* @max_expand(%struct.MatchState* %204, i8* %205, i8* %206, i8* %207), !dbg !2013
  store i8* %208, i8** %2, align 4, !dbg !2013
  br label %219, !dbg !2014

; <label>:209                                     ; preds = %182
  %210 = load %struct.MatchState** %1, align 4, !dbg !2015
  %211 = load i8** %2, align 4, !dbg !2015
  %212 = load i8** %3, align 4, !dbg !2015
  %213 = load i8** %ep1, align 4, !dbg !2015
  %214 = call i8* @min_expand(%struct.MatchState* %210, i8* %211, i8* %212, i8* %213), !dbg !2015
  store i8* %214, i8** %2, align 4, !dbg !2015
  br label %219, !dbg !2016

; <label>:215                                     ; preds = %182
  %216 = load i8** %2, align 4, !dbg !2017
  %217 = getelementptr inbounds i8* %216, i32 1, !dbg !2017
  store i8* %217, i8** %2, align 4, !dbg !2017
  %218 = load i8** %ep1, align 4, !dbg !2018
  store i8* %218, i8** %3, align 4, !dbg !2018
  br label %15, !dbg !2019

; <label>:219                                     ; preds = %209, %203, %199
  br label %220

; <label>:220                                     ; preds = %219, %181
  br label %221, !dbg !2020

; <label>:221                                     ; preds = %220, %150, %67, %44, %43
  br label %222, !dbg !2021

; <label>:222                                     ; preds = %221, %15
  %223 = load %struct.MatchState** %1, align 4, !dbg !2022
  %224 = getelementptr inbounds %struct.MatchState* %223, i32 0, i32 4, !dbg !2022
  %225 = load i32* %224, align 4, !dbg !2022
  %226 = add nsw i32 %225, 1, !dbg !2022
  store i32 %226, i32* %224, align 4, !dbg !2022
  %227 = load i8** %2, align 4, !dbg !2023
  ret i8* %227, !dbg !2023
}

; Function Attrs: nounwind
define internal i32 @push_captures(%struct.MatchState* %ms, i8* %s, i8* %e) #0 {
  %1 = alloca %struct.MatchState*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %i = alloca i32, align 4
  %nlevels = alloca i32, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.MatchState** %1}, metadata !2024), !dbg !2025
  store i8* %s, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !2026), !dbg !2027
  store i8* %e, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !2028), !dbg !2029
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !2030), !dbg !2031
  call void @llvm.dbg.declare(metadata !{i32* %nlevels}, metadata !2032), !dbg !2033
  %4 = load %struct.MatchState** %1, align 4, !dbg !2034
  %5 = getelementptr inbounds %struct.MatchState* %4, i32 0, i32 5, !dbg !2034
  %6 = load i8* %5, align 1, !dbg !2034
  %7 = zext i8 %6 to i32, !dbg !2034
  %8 = icmp eq i32 %7, 0, !dbg !2034
  br i1 %8, label %9, label %13, !dbg !2034

; <label>:9                                       ; preds = %0
  %10 = load i8** %2, align 4, !dbg !2035
  %11 = icmp ne i8* %10, null, !dbg !2035
  br i1 %11, label %12, label %13, !dbg !2035

; <label>:12                                      ; preds = %9
  br label %18, !dbg !2037

; <label>:13                                      ; preds = %9, %0
  %14 = load %struct.MatchState** %1, align 4, !dbg !2039
  %15 = getelementptr inbounds %struct.MatchState* %14, i32 0, i32 5, !dbg !2039
  %16 = load i8* %15, align 1, !dbg !2039
  %17 = zext i8 %16 to i32, !dbg !2039
  br label %18, !dbg !2039

; <label>:18                                      ; preds = %13, %12
  %19 = phi i32 [ 1, %12 ], [ %17, %13 ], !dbg !2034
  store i32 %19, i32* %nlevels, align 4, !dbg !2042
  %20 = load %struct.MatchState** %1, align 4, !dbg !2045
  %21 = getelementptr inbounds %struct.MatchState* %20, i32 0, i32 3, !dbg !2045
  %22 = load %struct.lua_State** %21, align 4, !dbg !2045
  %23 = load i32* %nlevels, align 4, !dbg !2045
  call void @luaL_checkstack(%struct.lua_State* %22, i32 %23, i8* getelementptr inbounds ([18 x i8]* @.str36, i32 0, i32 0)), !dbg !2045
  store i32 0, i32* %i, align 4, !dbg !2046
  br label %24, !dbg !2046

; <label>:24                                      ; preds = %33, %18
  %25 = load i32* %i, align 4, !dbg !2048
  %26 = load i32* %nlevels, align 4, !dbg !2048
  %27 = icmp slt i32 %25, %26, !dbg !2048
  br i1 %27, label %28, label %36, !dbg !2048

; <label>:28                                      ; preds = %24
  %29 = load %struct.MatchState** %1, align 4, !dbg !2051
  %30 = load i32* %i, align 4, !dbg !2051
  %31 = load i8** %2, align 4, !dbg !2051
  %32 = load i8** %3, align 4, !dbg !2051
  call void @push_onecapture(%struct.MatchState* %29, i32 %30, i8* %31, i8* %32), !dbg !2051
  br label %33, !dbg !2051

; <label>:33                                      ; preds = %28
  %34 = load i32* %i, align 4, !dbg !2052
  %35 = add nsw i32 %34, 1, !dbg !2052
  store i32 %35, i32* %i, align 4, !dbg !2052
  br label %24, !dbg !2052

; <label>:36                                      ; preds = %24
  %37 = load i32* %nlevels, align 4, !dbg !2053
  ret i32 %37, !dbg !2053
}

; Function Attrs: nounwind
define internal void @push_onecapture(%struct.MatchState* %ms, i32 %i, i8* %s, i8* %e) #0 {
  %1 = alloca %struct.MatchState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %l = alloca i32, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.MatchState** %1}, metadata !2054), !dbg !2055
  store i32 %i, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2056), !dbg !2057
  store i8* %s, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !2058), !dbg !2059
  store i8* %e, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !2060), !dbg !2061
  %5 = load i32* %2, align 4, !dbg !2062
  %6 = load %struct.MatchState** %1, align 4, !dbg !2062
  %7 = getelementptr inbounds %struct.MatchState* %6, i32 0, i32 5, !dbg !2062
  %8 = load i8* %7, align 1, !dbg !2062
  %9 = zext i8 %8 to i32, !dbg !2062
  %10 = icmp sge i32 %5, %9, !dbg !2062
  br i1 %10, label %11, label %33, !dbg !2062

; <label>:11                                      ; preds = %0
  %12 = load i32* %2, align 4, !dbg !2064
  %13 = icmp eq i32 %12, 0, !dbg !2064
  br i1 %13, label %14, label %25, !dbg !2064

; <label>:14                                      ; preds = %11
  %15 = load %struct.MatchState** %1, align 4, !dbg !2067
  %16 = getelementptr inbounds %struct.MatchState* %15, i32 0, i32 3, !dbg !2067
  %17 = load %struct.lua_State** %16, align 4, !dbg !2067
  %18 = load i8** %3, align 4, !dbg !2067
  %19 = load i8** %4, align 4, !dbg !2067
  %20 = load i8** %3, align 4, !dbg !2067
  %21 = ptrtoint i8* %19 to i32, !dbg !2067
  %22 = ptrtoint i8* %20 to i32, !dbg !2067
  %23 = sub i32 %21, %22, !dbg !2067
  %24 = call i8* @lua_pushlstring(%struct.lua_State* %17, i8* %18, i32 %23), !dbg !2067
  br label %32, !dbg !2067

; <label>:25                                      ; preds = %11
  %26 = load %struct.MatchState** %1, align 4, !dbg !2068
  %27 = getelementptr inbounds %struct.MatchState* %26, i32 0, i32 3, !dbg !2068
  %28 = load %struct.lua_State** %27, align 4, !dbg !2068
  %29 = load i32* %2, align 4, !dbg !2068
  %30 = add nsw i32 %29, 1, !dbg !2068
  %31 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %28, i8* getelementptr inbounds ([27 x i8]* @.str37, i32 0, i32 0), i32 %30), !dbg !2068
  br label %32

; <label>:32                                      ; preds = %25, %14
  br label %81, !dbg !2069

; <label>:33                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !2070), !dbg !2072
  %34 = load i32* %2, align 4, !dbg !2073
  %35 = load %struct.MatchState** %1, align 4, !dbg !2073
  %36 = getelementptr inbounds %struct.MatchState* %35, i32 0, i32 6, !dbg !2073
  %37 = getelementptr inbounds [32 x %struct.anon]* %36, i32 0, i32 %34, !dbg !2073
  %38 = getelementptr inbounds %struct.anon* %37, i32 0, i32 1, !dbg !2073
  %39 = load i32* %38, align 4, !dbg !2073
  store i32 %39, i32* %l, align 4, !dbg !2073
  %40 = load i32* %l, align 4, !dbg !2074
  %41 = icmp eq i32 %40, -1, !dbg !2074
  br i1 %41, label %42, label %47, !dbg !2074

; <label>:42                                      ; preds = %33
  %43 = load %struct.MatchState** %1, align 4, !dbg !2076
  %44 = getelementptr inbounds %struct.MatchState* %43, i32 0, i32 3, !dbg !2076
  %45 = load %struct.lua_State** %44, align 4, !dbg !2076
  %46 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %45, i8* getelementptr inbounds ([19 x i8]* @.str38, i32 0, i32 0)), !dbg !2076
  br label %47, !dbg !2076

; <label>:47                                      ; preds = %42, %33
  %48 = load i32* %l, align 4, !dbg !2078
  %49 = icmp eq i32 %48, -2, !dbg !2078
  br i1 %49, label %50, label %68, !dbg !2078

; <label>:50                                      ; preds = %47
  %51 = load %struct.MatchState** %1, align 4, !dbg !2080
  %52 = getelementptr inbounds %struct.MatchState* %51, i32 0, i32 3, !dbg !2080
  %53 = load %struct.lua_State** %52, align 4, !dbg !2080
  %54 = load i32* %2, align 4, !dbg !2080
  %55 = load %struct.MatchState** %1, align 4, !dbg !2080
  %56 = getelementptr inbounds %struct.MatchState* %55, i32 0, i32 6, !dbg !2080
  %57 = getelementptr inbounds [32 x %struct.anon]* %56, i32 0, i32 %54, !dbg !2080
  %58 = getelementptr inbounds %struct.anon* %57, i32 0, i32 0, !dbg !2080
  %59 = load i8** %58, align 4, !dbg !2080
  %60 = load %struct.MatchState** %1, align 4, !dbg !2080
  %61 = getelementptr inbounds %struct.MatchState* %60, i32 0, i32 0, !dbg !2080
  %62 = load i8** %61, align 4, !dbg !2080
  %63 = ptrtoint i8* %59 to i32, !dbg !2080
  %64 = ptrtoint i8* %62 to i32, !dbg !2080
  %65 = sub i32 %63, %64, !dbg !2080
  %66 = add nsw i32 %65, 1, !dbg !2080
  %67 = sext i32 %66 to i64, !dbg !2080
  call void @lua_pushinteger(%struct.lua_State* %53, i64 %67), !dbg !2080
  br label %80, !dbg !2080

; <label>:68                                      ; preds = %47
  %69 = load %struct.MatchState** %1, align 4, !dbg !2081
  %70 = getelementptr inbounds %struct.MatchState* %69, i32 0, i32 3, !dbg !2081
  %71 = load %struct.lua_State** %70, align 4, !dbg !2081
  %72 = load i32* %2, align 4, !dbg !2081
  %73 = load %struct.MatchState** %1, align 4, !dbg !2081
  %74 = getelementptr inbounds %struct.MatchState* %73, i32 0, i32 6, !dbg !2081
  %75 = getelementptr inbounds [32 x %struct.anon]* %74, i32 0, i32 %72, !dbg !2081
  %76 = getelementptr inbounds %struct.anon* %75, i32 0, i32 0, !dbg !2081
  %77 = load i8** %76, align 4, !dbg !2081
  %78 = load i32* %l, align 4, !dbg !2081
  %79 = call i8* @lua_pushlstring(%struct.lua_State* %71, i8* %77, i32 %78), !dbg !2081
  br label %80

; <label>:80                                      ; preds = %68, %50
  br label %81

; <label>:81                                      ; preds = %80, %32
  ret void, !dbg !2082
}

; Function Attrs: nounwind
define internal i8* @start_capture(%struct.MatchState* %ms, i8* %s, i8* %p, i32 %what) #0 {
  %1 = alloca %struct.MatchState*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %res = alloca i8*, align 4
  %level = alloca i32, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.MatchState** %1}, metadata !2083), !dbg !2084
  store i8* %s, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !2085), !dbg !2086
  store i8* %p, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !2087), !dbg !2088
  store i32 %what, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !2089), !dbg !2090
  call void @llvm.dbg.declare(metadata !{i8** %res}, metadata !2091), !dbg !2092
  call void @llvm.dbg.declare(metadata !{i32* %level}, metadata !2093), !dbg !2094
  %5 = load %struct.MatchState** %1, align 4, !dbg !2095
  %6 = getelementptr inbounds %struct.MatchState* %5, i32 0, i32 5, !dbg !2095
  %7 = load i8* %6, align 1, !dbg !2095
  %8 = zext i8 %7 to i32, !dbg !2095
  store i32 %8, i32* %level, align 4, !dbg !2095
  %9 = load i32* %level, align 4, !dbg !2096
  %10 = icmp sge i32 %9, 32, !dbg !2096
  br i1 %10, label %11, label %16, !dbg !2096

; <label>:11                                      ; preds = %0
  %12 = load %struct.MatchState** %1, align 4, !dbg !2098
  %13 = getelementptr inbounds %struct.MatchState* %12, i32 0, i32 3, !dbg !2098
  %14 = load %struct.lua_State** %13, align 4, !dbg !2098
  %15 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %14, i8* getelementptr inbounds ([18 x i8]* @.str36, i32 0, i32 0)), !dbg !2098
  br label %16, !dbg !2098

; <label>:16                                      ; preds = %11, %0
  %17 = load i8** %2, align 4, !dbg !2100
  %18 = load i32* %level, align 4, !dbg !2100
  %19 = load %struct.MatchState** %1, align 4, !dbg !2100
  %20 = getelementptr inbounds %struct.MatchState* %19, i32 0, i32 6, !dbg !2100
  %21 = getelementptr inbounds [32 x %struct.anon]* %20, i32 0, i32 %18, !dbg !2100
  %22 = getelementptr inbounds %struct.anon* %21, i32 0, i32 0, !dbg !2100
  store i8* %17, i8** %22, align 4, !dbg !2100
  %23 = load i32* %4, align 4, !dbg !2101
  %24 = load i32* %level, align 4, !dbg !2101
  %25 = load %struct.MatchState** %1, align 4, !dbg !2101
  %26 = getelementptr inbounds %struct.MatchState* %25, i32 0, i32 6, !dbg !2101
  %27 = getelementptr inbounds [32 x %struct.anon]* %26, i32 0, i32 %24, !dbg !2101
  %28 = getelementptr inbounds %struct.anon* %27, i32 0, i32 1, !dbg !2101
  store i32 %23, i32* %28, align 4, !dbg !2101
  %29 = load i32* %level, align 4, !dbg !2102
  %30 = add nsw i32 %29, 1, !dbg !2102
  %31 = trunc i32 %30 to i8, !dbg !2102
  %32 = load %struct.MatchState** %1, align 4, !dbg !2102
  %33 = getelementptr inbounds %struct.MatchState* %32, i32 0, i32 5, !dbg !2102
  store i8 %31, i8* %33, align 1, !dbg !2102
  %34 = load %struct.MatchState** %1, align 4, !dbg !2103
  %35 = load i8** %2, align 4, !dbg !2103
  %36 = load i8** %3, align 4, !dbg !2103
  %37 = call i8* @match(%struct.MatchState* %34, i8* %35, i8* %36), !dbg !2103
  store i8* %37, i8** %res, align 4, !dbg !2103
  %38 = icmp eq i8* %37, null, !dbg !2103
  br i1 %38, label %39, label %44, !dbg !2103

; <label>:39                                      ; preds = %16
  %40 = load %struct.MatchState** %1, align 4, !dbg !2105
  %41 = getelementptr inbounds %struct.MatchState* %40, i32 0, i32 5, !dbg !2105
  %42 = load i8* %41, align 1, !dbg !2105
  %43 = add i8 %42, -1, !dbg !2105
  store i8 %43, i8* %41, align 1, !dbg !2105
  br label %44, !dbg !2105

; <label>:44                                      ; preds = %39, %16
  %45 = load i8** %res, align 4, !dbg !2106
  ret i8* %45, !dbg !2106
}

; Function Attrs: nounwind
define internal i8* @end_capture(%struct.MatchState* %ms, i8* %s, i8* %p) #0 {
  %1 = alloca %struct.MatchState*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %l = alloca i32, align 4
  %res = alloca i8*, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.MatchState** %1}, metadata !2107), !dbg !2108
  store i8* %s, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !2109), !dbg !2110
  store i8* %p, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !2111), !dbg !2112
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !2113), !dbg !2114
  %4 = load %struct.MatchState** %1, align 4, !dbg !2115
  %5 = call i32 @capture_to_close(%struct.MatchState* %4), !dbg !2115
  store i32 %5, i32* %l, align 4, !dbg !2115
  call void @llvm.dbg.declare(metadata !{i8** %res}, metadata !2116), !dbg !2117
  %6 = load i8** %2, align 4, !dbg !2118
  %7 = load i32* %l, align 4, !dbg !2118
  %8 = load %struct.MatchState** %1, align 4, !dbg !2118
  %9 = getelementptr inbounds %struct.MatchState* %8, i32 0, i32 6, !dbg !2118
  %10 = getelementptr inbounds [32 x %struct.anon]* %9, i32 0, i32 %7, !dbg !2118
  %11 = getelementptr inbounds %struct.anon* %10, i32 0, i32 0, !dbg !2118
  %12 = load i8** %11, align 4, !dbg !2118
  %13 = ptrtoint i8* %6 to i32, !dbg !2118
  %14 = ptrtoint i8* %12 to i32, !dbg !2118
  %15 = sub i32 %13, %14, !dbg !2118
  %16 = load i32* %l, align 4, !dbg !2118
  %17 = load %struct.MatchState** %1, align 4, !dbg !2118
  %18 = getelementptr inbounds %struct.MatchState* %17, i32 0, i32 6, !dbg !2118
  %19 = getelementptr inbounds [32 x %struct.anon]* %18, i32 0, i32 %16, !dbg !2118
  %20 = getelementptr inbounds %struct.anon* %19, i32 0, i32 1, !dbg !2118
  store i32 %15, i32* %20, align 4, !dbg !2118
  %21 = load %struct.MatchState** %1, align 4, !dbg !2119
  %22 = load i8** %2, align 4, !dbg !2119
  %23 = load i8** %3, align 4, !dbg !2119
  %24 = call i8* @match(%struct.MatchState* %21, i8* %22, i8* %23), !dbg !2119
  store i8* %24, i8** %res, align 4, !dbg !2119
  %25 = icmp eq i8* %24, null, !dbg !2119
  br i1 %25, label %26, label %32, !dbg !2119

; <label>:26                                      ; preds = %0
  %27 = load i32* %l, align 4, !dbg !2121
  %28 = load %struct.MatchState** %1, align 4, !dbg !2121
  %29 = getelementptr inbounds %struct.MatchState* %28, i32 0, i32 6, !dbg !2121
  %30 = getelementptr inbounds [32 x %struct.anon]* %29, i32 0, i32 %27, !dbg !2121
  %31 = getelementptr inbounds %struct.anon* %30, i32 0, i32 1, !dbg !2121
  store i32 -1, i32* %31, align 4, !dbg !2121
  br label %32, !dbg !2121

; <label>:32                                      ; preds = %26, %0
  %33 = load i8** %res, align 4, !dbg !2122
  ret i8* %33, !dbg !2122
}

; Function Attrs: nounwind
define internal i8* @matchbalance(%struct.MatchState* %ms, i8* %s, i8* %p) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.MatchState*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %b = alloca i32, align 4
  %e = alloca i32, align 4
  %cont = alloca i32, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.MatchState** %2}, metadata !2123), !dbg !2124
  store i8* %s, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !2125), !dbg !2126
  store i8* %p, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !2127), !dbg !2128
  %5 = load i8** %4, align 4, !dbg !2129
  %6 = load %struct.MatchState** %2, align 4, !dbg !2129
  %7 = getelementptr inbounds %struct.MatchState* %6, i32 0, i32 2, !dbg !2129
  %8 = load i8** %7, align 4, !dbg !2129
  %9 = getelementptr inbounds i8* %8, i32 -1, !dbg !2129
  %10 = icmp uge i8* %5, %9, !dbg !2129
  br i1 %10, label %11, label %16, !dbg !2129

; <label>:11                                      ; preds = %0
  %12 = load %struct.MatchState** %2, align 4, !dbg !2131
  %13 = getelementptr inbounds %struct.MatchState* %12, i32 0, i32 3, !dbg !2131
  %14 = load %struct.lua_State** %13, align 4, !dbg !2131
  %15 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %14, i8* getelementptr inbounds ([47 x i8]* @.str43, i32 0, i32 0)), !dbg !2131
  br label %16, !dbg !2131

; <label>:16                                      ; preds = %11, %0
  %17 = load i8** %3, align 4, !dbg !2132
  %18 = load i8* %17, align 1, !dbg !2132
  %19 = zext i8 %18 to i32, !dbg !2132
  %20 = load i8** %4, align 4, !dbg !2132
  %21 = load i8* %20, align 1, !dbg !2132
  %22 = zext i8 %21 to i32, !dbg !2132
  %23 = icmp ne i32 %19, %22, !dbg !2132
  br i1 %23, label %24, label %25, !dbg !2132

; <label>:24                                      ; preds = %16
  store i8* null, i8** %1, !dbg !2134
  br label %67, !dbg !2134

; <label>:25                                      ; preds = %16
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !2136), !dbg !2138
  %26 = load i8** %4, align 4, !dbg !2139
  %27 = load i8* %26, align 1, !dbg !2139
  %28 = zext i8 %27 to i32, !dbg !2139
  store i32 %28, i32* %b, align 4, !dbg !2139
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !2140), !dbg !2141
  %29 = load i8** %4, align 4, !dbg !2142
  %30 = getelementptr inbounds i8* %29, i32 1, !dbg !2142
  %31 = load i8* %30, align 1, !dbg !2142
  %32 = zext i8 %31 to i32, !dbg !2142
  store i32 %32, i32* %e, align 4, !dbg !2142
  call void @llvm.dbg.declare(metadata !{i32* %cont}, metadata !2143), !dbg !2144
  store i32 1, i32* %cont, align 4, !dbg !2145
  br label %33, !dbg !2146

; <label>:33                                      ; preds = %64, %25
  %34 = load i8** %3, align 4, !dbg !2147
  %35 = getelementptr inbounds i8* %34, i32 1, !dbg !2147
  store i8* %35, i8** %3, align 4, !dbg !2147
  %36 = load %struct.MatchState** %2, align 4, !dbg !2147
  %37 = getelementptr inbounds %struct.MatchState* %36, i32 0, i32 1, !dbg !2147
  %38 = load i8** %37, align 4, !dbg !2147
  %39 = icmp ult i8* %35, %38, !dbg !2147
  br i1 %39, label %40, label %65, !dbg !2147

; <label>:40                                      ; preds = %33
  %41 = load i8** %3, align 4, !dbg !2149
  %42 = load i8* %41, align 1, !dbg !2149
  %43 = zext i8 %42 to i32, !dbg !2149
  %44 = load i32* %e, align 4, !dbg !2149
  %45 = icmp eq i32 %43, %44, !dbg !2149
  br i1 %45, label %46, label %54, !dbg !2149

; <label>:46                                      ; preds = %40
  %47 = load i32* %cont, align 4, !dbg !2152
  %48 = add nsw i32 %47, -1, !dbg !2152
  store i32 %48, i32* %cont, align 4, !dbg !2152
  %49 = icmp eq i32 %48, 0, !dbg !2152
  br i1 %49, label %50, label %53, !dbg !2152

; <label>:50                                      ; preds = %46
  %51 = load i8** %3, align 4, !dbg !2155
  %52 = getelementptr inbounds i8* %51, i32 1, !dbg !2155
  store i8* %52, i8** %1, !dbg !2155
  br label %67, !dbg !2155

; <label>:53                                      ; preds = %46
  br label %64, !dbg !2157

; <label>:54                                      ; preds = %40
  %55 = load i8** %3, align 4, !dbg !2158
  %56 = load i8* %55, align 1, !dbg !2158
  %57 = zext i8 %56 to i32, !dbg !2158
  %58 = load i32* %b, align 4, !dbg !2158
  %59 = icmp eq i32 %57, %58, !dbg !2158
  br i1 %59, label %60, label %63, !dbg !2158

; <label>:60                                      ; preds = %54
  %61 = load i32* %cont, align 4, !dbg !2160
  %62 = add nsw i32 %61, 1, !dbg !2160
  store i32 %62, i32* %cont, align 4, !dbg !2160
  br label %63, !dbg !2160

; <label>:63                                      ; preds = %60, %54
  br label %64

; <label>:64                                      ; preds = %63, %53
  br label %33, !dbg !2162

; <label>:65                                      ; preds = %33
  br label %66

; <label>:66                                      ; preds = %65
  store i8* null, i8** %1, !dbg !2163
  br label %67, !dbg !2163

; <label>:67                                      ; preds = %66, %50, %24
  %68 = load i8** %1, !dbg !2164
  ret i8* %68, !dbg !2164
}

; Function Attrs: nounwind
define internal i8* @classend(%struct.MatchState* %ms, i8* %p) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.MatchState*, align 4
  %3 = alloca i8*, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.MatchState** %2}, metadata !2165), !dbg !2166
  store i8* %p, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !2167), !dbg !2168
  %4 = load i8** %3, align 4, !dbg !2169
  %5 = getelementptr inbounds i8* %4, i32 1, !dbg !2169
  store i8* %5, i8** %3, align 4, !dbg !2169
  %6 = load i8* %4, align 1, !dbg !2169
  %7 = zext i8 %6 to i32, !dbg !2169
  switch i32 %7, label %66 [
    i32 37, label %8
    i32 91, label %22
  ], !dbg !2169

; <label>:8                                       ; preds = %0
  %9 = load i8** %3, align 4, !dbg !2170
  %10 = load %struct.MatchState** %2, align 4, !dbg !2170
  %11 = getelementptr inbounds %struct.MatchState* %10, i32 0, i32 2, !dbg !2170
  %12 = load i8** %11, align 4, !dbg !2170
  %13 = icmp eq i8* %9, %12, !dbg !2170
  br i1 %13, label %14, label %19, !dbg !2170

; <label>:14                                      ; preds = %8
  %15 = load %struct.MatchState** %2, align 4, !dbg !2174
  %16 = getelementptr inbounds %struct.MatchState* %15, i32 0, i32 3, !dbg !2174
  %17 = load %struct.lua_State** %16, align 4, !dbg !2174
  %18 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %17, i8* getelementptr inbounds ([35 x i8]* @.str41, i32 0, i32 0)), !dbg !2174
  br label %19, !dbg !2174

; <label>:19                                      ; preds = %14, %8
  %20 = load i8** %3, align 4, !dbg !2175
  %21 = getelementptr inbounds i8* %20, i32 1, !dbg !2175
  store i8* %21, i8** %1, !dbg !2175
  br label %68, !dbg !2175

; <label>:22                                      ; preds = %0
  %23 = load i8** %3, align 4, !dbg !2176
  %24 = load i8* %23, align 1, !dbg !2176
  %25 = zext i8 %24 to i32, !dbg !2176
  %26 = icmp eq i32 %25, 94, !dbg !2176
  br i1 %26, label %27, label %30, !dbg !2176

; <label>:27                                      ; preds = %22
  %28 = load i8** %3, align 4, !dbg !2179
  %29 = getelementptr inbounds i8* %28, i32 1, !dbg !2179
  store i8* %29, i8** %3, align 4, !dbg !2179
  br label %30, !dbg !2179

; <label>:30                                      ; preds = %27, %22
  br label %31, !dbg !2181

; <label>:31                                      ; preds = %58, %30
  %32 = load i8** %3, align 4, !dbg !2182
  %33 = load %struct.MatchState** %2, align 4, !dbg !2182
  %34 = getelementptr inbounds %struct.MatchState* %33, i32 0, i32 2, !dbg !2182
  %35 = load i8** %34, align 4, !dbg !2182
  %36 = icmp eq i8* %32, %35, !dbg !2182
  br i1 %36, label %37, label %42, !dbg !2182

; <label>:37                                      ; preds = %31
  %38 = load %struct.MatchState** %2, align 4, !dbg !2185
  %39 = getelementptr inbounds %struct.MatchState* %38, i32 0, i32 3, !dbg !2185
  %40 = load %struct.lua_State** %39, align 4, !dbg !2185
  %41 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %40, i8* getelementptr inbounds ([32 x i8]* @.str42, i32 0, i32 0)), !dbg !2185
  br label %42, !dbg !2185

; <label>:42                                      ; preds = %37, %31
  %43 = load i8** %3, align 4, !dbg !2186
  %44 = getelementptr inbounds i8* %43, i32 1, !dbg !2186
  store i8* %44, i8** %3, align 4, !dbg !2186
  %45 = load i8* %43, align 1, !dbg !2186
  %46 = zext i8 %45 to i32, !dbg !2186
  %47 = icmp eq i32 %46, 37, !dbg !2186
  br i1 %47, label %48, label %57, !dbg !2186

; <label>:48                                      ; preds = %42
  %49 = load i8** %3, align 4, !dbg !2188
  %50 = load %struct.MatchState** %2, align 4, !dbg !2188
  %51 = getelementptr inbounds %struct.MatchState* %50, i32 0, i32 2, !dbg !2188
  %52 = load i8** %51, align 4, !dbg !2188
  %53 = icmp ult i8* %49, %52, !dbg !2188
  br i1 %53, label %54, label %57, !dbg !2188

; <label>:54                                      ; preds = %48
  %55 = load i8** %3, align 4, !dbg !2190
  %56 = getelementptr inbounds i8* %55, i32 1, !dbg !2190
  store i8* %56, i8** %3, align 4, !dbg !2190
  br label %57, !dbg !2190

; <label>:57                                      ; preds = %54, %48, %42
  br label %58, !dbg !2191

; <label>:58                                      ; preds = %57
  %59 = load i8** %3, align 4, !dbg !2192
  %60 = load i8* %59, align 1, !dbg !2192
  %61 = zext i8 %60 to i32, !dbg !2192
  %62 = icmp ne i32 %61, 93, !dbg !2192
  br i1 %62, label %31, label %63, !dbg !2192

; <label>:63                                      ; preds = %58
  %64 = load i8** %3, align 4, !dbg !2194
  %65 = getelementptr inbounds i8* %64, i32 1, !dbg !2194
  store i8* %65, i8** %1, !dbg !2194
  br label %68, !dbg !2194

; <label>:66                                      ; preds = %0
  %67 = load i8** %3, align 4, !dbg !2195
  store i8* %67, i8** %1, !dbg !2195
  br label %68, !dbg !2195

; <label>:68                                      ; preds = %66, %63, %19
  %69 = load i8** %1, !dbg !2197
  ret i8* %69, !dbg !2197
}

; Function Attrs: nounwind
define internal i32 @matchbracketclass(i32 %c, i8* %p, i8* %ec) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %sig = alloca i32, align 4
  store i32 %c, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2198), !dbg !2199
  store i8* %p, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !2200), !dbg !2201
  store i8* %ec, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !2202), !dbg !2203
  call void @llvm.dbg.declare(metadata !{i32* %sig}, metadata !2204), !dbg !2205
  store i32 1, i32* %sig, align 4, !dbg !2206
  %5 = load i8** %3, align 4, !dbg !2207
  %6 = getelementptr inbounds i8* %5, i32 1, !dbg !2207
  %7 = load i8* %6, align 1, !dbg !2207
  %8 = zext i8 %7 to i32, !dbg !2207
  %9 = icmp eq i32 %8, 94, !dbg !2207
  br i1 %9, label %10, label %13, !dbg !2207

; <label>:10                                      ; preds = %0
  store i32 0, i32* %sig, align 4, !dbg !2209
  %11 = load i8** %3, align 4, !dbg !2211
  %12 = getelementptr inbounds i8* %11, i32 1, !dbg !2211
  store i8* %12, i8** %3, align 4, !dbg !2211
  br label %13, !dbg !2212

; <label>:13                                      ; preds = %10, %0
  br label %14, !dbg !2213

; <label>:14                                      ; preds = %75, %13
  %15 = load i8** %3, align 4, !dbg !2214
  %16 = getelementptr inbounds i8* %15, i32 1, !dbg !2214
  store i8* %16, i8** %3, align 4, !dbg !2214
  %17 = load i8** %4, align 4, !dbg !2214
  %18 = icmp ult i8* %16, %17, !dbg !2214
  br i1 %18, label %19, label %76, !dbg !2214

; <label>:19                                      ; preds = %14
  %20 = load i8** %3, align 4, !dbg !2216
  %21 = load i8* %20, align 1, !dbg !2216
  %22 = zext i8 %21 to i32, !dbg !2216
  %23 = icmp eq i32 %22, 37, !dbg !2216
  br i1 %23, label %24, label %36, !dbg !2216

; <label>:24                                      ; preds = %19
  %25 = load i8** %3, align 4, !dbg !2219
  %26 = getelementptr inbounds i8* %25, i32 1, !dbg !2219
  store i8* %26, i8** %3, align 4, !dbg !2219
  %27 = load i32* %2, align 4, !dbg !2221
  %28 = load i8** %3, align 4, !dbg !2221
  %29 = load i8* %28, align 1, !dbg !2221
  %30 = zext i8 %29 to i32, !dbg !2221
  %31 = call i32 @match_class(i32 %27, i32 %30), !dbg !2221
  %32 = icmp ne i32 %31, 0, !dbg !2221
  br i1 %32, label %33, label %35, !dbg !2221

; <label>:33                                      ; preds = %24
  %34 = load i32* %sig, align 4, !dbg !2223
  store i32 %34, i32* %1, !dbg !2223
  br label %81, !dbg !2223

; <label>:35                                      ; preds = %24
  br label %75, !dbg !2224

; <label>:36                                      ; preds = %19
  %37 = load i8** %3, align 4, !dbg !2225
  %38 = getelementptr inbounds i8* %37, i32 1, !dbg !2225
  %39 = load i8* %38, align 1, !dbg !2225
  %40 = zext i8 %39 to i32, !dbg !2225
  %41 = icmp eq i32 %40, 45, !dbg !2225
  br i1 %41, label %42, label %65, !dbg !2225

; <label>:42                                      ; preds = %36
  %43 = load i8** %3, align 4, !dbg !2227
  %44 = getelementptr inbounds i8* %43, i32 2, !dbg !2227
  %45 = load i8** %4, align 4, !dbg !2227
  %46 = icmp ult i8* %44, %45, !dbg !2227
  br i1 %46, label %47, label %65, !dbg !2227

; <label>:47                                      ; preds = %42
  %48 = load i8** %3, align 4, !dbg !2229
  %49 = getelementptr inbounds i8* %48, i32 2, !dbg !2229
  store i8* %49, i8** %3, align 4, !dbg !2229
  %50 = load i8** %3, align 4, !dbg !2231
  %51 = getelementptr inbounds i8* %50, i32 -2, !dbg !2231
  %52 = load i8* %51, align 1, !dbg !2231
  %53 = zext i8 %52 to i32, !dbg !2231
  %54 = load i32* %2, align 4, !dbg !2231
  %55 = icmp sle i32 %53, %54, !dbg !2231
  br i1 %55, label %56, label %64, !dbg !2231

; <label>:56                                      ; preds = %47
  %57 = load i32* %2, align 4, !dbg !2233
  %58 = load i8** %3, align 4, !dbg !2233
  %59 = load i8* %58, align 1, !dbg !2233
  %60 = zext i8 %59 to i32, !dbg !2233
  %61 = icmp sle i32 %57, %60, !dbg !2233
  br i1 %61, label %62, label %64, !dbg !2233

; <label>:62                                      ; preds = %56
  %63 = load i32* %sig, align 4, !dbg !2235
  store i32 %63, i32* %1, !dbg !2235
  br label %81, !dbg !2235

; <label>:64                                      ; preds = %56, %47
  br label %74, !dbg !2236

; <label>:65                                      ; preds = %42, %36
  %66 = load i8** %3, align 4, !dbg !2237
  %67 = load i8* %66, align 1, !dbg !2237
  %68 = zext i8 %67 to i32, !dbg !2237
  %69 = load i32* %2, align 4, !dbg !2237
  %70 = icmp eq i32 %68, %69, !dbg !2237
  br i1 %70, label %71, label %73, !dbg !2237

; <label>:71                                      ; preds = %65
  %72 = load i32* %sig, align 4, !dbg !2239
  store i32 %72, i32* %1, !dbg !2239
  br label %81, !dbg !2239

; <label>:73                                      ; preds = %65
  br label %74

; <label>:74                                      ; preds = %73, %64
  br label %75

; <label>:75                                      ; preds = %74, %35
  br label %14, !dbg !2241

; <label>:76                                      ; preds = %14
  %77 = load i32* %sig, align 4, !dbg !2242
  %78 = icmp ne i32 %77, 0, !dbg !2242
  %79 = xor i1 %78, true, !dbg !2242
  %80 = zext i1 %79 to i32, !dbg !2242
  store i32 %80, i32* %1, !dbg !2242
  br label %81, !dbg !2242

; <label>:81                                      ; preds = %76, %71, %62, %33
  %82 = load i32* %1, !dbg !2243
  ret i32 %82, !dbg !2243
}

; Function Attrs: nounwind
define internal i8* @match_capture(%struct.MatchState* %ms, i8* %s, i32 %l) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.MatchState*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.MatchState** %2}, metadata !2244), !dbg !2245
  store i8* %s, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !2246), !dbg !2247
  store i32 %l, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !2248), !dbg !2249
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !2250), !dbg !2251
  %5 = load %struct.MatchState** %2, align 4, !dbg !2252
  %6 = load i32* %4, align 4, !dbg !2252
  %7 = call i32 @check_capture(%struct.MatchState* %5, i32 %6), !dbg !2252
  store i32 %7, i32* %4, align 4, !dbg !2252
  %8 = load i32* %4, align 4, !dbg !2253
  %9 = load %struct.MatchState** %2, align 4, !dbg !2253
  %10 = getelementptr inbounds %struct.MatchState* %9, i32 0, i32 6, !dbg !2253
  %11 = getelementptr inbounds [32 x %struct.anon]* %10, i32 0, i32 %8, !dbg !2253
  %12 = getelementptr inbounds %struct.anon* %11, i32 0, i32 1, !dbg !2253
  %13 = load i32* %12, align 4, !dbg !2253
  store i32 %13, i32* %len, align 4, !dbg !2253
  %14 = load %struct.MatchState** %2, align 4, !dbg !2254
  %15 = getelementptr inbounds %struct.MatchState* %14, i32 0, i32 1, !dbg !2254
  %16 = load i8** %15, align 4, !dbg !2254
  %17 = load i8** %3, align 4, !dbg !2254
  %18 = ptrtoint i8* %16 to i32, !dbg !2254
  %19 = ptrtoint i8* %17 to i32, !dbg !2254
  %20 = sub i32 %18, %19, !dbg !2254
  %21 = load i32* %len, align 4, !dbg !2254
  %22 = icmp uge i32 %20, %21, !dbg !2254
  br i1 %22, label %23, label %38, !dbg !2254

; <label>:23                                      ; preds = %0
  %24 = load i32* %4, align 4, !dbg !2256
  %25 = load %struct.MatchState** %2, align 4, !dbg !2256
  %26 = getelementptr inbounds %struct.MatchState* %25, i32 0, i32 6, !dbg !2256
  %27 = getelementptr inbounds [32 x %struct.anon]* %26, i32 0, i32 %24, !dbg !2256
  %28 = getelementptr inbounds %struct.anon* %27, i32 0, i32 0, !dbg !2256
  %29 = load i8** %28, align 4, !dbg !2256
  %30 = load i8** %3, align 4, !dbg !2256
  %31 = load i32* %len, align 4, !dbg !2256
  %32 = call i32 @memcmp(i8* %29, i8* %30, i32 %31) #6, !dbg !2256
  %33 = icmp eq i32 %32, 0, !dbg !2256
  br i1 %33, label %34, label %38, !dbg !2256

; <label>:34                                      ; preds = %23
  %35 = load i8** %3, align 4, !dbg !2257
  %36 = load i32* %len, align 4, !dbg !2257
  %37 = getelementptr inbounds i8* %35, i32 %36, !dbg !2257
  store i8* %37, i8** %1, !dbg !2257
  br label %39, !dbg !2257

; <label>:38                                      ; preds = %23, %0
  store i8* null, i8** %1, !dbg !2258
  br label %39, !dbg !2258

; <label>:39                                      ; preds = %38, %34
  %40 = load i8** %1, !dbg !2259
  ret i8* %40, !dbg !2259
}

; Function Attrs: nounwind
define internal i32 @singlematch(%struct.MatchState* %ms, i8* %s, i8* %p, i8* %ep) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.MatchState*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i8*, align 4
  %c = alloca i32, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.MatchState** %2}, metadata !2260), !dbg !2261
  store i8* %s, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !2262), !dbg !2263
  store i8* %p, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !2264), !dbg !2265
  store i8* %ep, i8** %5, align 4
  call void @llvm.dbg.declare(metadata !{i8** %5}, metadata !2266), !dbg !2267
  %6 = load i8** %3, align 4, !dbg !2268
  %7 = load %struct.MatchState** %2, align 4, !dbg !2268
  %8 = getelementptr inbounds %struct.MatchState* %7, i32 0, i32 1, !dbg !2268
  %9 = load i8** %8, align 4, !dbg !2268
  %10 = icmp uge i8* %6, %9, !dbg !2268
  br i1 %10, label %11, label %12, !dbg !2268

; <label>:11                                      ; preds = %0
  store i32 0, i32* %1, !dbg !2270
  br label %40, !dbg !2270

; <label>:12                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !2271), !dbg !2273
  %13 = load i8** %3, align 4, !dbg !2274
  %14 = load i8* %13, align 1, !dbg !2274
  %15 = zext i8 %14 to i32, !dbg !2274
  store i32 %15, i32* %c, align 4, !dbg !2274
  %16 = load i8** %4, align 4, !dbg !2275
  %17 = load i8* %16, align 1, !dbg !2275
  %18 = zext i8 %17 to i32, !dbg !2275
  switch i32 %18, label %33 [
    i32 46, label %19
    i32 37, label %20
    i32 91, label %27
  ], !dbg !2275

; <label>:19                                      ; preds = %12
  store i32 1, i32* %1, !dbg !2276
  br label %40, !dbg !2276

; <label>:20                                      ; preds = %12
  %21 = load i32* %c, align 4, !dbg !2278
  %22 = load i8** %4, align 4, !dbg !2278
  %23 = getelementptr inbounds i8* %22, i32 1, !dbg !2278
  %24 = load i8* %23, align 1, !dbg !2278
  %25 = zext i8 %24 to i32, !dbg !2278
  %26 = call i32 @match_class(i32 %21, i32 %25), !dbg !2278
  store i32 %26, i32* %1, !dbg !2278
  br label %40, !dbg !2278

; <label>:27                                      ; preds = %12
  %28 = load i32* %c, align 4, !dbg !2279
  %29 = load i8** %4, align 4, !dbg !2279
  %30 = load i8** %5, align 4, !dbg !2279
  %31 = getelementptr inbounds i8* %30, i32 -1, !dbg !2279
  %32 = call i32 @matchbracketclass(i32 %28, i8* %29, i8* %31), !dbg !2279
  store i32 %32, i32* %1, !dbg !2279
  br label %40, !dbg !2279

; <label>:33                                      ; preds = %12
  %34 = load i8** %4, align 4, !dbg !2280
  %35 = load i8* %34, align 1, !dbg !2280
  %36 = zext i8 %35 to i32, !dbg !2280
  %37 = load i32* %c, align 4, !dbg !2280
  %38 = icmp eq i32 %36, %37, !dbg !2280
  %39 = zext i1 %38 to i32, !dbg !2280
  store i32 %39, i32* %1, !dbg !2280
  br label %40, !dbg !2280

; <label>:40                                      ; preds = %33, %27, %20, %19, %11
  %41 = load i32* %1, !dbg !2281
  ret i32 %41, !dbg !2281
}

; Function Attrs: nounwind
define internal i8* @max_expand(%struct.MatchState* %ms, i8* %s, i8* %p, i8* %ep) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.MatchState*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i8*, align 4
  %i = alloca i32, align 4
  %res = alloca i8*, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.MatchState** %2}, metadata !2282), !dbg !2283
  store i8* %s, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !2284), !dbg !2285
  store i8* %p, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !2286), !dbg !2287
  store i8* %ep, i8** %5, align 4
  call void @llvm.dbg.declare(metadata !{i8** %5}, metadata !2288), !dbg !2289
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !2290), !dbg !2291
  store i32 0, i32* %i, align 4, !dbg !2292
  br label %6, !dbg !2293

; <label>:6                                       ; preds = %15, %0
  %7 = load %struct.MatchState** %2, align 4, !dbg !2294
  %8 = load i8** %3, align 4, !dbg !2294
  %9 = load i32* %i, align 4, !dbg !2294
  %10 = getelementptr inbounds i8* %8, i32 %9, !dbg !2294
  %11 = load i8** %4, align 4, !dbg !2294
  %12 = load i8** %5, align 4, !dbg !2294
  %13 = call i32 @singlematch(%struct.MatchState* %7, i8* %10, i8* %11, i8* %12), !dbg !2294
  %14 = icmp ne i32 %13, 0, !dbg !2294
  br i1 %14, label %15, label %18, !dbg !2294

; <label>:15                                      ; preds = %6
  %16 = load i32* %i, align 4, !dbg !2296
  %17 = add nsw i32 %16, 1, !dbg !2296
  store i32 %17, i32* %i, align 4, !dbg !2296
  br label %6, !dbg !2296

; <label>:18                                      ; preds = %6
  br label %19, !dbg !2297

; <label>:19                                      ; preds = %34, %18
  %20 = load i32* %i, align 4, !dbg !2298
  %21 = icmp sge i32 %20, 0, !dbg !2298
  br i1 %21, label %22, label %37, !dbg !2298

; <label>:22                                      ; preds = %19
  call void @llvm.dbg.declare(metadata !{i8** %res}, metadata !2300), !dbg !2302
  %23 = load %struct.MatchState** %2, align 4, !dbg !2303
  %24 = load i8** %3, align 4, !dbg !2303
  %25 = load i32* %i, align 4, !dbg !2303
  %26 = getelementptr inbounds i8* %24, i32 %25, !dbg !2303
  %27 = load i8** %5, align 4, !dbg !2303
  %28 = getelementptr inbounds i8* %27, i32 1, !dbg !2303
  %29 = call i8* @match(%struct.MatchState* %23, i8* %26, i8* %28), !dbg !2303
  store i8* %29, i8** %res, align 4, !dbg !2303
  %30 = load i8** %res, align 4, !dbg !2304
  %31 = icmp ne i8* %30, null, !dbg !2304
  br i1 %31, label %32, label %34, !dbg !2304

; <label>:32                                      ; preds = %22
  %33 = load i8** %res, align 4, !dbg !2306
  store i8* %33, i8** %1, !dbg !2306
  br label %38, !dbg !2306

; <label>:34                                      ; preds = %22
  %35 = load i32* %i, align 4, !dbg !2308
  %36 = add nsw i32 %35, -1, !dbg !2308
  store i32 %36, i32* %i, align 4, !dbg !2308
  br label %19, !dbg !2309

; <label>:37                                      ; preds = %19
  store i8* null, i8** %1, !dbg !2310
  br label %38, !dbg !2310

; <label>:38                                      ; preds = %37, %32
  %39 = load i8** %1, !dbg !2311
  ret i8* %39, !dbg !2311
}

; Function Attrs: nounwind
define internal i8* @min_expand(%struct.MatchState* %ms, i8* %s, i8* %p, i8* %ep) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.MatchState*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i8*, align 4
  %res = alloca i8*, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.MatchState** %2}, metadata !2312), !dbg !2313
  store i8* %s, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !2314), !dbg !2315
  store i8* %p, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !2316), !dbg !2317
  store i8* %ep, i8** %5, align 4
  call void @llvm.dbg.declare(metadata !{i8** %5}, metadata !2318), !dbg !2319
  br label %6, !dbg !2320

; <label>:6                                       ; preds = %28, %0
  call void @llvm.dbg.declare(metadata !{i8** %res}, metadata !2322), !dbg !2324
  %7 = load %struct.MatchState** %2, align 4, !dbg !2325
  %8 = load i8** %3, align 4, !dbg !2325
  %9 = load i8** %5, align 4, !dbg !2325
  %10 = getelementptr inbounds i8* %9, i32 1, !dbg !2325
  %11 = call i8* @match(%struct.MatchState* %7, i8* %8, i8* %10), !dbg !2325
  store i8* %11, i8** %res, align 4, !dbg !2325
  %12 = load i8** %res, align 4, !dbg !2326
  %13 = icmp ne i8* %12, null, !dbg !2326
  br i1 %13, label %14, label %16, !dbg !2326

; <label>:14                                      ; preds = %6
  %15 = load i8** %res, align 4, !dbg !2328
  store i8* %15, i8** %1, !dbg !2328
  br label %29, !dbg !2328

; <label>:16                                      ; preds = %6
  %17 = load %struct.MatchState** %2, align 4, !dbg !2329
  %18 = load i8** %3, align 4, !dbg !2329
  %19 = load i8** %4, align 4, !dbg !2329
  %20 = load i8** %5, align 4, !dbg !2329
  %21 = call i32 @singlematch(%struct.MatchState* %17, i8* %18, i8* %19, i8* %20), !dbg !2329
  %22 = icmp ne i32 %21, 0, !dbg !2329
  br i1 %22, label %23, label %26, !dbg !2329

; <label>:23                                      ; preds = %16
  %24 = load i8** %3, align 4, !dbg !2331
  %25 = getelementptr inbounds i8* %24, i32 1, !dbg !2331
  store i8* %25, i8** %3, align 4, !dbg !2331
  br label %27, !dbg !2331

; <label>:26                                      ; preds = %16
  store i8* null, i8** %1, !dbg !2332
  br label %29, !dbg !2332

; <label>:27                                      ; preds = %23
  br label %28

; <label>:28                                      ; preds = %27
  br label %6, !dbg !2333

; <label>:29                                      ; preds = %26, %14
  %30 = load i8** %1, !dbg !2334
  ret i8* %30, !dbg !2334
}

; Function Attrs: nounwind
define internal i32 @match_class(i32 %c, i32 %cl) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 %c, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2335), !dbg !2336
  store i32 %cl, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2337), !dbg !2338
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !2339), !dbg !2340
  %4 = load i32* %3, align 4, !dbg !2341
  %5 = call i32 @tolower(i32 %4) #4, !dbg !2341
  switch i32 %5, label %90 [
    i32 97, label %6
    i32 99, label %14
    i32 100, label %22
    i32 103, label %30
    i32 108, label %38
    i32 112, label %46
    i32 115, label %54
    i32 117, label %62
    i32 119, label %70
    i32 120, label %78
    i32 122, label %86
  ], !dbg !2341

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4, !dbg !2342
  %8 = call i16** @__ctype_b_loc() #1, !dbg !2344
  %9 = load i16** %8, align 4, !dbg !2344
  %10 = getelementptr inbounds i16* %9, i32 %7, !dbg !2344
  %11 = load i16* %10, align 2, !dbg !2344
  %12 = zext i16 %11 to i32, !dbg !2344
  %13 = and i32 %12, 1024, !dbg !2344
  store i32 %13, i32* %res, align 4, !dbg !2344
  br label %95, !dbg !2345

; <label>:14                                      ; preds = %0
  %15 = load i32* %2, align 4, !dbg !2346
  %16 = call i16** @__ctype_b_loc() #1, !dbg !2347
  %17 = load i16** %16, align 4, !dbg !2347
  %18 = getelementptr inbounds i16* %17, i32 %15, !dbg !2347
  %19 = load i16* %18, align 2, !dbg !2347
  %20 = zext i16 %19 to i32, !dbg !2347
  %21 = and i32 %20, 2, !dbg !2347
  store i32 %21, i32* %res, align 4, !dbg !2347
  br label %95, !dbg !2348

; <label>:22                                      ; preds = %0
  %23 = load i32* %2, align 4, !dbg !2349
  %24 = call i16** @__ctype_b_loc() #1, !dbg !2350
  %25 = load i16** %24, align 4, !dbg !2350
  %26 = getelementptr inbounds i16* %25, i32 %23, !dbg !2350
  %27 = load i16* %26, align 2, !dbg !2350
  %28 = zext i16 %27 to i32, !dbg !2350
  %29 = and i32 %28, 2048, !dbg !2350
  store i32 %29, i32* %res, align 4, !dbg !2350
  br label %95, !dbg !2351

; <label>:30                                      ; preds = %0
  %31 = load i32* %2, align 4, !dbg !2352
  %32 = call i16** @__ctype_b_loc() #1, !dbg !2353
  %33 = load i16** %32, align 4, !dbg !2353
  %34 = getelementptr inbounds i16* %33, i32 %31, !dbg !2353
  %35 = load i16* %34, align 2, !dbg !2353
  %36 = zext i16 %35 to i32, !dbg !2353
  %37 = and i32 %36, 32768, !dbg !2353
  store i32 %37, i32* %res, align 4, !dbg !2353
  br label %95, !dbg !2354

; <label>:38                                      ; preds = %0
  %39 = load i32* %2, align 4, !dbg !2355
  %40 = call i16** @__ctype_b_loc() #1, !dbg !2356
  %41 = load i16** %40, align 4, !dbg !2356
  %42 = getelementptr inbounds i16* %41, i32 %39, !dbg !2356
  %43 = load i16* %42, align 2, !dbg !2356
  %44 = zext i16 %43 to i32, !dbg !2356
  %45 = and i32 %44, 512, !dbg !2356
  store i32 %45, i32* %res, align 4, !dbg !2356
  br label %95, !dbg !2357

; <label>:46                                      ; preds = %0
  %47 = load i32* %2, align 4, !dbg !2358
  %48 = call i16** @__ctype_b_loc() #1, !dbg !2359
  %49 = load i16** %48, align 4, !dbg !2359
  %50 = getelementptr inbounds i16* %49, i32 %47, !dbg !2359
  %51 = load i16* %50, align 2, !dbg !2359
  %52 = zext i16 %51 to i32, !dbg !2359
  %53 = and i32 %52, 4, !dbg !2359
  store i32 %53, i32* %res, align 4, !dbg !2359
  br label %95, !dbg !2360

; <label>:54                                      ; preds = %0
  %55 = load i32* %2, align 4, !dbg !2361
  %56 = call i16** @__ctype_b_loc() #1, !dbg !2362
  %57 = load i16** %56, align 4, !dbg !2362
  %58 = getelementptr inbounds i16* %57, i32 %55, !dbg !2362
  %59 = load i16* %58, align 2, !dbg !2362
  %60 = zext i16 %59 to i32, !dbg !2362
  %61 = and i32 %60, 8192, !dbg !2362
  store i32 %61, i32* %res, align 4, !dbg !2362
  br label %95, !dbg !2363

; <label>:62                                      ; preds = %0
  %63 = load i32* %2, align 4, !dbg !2364
  %64 = call i16** @__ctype_b_loc() #1, !dbg !2365
  %65 = load i16** %64, align 4, !dbg !2365
  %66 = getelementptr inbounds i16* %65, i32 %63, !dbg !2365
  %67 = load i16* %66, align 2, !dbg !2365
  %68 = zext i16 %67 to i32, !dbg !2365
  %69 = and i32 %68, 256, !dbg !2365
  store i32 %69, i32* %res, align 4, !dbg !2365
  br label %95, !dbg !2366

; <label>:70                                      ; preds = %0
  %71 = load i32* %2, align 4, !dbg !2367
  %72 = call i16** @__ctype_b_loc() #1, !dbg !2368
  %73 = load i16** %72, align 4, !dbg !2368
  %74 = getelementptr inbounds i16* %73, i32 %71, !dbg !2368
  %75 = load i16* %74, align 2, !dbg !2368
  %76 = zext i16 %75 to i32, !dbg !2368
  %77 = and i32 %76, 8, !dbg !2368
  store i32 %77, i32* %res, align 4, !dbg !2368
  br label %95, !dbg !2369

; <label>:78                                      ; preds = %0
  %79 = load i32* %2, align 4, !dbg !2370
  %80 = call i16** @__ctype_b_loc() #1, !dbg !2371
  %81 = load i16** %80, align 4, !dbg !2371
  %82 = getelementptr inbounds i16* %81, i32 %79, !dbg !2371
  %83 = load i16* %82, align 2, !dbg !2371
  %84 = zext i16 %83 to i32, !dbg !2371
  %85 = and i32 %84, 4096, !dbg !2371
  store i32 %85, i32* %res, align 4, !dbg !2371
  br label %95, !dbg !2372

; <label>:86                                      ; preds = %0
  %87 = load i32* %2, align 4, !dbg !2373
  %88 = icmp eq i32 %87, 0, !dbg !2373
  %89 = zext i1 %88 to i32, !dbg !2373
  store i32 %89, i32* %res, align 4, !dbg !2373
  br label %95, !dbg !2374

; <label>:90                                      ; preds = %0
  %91 = load i32* %3, align 4, !dbg !2375
  %92 = load i32* %2, align 4, !dbg !2375
  %93 = icmp eq i32 %91, %92, !dbg !2375
  %94 = zext i1 %93 to i32, !dbg !2375
  store i32 %94, i32* %1, !dbg !2375
  br label %113, !dbg !2375

; <label>:95                                      ; preds = %86, %78, %70, %62, %54, %46, %38, %30, %22, %14, %6
  %96 = load i32* %3, align 4, !dbg !2376
  %97 = call i16** @__ctype_b_loc() #1, !dbg !2377
  %98 = load i16** %97, align 4, !dbg !2377
  %99 = getelementptr inbounds i16* %98, i32 %96, !dbg !2377
  %100 = load i16* %99, align 2, !dbg !2377
  %101 = zext i16 %100 to i32, !dbg !2377
  %102 = and i32 %101, 512, !dbg !2377
  %103 = icmp ne i32 %102, 0, !dbg !2377
  br i1 %103, label %104, label %106, !dbg !2377

; <label>:104                                     ; preds = %95
  %105 = load i32* %res, align 4, !dbg !2378
  br label %111, !dbg !2378

; <label>:106                                     ; preds = %95
  %107 = load i32* %res, align 4, !dbg !2380
  %108 = icmp ne i32 %107, 0, !dbg !2380
  %109 = xor i1 %108, true, !dbg !2380
  %110 = zext i1 %109 to i32, !dbg !2380
  br label %111, !dbg !2380

; <label>:111                                     ; preds = %106, %104
  %112 = phi i32 [ %105, %104 ], [ %110, %106 ], !dbg !2377
  store i32 %112, i32* %1, !dbg !2382
  br label %113, !dbg !2382

; <label>:113                                     ; preds = %111, %90
  %114 = load i32* %1, !dbg !2385
  ret i32 %114, !dbg !2385
}

; Function Attrs: nounwind
declare i32 @tolower(i32) #0

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
define internal i32 @check_capture(%struct.MatchState* %ms, i32 %l) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.MatchState*, align 4
  %3 = alloca i32, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.MatchState** %2}, metadata !2386), !dbg !2387
  store i32 %l, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2388), !dbg !2389
  %4 = load i32* %3, align 4, !dbg !2390
  %5 = sub nsw i32 %4, 49, !dbg !2390
  store i32 %5, i32* %3, align 4, !dbg !2390
  %6 = load i32* %3, align 4, !dbg !2391
  %7 = icmp slt i32 %6, 0, !dbg !2391
  br i1 %7, label %23, label %8, !dbg !2391

; <label>:8                                       ; preds = %0
  %9 = load i32* %3, align 4, !dbg !2393
  %10 = load %struct.MatchState** %2, align 4, !dbg !2393
  %11 = getelementptr inbounds %struct.MatchState* %10, i32 0, i32 5, !dbg !2393
  %12 = load i8* %11, align 1, !dbg !2393
  %13 = zext i8 %12 to i32, !dbg !2393
  %14 = icmp sge i32 %9, %13, !dbg !2393
  br i1 %14, label %23, label %15, !dbg !2393

; <label>:15                                      ; preds = %8
  %16 = load i32* %3, align 4, !dbg !2395
  %17 = load %struct.MatchState** %2, align 4, !dbg !2395
  %18 = getelementptr inbounds %struct.MatchState* %17, i32 0, i32 6, !dbg !2395
  %19 = getelementptr inbounds [32 x %struct.anon]* %18, i32 0, i32 %16, !dbg !2395
  %20 = getelementptr inbounds %struct.anon* %19, i32 0, i32 1, !dbg !2395
  %21 = load i32* %20, align 4, !dbg !2395
  %22 = icmp eq i32 %21, -1, !dbg !2395
  br i1 %22, label %23, label %30, !dbg !2395

; <label>:23                                      ; preds = %15, %8, %0
  %24 = load %struct.MatchState** %2, align 4, !dbg !2397
  %25 = getelementptr inbounds %struct.MatchState* %24, i32 0, i32 3, !dbg !2397
  %26 = load %struct.lua_State** %25, align 4, !dbg !2397
  %27 = load i32* %3, align 4, !dbg !2397
  %28 = add nsw i32 %27, 1, !dbg !2397
  %29 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %26, i8* getelementptr inbounds ([27 x i8]* @.str37, i32 0, i32 0), i32 %28), !dbg !2397
  store i32 %29, i32* %1, !dbg !2397
  br label %32, !dbg !2397

; <label>:30                                      ; preds = %15
  %31 = load i32* %3, align 4, !dbg !2398
  store i32 %31, i32* %1, !dbg !2398
  br label %32, !dbg !2398

; <label>:32                                      ; preds = %30, %23
  %33 = load i32* %1, !dbg !2399
  ret i32 %33, !dbg !2399
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i32) #3

; Function Attrs: nounwind
define internal i32 @capture_to_close(%struct.MatchState* %ms) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.MatchState*, align 4
  %level = alloca i32, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.MatchState** %2}, metadata !2400), !dbg !2401
  call void @llvm.dbg.declare(metadata !{i32* %level}, metadata !2402), !dbg !2403
  %3 = load %struct.MatchState** %2, align 4, !dbg !2404
  %4 = getelementptr inbounds %struct.MatchState* %3, i32 0, i32 5, !dbg !2404
  %5 = load i8* %4, align 1, !dbg !2404
  %6 = zext i8 %5 to i32, !dbg !2404
  store i32 %6, i32* %level, align 4, !dbg !2404
  %7 = load i32* %level, align 4, !dbg !2405
  %8 = add nsw i32 %7, -1, !dbg !2405
  store i32 %8, i32* %level, align 4, !dbg !2405
  br label %9, !dbg !2405

; <label>:9                                       ; preds = %23, %0
  %10 = load i32* %level, align 4, !dbg !2407
  %11 = icmp sge i32 %10, 0, !dbg !2407
  br i1 %11, label %12, label %26, !dbg !2407

; <label>:12                                      ; preds = %9
  %13 = load i32* %level, align 4, !dbg !2410
  %14 = load %struct.MatchState** %2, align 4, !dbg !2410
  %15 = getelementptr inbounds %struct.MatchState* %14, i32 0, i32 6, !dbg !2410
  %16 = getelementptr inbounds [32 x %struct.anon]* %15, i32 0, i32 %13, !dbg !2410
  %17 = getelementptr inbounds %struct.anon* %16, i32 0, i32 1, !dbg !2410
  %18 = load i32* %17, align 4, !dbg !2410
  %19 = icmp eq i32 %18, -1, !dbg !2410
  br i1 %19, label %20, label %22, !dbg !2410

; <label>:20                                      ; preds = %12
  %21 = load i32* %level, align 4, !dbg !2412
  store i32 %21, i32* %1, !dbg !2412
  br label %31, !dbg !2412

; <label>:22                                      ; preds = %12
  br label %23, !dbg !2414

; <label>:23                                      ; preds = %22
  %24 = load i32* %level, align 4, !dbg !2416
  %25 = add nsw i32 %24, -1, !dbg !2416
  store i32 %25, i32* %level, align 4, !dbg !2416
  br label %9, !dbg !2416

; <label>:26                                      ; preds = %9
  %27 = load %struct.MatchState** %2, align 4, !dbg !2417
  %28 = getelementptr inbounds %struct.MatchState* %27, i32 0, i32 3, !dbg !2417
  %29 = load %struct.lua_State** %28, align 4, !dbg !2417
  %30 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %29, i8* getelementptr inbounds ([24 x i8]* @.str44, i32 0, i32 0)), !dbg !2417
  store i32 %30, i32* %1, !dbg !2417
  br label %31, !dbg !2417

; <label>:31                                      ; preds = %26, %20
  %32 = load i32* %1, !dbg !2418
  ret i32 %32, !dbg !2418
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i32) #3

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8*) #3

declare i32 @lua_type(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal void @add_value(%struct.MatchState* %ms, %struct.luaL_Buffer* %b, i8* %s, i8* %e, i32 %tr) #0 {
  %1 = alloca %struct.MatchState*, align 4
  %2 = alloca %struct.luaL_Buffer*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %L = alloca %struct.lua_State*, align 4
  %n = alloca i32, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.MatchState** %1}, metadata !2419), !dbg !2420
  store %struct.luaL_Buffer* %b, %struct.luaL_Buffer** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer** %2}, metadata !2421), !dbg !2422
  store i8* %s, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !2423), !dbg !2424
  store i8* %e, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !2425), !dbg !2426
  store i32 %tr, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !2427), !dbg !2428
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L}, metadata !2429), !dbg !2430
  %6 = load %struct.MatchState** %1, align 4, !dbg !2431
  %7 = getelementptr inbounds %struct.MatchState* %6, i32 0, i32 3, !dbg !2431
  %8 = load %struct.lua_State** %7, align 4, !dbg !2431
  store %struct.lua_State* %8, %struct.lua_State** %L, align 4, !dbg !2431
  %9 = load i32* %5, align 4, !dbg !2432
  switch i32 %9, label %24 [
    i32 6, label %10
    i32 5, label %18
  ], !dbg !2432

; <label>:10                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !2433), !dbg !2436
  %11 = load %struct.lua_State** %L, align 4, !dbg !2437
  call void @lua_pushvalue(%struct.lua_State* %11, i32 3), !dbg !2437
  %12 = load %struct.MatchState** %1, align 4, !dbg !2438
  %13 = load i8** %3, align 4, !dbg !2438
  %14 = load i8** %4, align 4, !dbg !2438
  %15 = call i32 @push_captures(%struct.MatchState* %12, i8* %13, i8* %14), !dbg !2438
  store i32 %15, i32* %n, align 4, !dbg !2438
  %16 = load %struct.lua_State** %L, align 4, !dbg !2439
  %17 = load i32* %n, align 4, !dbg !2439
  call void @lua_callk(%struct.lua_State* %16, i32 %17, i32 1, i32 0, i32 (%struct.lua_State*, i32, i32)* null), !dbg !2439
  br label %29, !dbg !2440

; <label>:18                                      ; preds = %0
  %19 = load %struct.MatchState** %1, align 4, !dbg !2441
  %20 = load i8** %3, align 4, !dbg !2441
  %21 = load i8** %4, align 4, !dbg !2441
  call void @push_onecapture(%struct.MatchState* %19, i32 0, i8* %20, i8* %21), !dbg !2441
  %22 = load %struct.lua_State** %L, align 4, !dbg !2443
  %23 = call i32 @lua_gettable(%struct.lua_State* %22, i32 3), !dbg !2443
  br label %29, !dbg !2444

; <label>:24                                      ; preds = %0
  %25 = load %struct.MatchState** %1, align 4, !dbg !2445
  %26 = load %struct.luaL_Buffer** %2, align 4, !dbg !2445
  %27 = load i8** %3, align 4, !dbg !2445
  %28 = load i8** %4, align 4, !dbg !2445
  call void @add_s(%struct.MatchState* %25, %struct.luaL_Buffer* %26, i8* %27, i8* %28), !dbg !2445
  br label %57, !dbg !2447

; <label>:29                                      ; preds = %18, %10
  %30 = load %struct.lua_State** %L, align 4, !dbg !2448
  %31 = call i32 @lua_toboolean(%struct.lua_State* %30, i32 -1), !dbg !2448
  %32 = icmp ne i32 %31, 0, !dbg !2448
  br i1 %32, label %43, label %33, !dbg !2448

; <label>:33                                      ; preds = %29
  %34 = load %struct.lua_State** %L, align 4, !dbg !2450
  call void @lua_settop(%struct.lua_State* %34, i32 -2), !dbg !2450
  %35 = load %struct.lua_State** %L, align 4, !dbg !2452
  %36 = load i8** %3, align 4, !dbg !2452
  %37 = load i8** %4, align 4, !dbg !2452
  %38 = load i8** %3, align 4, !dbg !2452
  %39 = ptrtoint i8* %37 to i32, !dbg !2452
  %40 = ptrtoint i8* %38 to i32, !dbg !2452
  %41 = sub i32 %39, %40, !dbg !2452
  %42 = call i8* @lua_pushlstring(%struct.lua_State* %35, i8* %36, i32 %41), !dbg !2452
  br label %55, !dbg !2453

; <label>:43                                      ; preds = %29
  %44 = load %struct.lua_State** %L, align 4, !dbg !2454
  %45 = call i32 @lua_isstring(%struct.lua_State* %44, i32 -1), !dbg !2454
  %46 = icmp ne i32 %45, 0, !dbg !2454
  br i1 %46, label %54, label %47, !dbg !2454

; <label>:47                                      ; preds = %43
  %48 = load %struct.lua_State** %L, align 4, !dbg !2456
  %49 = load %struct.lua_State** %L, align 4, !dbg !2457
  %50 = load %struct.lua_State** %L, align 4, !dbg !2457
  %51 = call i32 @lua_type(%struct.lua_State* %50, i32 -1), !dbg !2457
  %52 = call i8* @lua_typename(%struct.lua_State* %49, i32 %51), !dbg !2457
  %53 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %48, i8* getelementptr inbounds ([33 x i8]* @.str47, i32 0, i32 0), i8* %52), !dbg !2456
  br label %54, !dbg !2456

; <label>:54                                      ; preds = %47, %43
  br label %55

; <label>:55                                      ; preds = %54, %33
  %56 = load %struct.luaL_Buffer** %2, align 4, !dbg !2458
  call void @luaL_addvalue(%struct.luaL_Buffer* %56), !dbg !2458
  br label %57, !dbg !2459

; <label>:57                                      ; preds = %55, %24
  ret void, !dbg !2460
}

declare void @lua_callk(%struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*) #2

declare i32 @lua_gettable(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal void @add_s(%struct.MatchState* %ms, %struct.luaL_Buffer* %b, i8* %s, i8* %e) #0 {
  %1 = alloca %struct.MatchState*, align 4
  %2 = alloca %struct.luaL_Buffer*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %l = alloca i32, align 4
  %i = alloca i32, align 4
  %L = alloca %struct.lua_State*, align 4
  %news = alloca i8*, align 4
  store %struct.MatchState* %ms, %struct.MatchState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.MatchState** %1}, metadata !2462), !dbg !2463
  store %struct.luaL_Buffer* %b, %struct.luaL_Buffer** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer** %2}, metadata !2464), !dbg !2465
  store i8* %s, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !2466), !dbg !2467
  store i8* %e, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !2468), !dbg !2469
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !2470), !dbg !2471
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !2472), !dbg !2473
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L}, metadata !2474), !dbg !2475
  %5 = load %struct.MatchState** %1, align 4, !dbg !2476
  %6 = getelementptr inbounds %struct.MatchState* %5, i32 0, i32 3, !dbg !2476
  %7 = load %struct.lua_State** %6, align 4, !dbg !2476
  store %struct.lua_State* %7, %struct.lua_State** %L, align 4, !dbg !2476
  call void @llvm.dbg.declare(metadata !{i8** %news}, metadata !2477), !dbg !2478
  %8 = load %struct.lua_State** %L, align 4, !dbg !2479
  %9 = call i8* @lua_tolstring(%struct.lua_State* %8, i32 3, i32* %l), !dbg !2479
  store i8* %9, i8** %news, align 4, !dbg !2479
  store i32 0, i32* %i, align 4, !dbg !2480
  br label %10, !dbg !2480

; <label>:10                                      ; preds = %133, %0
  %11 = load i32* %i, align 4, !dbg !2482
  %12 = load i32* %l, align 4, !dbg !2482
  %13 = icmp ult i32 %11, %12, !dbg !2482
  br i1 %13, label %14, label %136, !dbg !2482

; <label>:14                                      ; preds = %10
  %15 = load i32* %i, align 4, !dbg !2485
  %16 = load i8** %news, align 4, !dbg !2485
  %17 = getelementptr inbounds i8* %16, i32 %15, !dbg !2485
  %18 = load i8* %17, align 1, !dbg !2485
  %19 = zext i8 %18 to i32, !dbg !2485
  %20 = icmp ne i32 %19, 37, !dbg !2485
  br i1 %20, label %21, label %48, !dbg !2485

; <label>:21                                      ; preds = %14
  %22 = load %struct.luaL_Buffer** %2, align 4, !dbg !2488
  %23 = getelementptr inbounds %struct.luaL_Buffer* %22, i32 0, i32 2, !dbg !2488
  %24 = load i32* %23, align 4, !dbg !2488
  %25 = load %struct.luaL_Buffer** %2, align 4, !dbg !2488
  %26 = getelementptr inbounds %struct.luaL_Buffer* %25, i32 0, i32 1, !dbg !2488
  %27 = load i32* %26, align 4, !dbg !2488
  %28 = icmp ult i32 %24, %27, !dbg !2488
  br i1 %28, label %33, label %29, !dbg !2488

; <label>:29                                      ; preds = %21
  %30 = load %struct.luaL_Buffer** %2, align 4, !dbg !2489
  %31 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %30, i32 1), !dbg !2489
  %32 = icmp ne i8* %31, null, !dbg !2489
  br label %33, !dbg !2489

; <label>:33                                      ; preds = %29, %21
  %34 = phi i1 [ true, %21 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32, !dbg !2491
  %36 = load i32* %i, align 4, !dbg !2491
  %37 = load i8** %news, align 4, !dbg !2491
  %38 = getelementptr inbounds i8* %37, i32 %36, !dbg !2491
  %39 = load i8* %38, align 1, !dbg !2491
  %40 = load %struct.luaL_Buffer** %2, align 4, !dbg !2491
  %41 = getelementptr inbounds %struct.luaL_Buffer* %40, i32 0, i32 2, !dbg !2491
  %42 = load i32* %41, align 4, !dbg !2491
  %43 = add i32 %42, 1, !dbg !2491
  store i32 %43, i32* %41, align 4, !dbg !2491
  %44 = load %struct.luaL_Buffer** %2, align 4, !dbg !2491
  %45 = getelementptr inbounds %struct.luaL_Buffer* %44, i32 0, i32 0, !dbg !2491
  %46 = load i8** %45, align 4, !dbg !2491
  %47 = getelementptr inbounds i8* %46, i32 %42, !dbg !2491
  store i8 %39, i8* %47, align 1, !dbg !2491
  br label %132, !dbg !2491

; <label>:48                                      ; preds = %14
  %49 = load i32* %i, align 4, !dbg !2494
  %50 = add i32 %49, 1, !dbg !2494
  store i32 %50, i32* %i, align 4, !dbg !2494
  %51 = load i32* %i, align 4, !dbg !2496
  %52 = load i8** %news, align 4, !dbg !2496
  %53 = getelementptr inbounds i8* %52, i32 %51, !dbg !2496
  %54 = load i8* %53, align 1, !dbg !2496
  %55 = zext i8 %54 to i32, !dbg !2496
  %56 = call i16** @__ctype_b_loc() #1, !dbg !2498
  %57 = load i16** %56, align 4, !dbg !2498
  %58 = getelementptr inbounds i16* %57, i32 %55, !dbg !2498
  %59 = load i16* %58, align 2, !dbg !2498
  %60 = zext i16 %59 to i32, !dbg !2498
  %61 = and i32 %60, 2048, !dbg !2498
  %62 = icmp ne i32 %61, 0, !dbg !2498
  br i1 %62, label %100, label %63, !dbg !2498

; <label>:63                                      ; preds = %48
  %64 = load i32* %i, align 4, !dbg !2499
  %65 = load i8** %news, align 4, !dbg !2499
  %66 = getelementptr inbounds i8* %65, i32 %64, !dbg !2499
  %67 = load i8* %66, align 1, !dbg !2499
  %68 = zext i8 %67 to i32, !dbg !2499
  %69 = icmp ne i32 %68, 37, !dbg !2499
  br i1 %69, label %70, label %73, !dbg !2499

; <label>:70                                      ; preds = %63
  %71 = load %struct.lua_State** %L, align 4, !dbg !2502
  %72 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %71, i8* getelementptr inbounds ([42 x i8]* @.str48, i32 0, i32 0), i32 37), !dbg !2502
  br label %73, !dbg !2502

; <label>:73                                      ; preds = %70, %63
  %74 = load %struct.luaL_Buffer** %2, align 4, !dbg !2503
  %75 = getelementptr inbounds %struct.luaL_Buffer* %74, i32 0, i32 2, !dbg !2503
  %76 = load i32* %75, align 4, !dbg !2503
  %77 = load %struct.luaL_Buffer** %2, align 4, !dbg !2503
  %78 = getelementptr inbounds %struct.luaL_Buffer* %77, i32 0, i32 1, !dbg !2503
  %79 = load i32* %78, align 4, !dbg !2503
  %80 = icmp ult i32 %76, %79, !dbg !2503
  br i1 %80, label %85, label %81, !dbg !2503

; <label>:81                                      ; preds = %73
  %82 = load %struct.luaL_Buffer** %2, align 4, !dbg !2504
  %83 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %82, i32 1), !dbg !2504
  %84 = icmp ne i8* %83, null, !dbg !2504
  br label %85, !dbg !2504

; <label>:85                                      ; preds = %81, %73
  %86 = phi i1 [ true, %73 ], [ %84, %81 ]
  %87 = zext i1 %86 to i32, !dbg !2506
  %88 = load i32* %i, align 4, !dbg !2506
  %89 = load i8** %news, align 4, !dbg !2506
  %90 = getelementptr inbounds i8* %89, i32 %88, !dbg !2506
  %91 = load i8* %90, align 1, !dbg !2506
  %92 = load %struct.luaL_Buffer** %2, align 4, !dbg !2506
  %93 = getelementptr inbounds %struct.luaL_Buffer* %92, i32 0, i32 2, !dbg !2506
  %94 = load i32* %93, align 4, !dbg !2506
  %95 = add i32 %94, 1, !dbg !2506
  store i32 %95, i32* %93, align 4, !dbg !2506
  %96 = load %struct.luaL_Buffer** %2, align 4, !dbg !2506
  %97 = getelementptr inbounds %struct.luaL_Buffer* %96, i32 0, i32 0, !dbg !2506
  %98 = load i8** %97, align 4, !dbg !2506
  %99 = getelementptr inbounds i8* %98, i32 %94, !dbg !2506
  store i8 %91, i8* %99, align 1, !dbg !2506
  br label %131, !dbg !2509

; <label>:100                                     ; preds = %48
  %101 = load i32* %i, align 4, !dbg !2510
  %102 = load i8** %news, align 4, !dbg !2510
  %103 = getelementptr inbounds i8* %102, i32 %101, !dbg !2510
  %104 = load i8* %103, align 1, !dbg !2510
  %105 = zext i8 %104 to i32, !dbg !2510
  %106 = icmp eq i32 %105, 48, !dbg !2510
  br i1 %106, label %107, label %115, !dbg !2510

; <label>:107                                     ; preds = %100
  %108 = load %struct.luaL_Buffer** %2, align 4, !dbg !2512
  %109 = load i8** %3, align 4, !dbg !2512
  %110 = load i8** %4, align 4, !dbg !2512
  %111 = load i8** %3, align 4, !dbg !2512
  %112 = ptrtoint i8* %110 to i32, !dbg !2512
  %113 = ptrtoint i8* %111 to i32, !dbg !2512
  %114 = sub i32 %112, %113, !dbg !2512
  call void @luaL_addlstring(%struct.luaL_Buffer* %108, i8* %109, i32 %114), !dbg !2512
  br label %130, !dbg !2512

; <label>:115                                     ; preds = %100
  %116 = load %struct.MatchState** %1, align 4, !dbg !2513
  %117 = load i32* %i, align 4, !dbg !2513
  %118 = load i8** %news, align 4, !dbg !2513
  %119 = getelementptr inbounds i8* %118, i32 %117, !dbg !2513
  %120 = load i8* %119, align 1, !dbg !2513
  %121 = zext i8 %120 to i32, !dbg !2513
  %122 = sub nsw i32 %121, 49, !dbg !2513
  %123 = load i8** %3, align 4, !dbg !2513
  %124 = load i8** %4, align 4, !dbg !2513
  call void @push_onecapture(%struct.MatchState* %116, i32 %122, i8* %123, i8* %124), !dbg !2513
  %125 = load %struct.lua_State** %L, align 4, !dbg !2515
  %126 = call i8* @luaL_tolstring(%struct.lua_State* %125, i32 -1, i32* null), !dbg !2515
  %127 = load %struct.lua_State** %L, align 4, !dbg !2516
  call void @lua_rotate(%struct.lua_State* %127, i32 -2, i32 -1), !dbg !2516
  %128 = load %struct.lua_State** %L, align 4, !dbg !2516
  call void @lua_settop(%struct.lua_State* %128, i32 -2), !dbg !2516
  %129 = load %struct.luaL_Buffer** %2, align 4, !dbg !2517
  call void @luaL_addvalue(%struct.luaL_Buffer* %129), !dbg !2517
  br label %130

; <label>:130                                     ; preds = %115, %107
  br label %131

; <label>:131                                     ; preds = %130, %85
  br label %132

; <label>:132                                     ; preds = %131, %33
  br label %133, !dbg !2518

; <label>:133                                     ; preds = %132
  %134 = load i32* %i, align 4, !dbg !2519
  %135 = add i32 %134, 1, !dbg !2519
  store i32 %135, i32* %i, align 4, !dbg !2519
  br label %10, !dbg !2519

; <label>:136                                     ; preds = %10
  ret void, !dbg !2520
}

declare i32 @lua_isstring(%struct.lua_State*, i32) #2

declare i8* @lua_typename(%struct.lua_State*, i32) #2

declare void @luaL_addvalue(%struct.luaL_Buffer*) #2

declare i8* @lua_tolstring(%struct.lua_State*, i32, i32*) #2

declare i8* @luaL_tolstring(%struct.lua_State*, i32, i32*) #2

declare void @lua_rotate(%struct.lua_State*, i32, i32) #2

declare i8* @lua_newuserdata(%struct.lua_State*, i32) #2

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #2

; Function Attrs: nounwind
define internal i32 @gmatch_aux(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %gm = alloca %struct.GMatchState*, align 4
  %src = alloca i8*, align 4
  %e = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !2521), !dbg !2522
  call void @llvm.dbg.declare(metadata !{%struct.GMatchState** %gm}, metadata !2523), !dbg !2524
  %3 = load %struct.lua_State** %2, align 4, !dbg !2525
  %4 = call i8* @lua_touserdata(%struct.lua_State* %3, i32 -1001003), !dbg !2525
  %5 = bitcast i8* %4 to %struct.GMatchState*, !dbg !2525
  store %struct.GMatchState* %5, %struct.GMatchState** %gm, align 4, !dbg !2525
  call void @llvm.dbg.declare(metadata !{i8** %src}, metadata !2526), !dbg !2527
  %6 = load %struct.lua_State** %2, align 4, !dbg !2528
  %7 = load %struct.GMatchState** %gm, align 4, !dbg !2528
  %8 = getelementptr inbounds %struct.GMatchState* %7, i32 0, i32 3, !dbg !2528
  %9 = getelementptr inbounds %struct.MatchState* %8, i32 0, i32 3, !dbg !2528
  store %struct.lua_State* %6, %struct.lua_State** %9, align 4, !dbg !2528
  %10 = load %struct.GMatchState** %gm, align 4, !dbg !2529
  %11 = getelementptr inbounds %struct.GMatchState* %10, i32 0, i32 0, !dbg !2529
  %12 = load i8** %11, align 4, !dbg !2529
  store i8* %12, i8** %src, align 4, !dbg !2529
  br label %13, !dbg !2529

; <label>:13                                      ; preds = %49, %0
  %14 = load i8** %src, align 4, !dbg !2531
  %15 = load %struct.GMatchState** %gm, align 4, !dbg !2531
  %16 = getelementptr inbounds %struct.GMatchState* %15, i32 0, i32 3, !dbg !2531
  %17 = getelementptr inbounds %struct.MatchState* %16, i32 0, i32 1, !dbg !2531
  %18 = load i8** %17, align 4, !dbg !2531
  %19 = icmp ule i8* %14, %18, !dbg !2531
  br i1 %19, label %20, label %52, !dbg !2531

; <label>:20                                      ; preds = %13
  call void @llvm.dbg.declare(metadata !{i8** %e}, metadata !2534), !dbg !2536
  %21 = load %struct.GMatchState** %gm, align 4, !dbg !2537
  %22 = getelementptr inbounds %struct.GMatchState* %21, i32 0, i32 3, !dbg !2537
  call void @reprepstate(%struct.MatchState* %22), !dbg !2537
  %23 = load %struct.GMatchState** %gm, align 4, !dbg !2538
  %24 = getelementptr inbounds %struct.GMatchState* %23, i32 0, i32 3, !dbg !2538
  %25 = load i8** %src, align 4, !dbg !2538
  %26 = load %struct.GMatchState** %gm, align 4, !dbg !2538
  %27 = getelementptr inbounds %struct.GMatchState* %26, i32 0, i32 1, !dbg !2538
  %28 = load i8** %27, align 4, !dbg !2538
  %29 = call i8* @match(%struct.MatchState* %24, i8* %25, i8* %28), !dbg !2538
  store i8* %29, i8** %e, align 4, !dbg !2538
  %30 = icmp ne i8* %29, null, !dbg !2538
  br i1 %30, label %31, label %48, !dbg !2538

; <label>:31                                      ; preds = %20
  %32 = load i8** %e, align 4, !dbg !2540
  %33 = load %struct.GMatchState** %gm, align 4, !dbg !2540
  %34 = getelementptr inbounds %struct.GMatchState* %33, i32 0, i32 2, !dbg !2540
  %35 = load i8** %34, align 4, !dbg !2540
  %36 = icmp ne i8* %32, %35, !dbg !2540
  br i1 %36, label %37, label %48, !dbg !2540

; <label>:37                                      ; preds = %31
  %38 = load i8** %e, align 4, !dbg !2542
  %39 = load %struct.GMatchState** %gm, align 4, !dbg !2542
  %40 = getelementptr inbounds %struct.GMatchState* %39, i32 0, i32 2, !dbg !2542
  store i8* %38, i8** %40, align 4, !dbg !2542
  %41 = load %struct.GMatchState** %gm, align 4, !dbg !2542
  %42 = getelementptr inbounds %struct.GMatchState* %41, i32 0, i32 0, !dbg !2542
  store i8* %38, i8** %42, align 4, !dbg !2542
  %43 = load %struct.GMatchState** %gm, align 4, !dbg !2544
  %44 = getelementptr inbounds %struct.GMatchState* %43, i32 0, i32 3, !dbg !2544
  %45 = load i8** %src, align 4, !dbg !2544
  %46 = load i8** %e, align 4, !dbg !2544
  %47 = call i32 @push_captures(%struct.MatchState* %44, i8* %45, i8* %46), !dbg !2544
  store i32 %47, i32* %1, !dbg !2544
  br label %53, !dbg !2544

; <label>:48                                      ; preds = %31, %20
  br label %49, !dbg !2545

; <label>:49                                      ; preds = %48
  %50 = load i8** %src, align 4, !dbg !2546
  %51 = getelementptr inbounds i8* %50, i32 1, !dbg !2546
  store i8* %51, i8** %src, align 4, !dbg !2546
  br label %13, !dbg !2546

; <label>:52                                      ; preds = %13
  store i32 0, i32* %1, !dbg !2547
  br label %53, !dbg !2547

; <label>:53                                      ; preds = %52, %37
  %54 = load i32* %1, !dbg !2548
  ret i32 %54, !dbg !2548
}

declare i8* @lua_touserdata(%struct.lua_State*, i32) #2

declare i32 @lua_gettop(%struct.lua_State*) #2

; Function Attrs: nounwind
define internal i8* @scanformat(%struct.lua_State* %L, i8* %strfrmt, i8* %form) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %p = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2549), !dbg !2550
  store i8* %strfrmt, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !2551), !dbg !2552
  store i8* %form, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !2553), !dbg !2554
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !2555), !dbg !2556
  %4 = load i8** %2, align 4, !dbg !2557
  store i8* %4, i8** %p, align 4, !dbg !2557
  br label %5, !dbg !2558

; <label>:5                                       ; preds = %18, %0
  %6 = load i8** %p, align 4, !dbg !2559
  %7 = load i8* %6, align 1, !dbg !2559
  %8 = zext i8 %7 to i32, !dbg !2559
  %9 = icmp ne i32 %8, 0, !dbg !2559
  br i1 %9, label %10, label %16, !dbg !2559

; <label>:10                                      ; preds = %5
  %11 = load i8** %p, align 4, !dbg !2562
  %12 = load i8* %11, align 1, !dbg !2562
  %13 = zext i8 %12 to i32, !dbg !2562
  %14 = call i8* @strchr(i8* getelementptr inbounds ([6 x i8]* @.str58, i32 0, i32 0), i32 %13) #6, !dbg !2562
  %15 = icmp ne i8* %14, null, !dbg !2562
  br label %16

; <label>:16                                      ; preds = %10, %5
  %17 = phi i1 [ false, %5 ], [ %15, %10 ]
  br i1 %17, label %18, label %21, !dbg !2564

; <label>:18                                      ; preds = %16
  %19 = load i8** %p, align 4, !dbg !2566
  %20 = getelementptr inbounds i8* %19, i32 1, !dbg !2566
  store i8* %20, i8** %p, align 4, !dbg !2566
  br label %5, !dbg !2566

; <label>:21                                      ; preds = %16
  %22 = load i8** %p, align 4, !dbg !2568
  %23 = load i8** %2, align 4, !dbg !2568
  %24 = ptrtoint i8* %22 to i32, !dbg !2568
  %25 = ptrtoint i8* %23 to i32, !dbg !2568
  %26 = sub i32 %24, %25, !dbg !2568
  %27 = icmp uge i32 %26, 6, !dbg !2568
  br i1 %27, label %28, label %31, !dbg !2568

; <label>:28                                      ; preds = %21
  %29 = load %struct.lua_State** %1, align 4, !dbg !2570
  %30 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %29, i8* getelementptr inbounds ([32 x i8]* @.str59, i32 0, i32 0)), !dbg !2570
  br label %31, !dbg !2570

; <label>:31                                      ; preds = %28, %21
  %32 = load i8** %p, align 4, !dbg !2571
  %33 = load i8* %32, align 1, !dbg !2571
  %34 = zext i8 %33 to i32, !dbg !2571
  %35 = call i16** @__ctype_b_loc() #1, !dbg !2571
  %36 = load i16** %35, align 4, !dbg !2571
  %37 = getelementptr inbounds i16* %36, i32 %34, !dbg !2571
  %38 = load i16* %37, align 2, !dbg !2571
  %39 = zext i16 %38 to i32, !dbg !2571
  %40 = and i32 %39, 2048, !dbg !2571
  %41 = icmp ne i32 %40, 0, !dbg !2571
  br i1 %41, label %42, label %45, !dbg !2571

; <label>:42                                      ; preds = %31
  %43 = load i8** %p, align 4, !dbg !2573
  %44 = getelementptr inbounds i8* %43, i32 1, !dbg !2573
  store i8* %44, i8** %p, align 4, !dbg !2573
  br label %45, !dbg !2573

; <label>:45                                      ; preds = %42, %31
  %46 = load i8** %p, align 4, !dbg !2575
  %47 = load i8* %46, align 1, !dbg !2575
  %48 = zext i8 %47 to i32, !dbg !2575
  %49 = call i16** @__ctype_b_loc() #1, !dbg !2575
  %50 = load i16** %49, align 4, !dbg !2575
  %51 = getelementptr inbounds i16* %50, i32 %48, !dbg !2575
  %52 = load i16* %51, align 2, !dbg !2575
  %53 = zext i16 %52 to i32, !dbg !2575
  %54 = and i32 %53, 2048, !dbg !2575
  %55 = icmp ne i32 %54, 0, !dbg !2575
  br i1 %55, label %56, label %59, !dbg !2575

; <label>:56                                      ; preds = %45
  %57 = load i8** %p, align 4, !dbg !2577
  %58 = getelementptr inbounds i8* %57, i32 1, !dbg !2577
  store i8* %58, i8** %p, align 4, !dbg !2577
  br label %59, !dbg !2577

; <label>:59                                      ; preds = %56, %45
  %60 = load i8** %p, align 4, !dbg !2579
  %61 = load i8* %60, align 1, !dbg !2579
  %62 = zext i8 %61 to i32, !dbg !2579
  %63 = icmp eq i32 %62, 46, !dbg !2579
  br i1 %63, label %64, label %95, !dbg !2579

; <label>:64                                      ; preds = %59
  %65 = load i8** %p, align 4, !dbg !2581
  %66 = getelementptr inbounds i8* %65, i32 1, !dbg !2581
  store i8* %66, i8** %p, align 4, !dbg !2581
  %67 = load i8** %p, align 4, !dbg !2583
  %68 = load i8* %67, align 1, !dbg !2583
  %69 = zext i8 %68 to i32, !dbg !2583
  %70 = call i16** @__ctype_b_loc() #1, !dbg !2583
  %71 = load i16** %70, align 4, !dbg !2583
  %72 = getelementptr inbounds i16* %71, i32 %69, !dbg !2583
  %73 = load i16* %72, align 2, !dbg !2583
  %74 = zext i16 %73 to i32, !dbg !2583
  %75 = and i32 %74, 2048, !dbg !2583
  %76 = icmp ne i32 %75, 0, !dbg !2583
  br i1 %76, label %77, label %80, !dbg !2583

; <label>:77                                      ; preds = %64
  %78 = load i8** %p, align 4, !dbg !2585
  %79 = getelementptr inbounds i8* %78, i32 1, !dbg !2585
  store i8* %79, i8** %p, align 4, !dbg !2585
  br label %80, !dbg !2585

; <label>:80                                      ; preds = %77, %64
  %81 = load i8** %p, align 4, !dbg !2587
  %82 = load i8* %81, align 1, !dbg !2587
  %83 = zext i8 %82 to i32, !dbg !2587
  %84 = call i16** @__ctype_b_loc() #1, !dbg !2587
  %85 = load i16** %84, align 4, !dbg !2587
  %86 = getelementptr inbounds i16* %85, i32 %83, !dbg !2587
  %87 = load i16* %86, align 2, !dbg !2587
  %88 = zext i16 %87 to i32, !dbg !2587
  %89 = and i32 %88, 2048, !dbg !2587
  %90 = icmp ne i32 %89, 0, !dbg !2587
  br i1 %90, label %91, label %94, !dbg !2587

; <label>:91                                      ; preds = %80
  %92 = load i8** %p, align 4, !dbg !2589
  %93 = getelementptr inbounds i8* %92, i32 1, !dbg !2589
  store i8* %93, i8** %p, align 4, !dbg !2589
  br label %94, !dbg !2589

; <label>:94                                      ; preds = %91, %80
  br label %95, !dbg !2591

; <label>:95                                      ; preds = %94, %59
  %96 = load i8** %p, align 4, !dbg !2592
  %97 = load i8* %96, align 1, !dbg !2592
  %98 = zext i8 %97 to i32, !dbg !2592
  %99 = call i16** @__ctype_b_loc() #1, !dbg !2592
  %100 = load i16** %99, align 4, !dbg !2592
  %101 = getelementptr inbounds i16* %100, i32 %98, !dbg !2592
  %102 = load i16* %101, align 2, !dbg !2592
  %103 = zext i16 %102 to i32, !dbg !2592
  %104 = and i32 %103, 2048, !dbg !2592
  %105 = icmp ne i32 %104, 0, !dbg !2592
  br i1 %105, label %106, label %109, !dbg !2592

; <label>:106                                     ; preds = %95
  %107 = load %struct.lua_State** %1, align 4, !dbg !2594
  %108 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %107, i8* getelementptr inbounds ([45 x i8]* @.str60, i32 0, i32 0)), !dbg !2594
  br label %109, !dbg !2594

; <label>:109                                     ; preds = %106, %95
  %110 = load i8** %3, align 4, !dbg !2595
  %111 = getelementptr inbounds i8* %110, i32 1, !dbg !2595
  store i8* %111, i8** %3, align 4, !dbg !2595
  store i8 37, i8* %110, align 1, !dbg !2595
  %112 = load i8** %3, align 4, !dbg !2596
  %113 = load i8** %2, align 4, !dbg !2596
  %114 = load i8** %p, align 4, !dbg !2596
  %115 = load i8** %2, align 4, !dbg !2596
  %116 = ptrtoint i8* %114 to i32, !dbg !2596
  %117 = ptrtoint i8* %115 to i32, !dbg !2596
  %118 = sub i32 %116, %117, !dbg !2596
  %119 = add nsw i32 %118, 1, !dbg !2596
  %120 = mul i32 %119, 1, !dbg !2596
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %112, i8* %113, i32 %120, i32 1, i1 false), !dbg !2596
  %121 = load i8** %p, align 4, !dbg !2597
  %122 = load i8** %2, align 4, !dbg !2597
  %123 = ptrtoint i8* %121 to i32, !dbg !2597
  %124 = ptrtoint i8* %122 to i32, !dbg !2597
  %125 = sub i32 %123, %124, !dbg !2597
  %126 = add nsw i32 %125, 1, !dbg !2597
  %127 = load i8** %3, align 4, !dbg !2597
  %128 = getelementptr inbounds i8* %127, i32 %126, !dbg !2597
  store i8* %128, i8** %3, align 4, !dbg !2597
  %129 = load i8** %3, align 4, !dbg !2598
  store i8 0, i8* %129, align 1, !dbg !2598
  %130 = load i8** %p, align 4, !dbg !2599
  ret i8* %130, !dbg !2599
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i32, i8*, ...) #0

; Function Attrs: nounwind
define internal void @addlenmod(i8* %form, i8* %lenmod) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %l = alloca i32, align 4
  %lm = alloca i32, align 4
  %spec = alloca i8, align 1
  store i8* %form, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !2600), !dbg !2601
  store i8* %lenmod, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !2602), !dbg !2603
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !2604), !dbg !2605
  %3 = load i8** %1, align 4, !dbg !2606
  %4 = call i32 @strlen(i8* %3) #6, !dbg !2606
  store i32 %4, i32* %l, align 4, !dbg !2606
  call void @llvm.dbg.declare(metadata !{i32* %lm}, metadata !2607), !dbg !2608
  %5 = load i8** %2, align 4, !dbg !2609
  %6 = call i32 @strlen(i8* %5) #6, !dbg !2609
  store i32 %6, i32* %lm, align 4, !dbg !2609
  call void @llvm.dbg.declare(metadata !{i8* %spec}, metadata !2610), !dbg !2611
  %7 = load i32* %l, align 4, !dbg !2612
  %8 = sub i32 %7, 1, !dbg !2612
  %9 = load i8** %1, align 4, !dbg !2612
  %10 = getelementptr inbounds i8* %9, i32 %8, !dbg !2612
  %11 = load i8* %10, align 1, !dbg !2612
  store i8 %11, i8* %spec, align 1, !dbg !2612
  %12 = load i8** %1, align 4, !dbg !2613
  %13 = load i32* %l, align 4, !dbg !2613
  %14 = getelementptr inbounds i8* %12, i32 %13, !dbg !2613
  %15 = getelementptr inbounds i8* %14, i32 -1, !dbg !2613
  %16 = load i8** %2, align 4, !dbg !2613
  %17 = call i8* @strcpy(i8* %15, i8* %16) #4, !dbg !2613
  %18 = load i8* %spec, align 1, !dbg !2614
  %19 = load i32* %l, align 4, !dbg !2614
  %20 = load i32* %lm, align 4, !dbg !2614
  %21 = add i32 %19, %20, !dbg !2614
  %22 = sub i32 %21, 1, !dbg !2614
  %23 = load i8** %1, align 4, !dbg !2614
  %24 = getelementptr inbounds i8* %23, i32 %22, !dbg !2614
  store i8 %18, i8* %24, align 1, !dbg !2614
  %25 = load i32* %l, align 4, !dbg !2615
  %26 = load i32* %lm, align 4, !dbg !2615
  %27 = add i32 %25, %26, !dbg !2615
  %28 = load i8** %1, align 4, !dbg !2615
  %29 = getelementptr inbounds i8* %28, i32 %27, !dbg !2615
  store i8 0, i8* %29, align 1, !dbg !2615
  ret void, !dbg !2616
}

; Function Attrs: nounwind
define internal void @addliteral(%struct.lua_State* %L, %struct.luaL_Buffer* %b, i32 %arg) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.luaL_Buffer*, align 4
  %3 = alloca i32, align 4
  %len = alloca i32, align 4
  %s = alloca i8*, align 4
  %buff = alloca i8*, align 4
  %nb = alloca i32, align 4
  %n = alloca double, align 8
  %n1 = alloca i64, align 8
  %format = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2617), !dbg !2618
  store %struct.luaL_Buffer* %b, %struct.luaL_Buffer** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer** %2}, metadata !2619), !dbg !2620
  store i32 %arg, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2621), !dbg !2622
  %4 = load %struct.lua_State** %1, align 4, !dbg !2623
  %5 = load i32* %3, align 4, !dbg !2623
  %6 = call i32 @lua_type(%struct.lua_State* %4, i32 %5), !dbg !2623
  switch i32 %6, label %53 [
    i32 4, label %7
    i32 3, label %14
    i32 0, label %48
    i32 1, label %48
  ], !dbg !2623

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !2624), !dbg !2627
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !2628), !dbg !2629
  %8 = load %struct.lua_State** %1, align 4, !dbg !2630
  %9 = load i32* %3, align 4, !dbg !2630
  %10 = call i8* @lua_tolstring(%struct.lua_State* %8, i32 %9, i32* %len), !dbg !2630
  store i8* %10, i8** %s, align 4, !dbg !2630
  %11 = load %struct.luaL_Buffer** %2, align 4, !dbg !2631
  %12 = load i8** %s, align 4, !dbg !2631
  %13 = load i32* %len, align 4, !dbg !2631
  call void @addquoted(%struct.luaL_Buffer* %11, i8* %12, i32 %13), !dbg !2631
  br label %57, !dbg !2632

; <label>:14                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i8** %buff}, metadata !2633), !dbg !2635
  %15 = load %struct.luaL_Buffer** %2, align 4, !dbg !2636
  %16 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %15, i32 428), !dbg !2636
  store i8* %16, i8** %buff, align 4, !dbg !2636
  call void @llvm.dbg.declare(metadata !{i32* %nb}, metadata !2637), !dbg !2638
  %17 = load %struct.lua_State** %1, align 4, !dbg !2639
  %18 = load i32* %3, align 4, !dbg !2639
  %19 = call i32 @lua_isinteger(%struct.lua_State* %17, i32 %18), !dbg !2639
  %20 = icmp ne i32 %19, 0, !dbg !2639
  br i1 %20, label %31, label %21, !dbg !2639

; <label>:21                                      ; preds = %14
  call void @llvm.dbg.declare(metadata !{double* %n}, metadata !2641), !dbg !2643
  %22 = load %struct.lua_State** %1, align 4, !dbg !2644
  %23 = load i32* %3, align 4, !dbg !2644
  %24 = call double @lua_tonumberx(%struct.lua_State* %22, i32 %23, i32* null), !dbg !2644
  store double %24, double* %n, align 8, !dbg !2644
  %25 = load %struct.lua_State** %1, align 4, !dbg !2645
  %26 = load i8** %buff, align 4, !dbg !2646
  %27 = load double* %n, align 8, !dbg !2646
  %28 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %26, i32 428, i8* getelementptr inbounds ([3 x i8]* @.str52, i32 0, i32 0), double %27) #4, !dbg !2646
  store i32 %28, i32* %nb, align 4, !dbg !2646
  %29 = load i8** %buff, align 4, !dbg !2647
  %30 = load i32* %nb, align 4, !dbg !2647
  call void @checkdp(i8* %29, i32 %30), !dbg !2647
  br label %42, !dbg !2648

; <label>:31                                      ; preds = %14
  call void @llvm.dbg.declare(metadata !{i64* %n1}, metadata !2649), !dbg !2651
  %32 = load %struct.lua_State** %1, align 4, !dbg !2652
  %33 = load i32* %3, align 4, !dbg !2652
  %34 = call i64 @lua_tointegerx(%struct.lua_State* %32, i32 %33, i32* null), !dbg !2652
  store i64 %34, i64* %n1, align 8, !dbg !2652
  call void @llvm.dbg.declare(metadata !{i8** %format}, metadata !2653), !dbg !2654
  %35 = load i64* %n1, align 8, !dbg !2655
  %36 = icmp eq i64 %35, -9223372036854775808, !dbg !2655
  %37 = select i1 %36, i8* getelementptr inbounds ([7 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str54, i32 0, i32 0), !dbg !2655
  store i8* %37, i8** %format, align 4, !dbg !2655
  %38 = load i8** %buff, align 4, !dbg !2656
  %39 = load i8** %format, align 4, !dbg !2656
  %40 = load i64* %n1, align 8, !dbg !2656
  %41 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %38, i32 428, i8* %39, i64 %40) #4, !dbg !2656
  store i32 %41, i32* %nb, align 4, !dbg !2656
  br label %42

; <label>:42                                      ; preds = %31, %21
  %43 = load i32* %nb, align 4, !dbg !2657
  %44 = load %struct.luaL_Buffer** %2, align 4, !dbg !2657
  %45 = getelementptr inbounds %struct.luaL_Buffer* %44, i32 0, i32 2, !dbg !2657
  %46 = load i32* %45, align 4, !dbg !2657
  %47 = add i32 %46, %43, !dbg !2657
  store i32 %47, i32* %45, align 4, !dbg !2657
  br label %57, !dbg !2658

; <label>:48                                      ; preds = %0, %0
  %49 = load %struct.lua_State** %1, align 4, !dbg !2659
  %50 = load i32* %3, align 4, !dbg !2659
  %51 = call i8* @luaL_tolstring(%struct.lua_State* %49, i32 %50, i32* null), !dbg !2659
  %52 = load %struct.luaL_Buffer** %2, align 4, !dbg !2661
  call void @luaL_addvalue(%struct.luaL_Buffer* %52), !dbg !2661
  br label %57, !dbg !2662

; <label>:53                                      ; preds = %0
  %54 = load %struct.lua_State** %1, align 4, !dbg !2663
  %55 = load i32* %3, align 4, !dbg !2663
  %56 = call i32 @luaL_argerror(%struct.lua_State* %54, i32 %55, i8* getelementptr inbounds ([26 x i8]* @.str55, i32 0, i32 0)), !dbg !2663
  br label %57, !dbg !2665

; <label>:57                                      ; preds = %53, %48, %42, %7
  ret void, !dbg !2666
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind
define internal void @addquoted(%struct.luaL_Buffer* %b, i8* %s, i32 %len) #0 {
  %1 = alloca %struct.luaL_Buffer*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %buff = alloca [10 x i8], align 1
  store %struct.luaL_Buffer* %b, %struct.luaL_Buffer** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer** %1}, metadata !2667), !dbg !2668
  store i8* %s, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !2669), !dbg !2670
  store i32 %len, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2671), !dbg !2672
  %4 = load %struct.luaL_Buffer** %1, align 4, !dbg !2673
  %5 = getelementptr inbounds %struct.luaL_Buffer* %4, i32 0, i32 2, !dbg !2673
  %6 = load i32* %5, align 4, !dbg !2673
  %7 = load %struct.luaL_Buffer** %1, align 4, !dbg !2673
  %8 = getelementptr inbounds %struct.luaL_Buffer* %7, i32 0, i32 1, !dbg !2673
  %9 = load i32* %8, align 4, !dbg !2673
  %10 = icmp ult i32 %6, %9, !dbg !2673
  br i1 %10, label %15, label %11, !dbg !2673

; <label>:11                                      ; preds = %0
  %12 = load %struct.luaL_Buffer** %1, align 4, !dbg !2674
  %13 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %12, i32 1), !dbg !2674
  %14 = icmp ne i8* %13, null, !dbg !2674
  br label %15, !dbg !2674

; <label>:15                                      ; preds = %11, %0
  %16 = phi i1 [ true, %0 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32, !dbg !2676
  %18 = load %struct.luaL_Buffer** %1, align 4, !dbg !2676
  %19 = getelementptr inbounds %struct.luaL_Buffer* %18, i32 0, i32 2, !dbg !2676
  %20 = load i32* %19, align 4, !dbg !2676
  %21 = add i32 %20, 1, !dbg !2676
  store i32 %21, i32* %19, align 4, !dbg !2676
  %22 = load %struct.luaL_Buffer** %1, align 4, !dbg !2676
  %23 = getelementptr inbounds %struct.luaL_Buffer* %22, i32 0, i32 0, !dbg !2676
  %24 = load i8** %23, align 4, !dbg !2676
  %25 = getelementptr inbounds i8* %24, i32 %20, !dbg !2676
  store i8 34, i8* %25, align 1, !dbg !2676
  br label %26, !dbg !2679

; <label>:26                                      ; preds = %156, %15
  %27 = load i32* %3, align 4, !dbg !2680
  %28 = add i32 %27, -1, !dbg !2680
  store i32 %28, i32* %3, align 4, !dbg !2680
  %29 = icmp ne i32 %27, 0, !dbg !2680
  br i1 %29, label %30, label %159, !dbg !2680

; <label>:30                                      ; preds = %26
  %31 = load i8** %2, align 4, !dbg !2682
  %32 = load i8* %31, align 1, !dbg !2682
  %33 = zext i8 %32 to i32, !dbg !2682
  %34 = icmp eq i32 %33, 34, !dbg !2682
  br i1 %34, label %45, label %35, !dbg !2682

; <label>:35                                      ; preds = %30
  %36 = load i8** %2, align 4, !dbg !2685
  %37 = load i8* %36, align 1, !dbg !2685
  %38 = zext i8 %37 to i32, !dbg !2685
  %39 = icmp eq i32 %38, 92, !dbg !2685
  br i1 %39, label %45, label %40, !dbg !2685

; <label>:40                                      ; preds = %35
  %41 = load i8** %2, align 4, !dbg !2687
  %42 = load i8* %41, align 1, !dbg !2687
  %43 = zext i8 %42 to i32, !dbg !2687
  %44 = icmp eq i32 %43, 10, !dbg !2687
  br i1 %44, label %45, label %92, !dbg !2687

; <label>:45                                      ; preds = %40, %35, %30
  %46 = load %struct.luaL_Buffer** %1, align 4, !dbg !2689
  %47 = getelementptr inbounds %struct.luaL_Buffer* %46, i32 0, i32 2, !dbg !2689
  %48 = load i32* %47, align 4, !dbg !2689
  %49 = load %struct.luaL_Buffer** %1, align 4, !dbg !2689
  %50 = getelementptr inbounds %struct.luaL_Buffer* %49, i32 0, i32 1, !dbg !2689
  %51 = load i32* %50, align 4, !dbg !2689
  %52 = icmp ult i32 %48, %51, !dbg !2689
  br i1 %52, label %57, label %53, !dbg !2689

; <label>:53                                      ; preds = %45
  %54 = load %struct.luaL_Buffer** %1, align 4, !dbg !2691
  %55 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %54, i32 1), !dbg !2691
  %56 = icmp ne i8* %55, null, !dbg !2691
  br label %57, !dbg !2691

; <label>:57                                      ; preds = %53, %45
  %58 = phi i1 [ true, %45 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32, !dbg !2693
  %60 = load %struct.luaL_Buffer** %1, align 4, !dbg !2693
  %61 = getelementptr inbounds %struct.luaL_Buffer* %60, i32 0, i32 2, !dbg !2693
  %62 = load i32* %61, align 4, !dbg !2693
  %63 = add i32 %62, 1, !dbg !2693
  store i32 %63, i32* %61, align 4, !dbg !2693
  %64 = load %struct.luaL_Buffer** %1, align 4, !dbg !2693
  %65 = getelementptr inbounds %struct.luaL_Buffer* %64, i32 0, i32 0, !dbg !2693
  %66 = load i8** %65, align 4, !dbg !2693
  %67 = getelementptr inbounds i8* %66, i32 %62, !dbg !2693
  store i8 92, i8* %67, align 1, !dbg !2693
  %68 = load %struct.luaL_Buffer** %1, align 4, !dbg !2696
  %69 = getelementptr inbounds %struct.luaL_Buffer* %68, i32 0, i32 2, !dbg !2696
  %70 = load i32* %69, align 4, !dbg !2696
  %71 = load %struct.luaL_Buffer** %1, align 4, !dbg !2696
  %72 = getelementptr inbounds %struct.luaL_Buffer* %71, i32 0, i32 1, !dbg !2696
  %73 = load i32* %72, align 4, !dbg !2696
  %74 = icmp ult i32 %70, %73, !dbg !2696
  br i1 %74, label %79, label %75, !dbg !2696

; <label>:75                                      ; preds = %57
  %76 = load %struct.luaL_Buffer** %1, align 4, !dbg !2697
  %77 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %76, i32 1), !dbg !2697
  %78 = icmp ne i8* %77, null, !dbg !2697
  br label %79, !dbg !2697

; <label>:79                                      ; preds = %75, %57
  %80 = phi i1 [ true, %57 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32, !dbg !2699
  %82 = load i8** %2, align 4, !dbg !2699
  %83 = load i8* %82, align 1, !dbg !2699
  %84 = load %struct.luaL_Buffer** %1, align 4, !dbg !2699
  %85 = getelementptr inbounds %struct.luaL_Buffer* %84, i32 0, i32 2, !dbg !2699
  %86 = load i32* %85, align 4, !dbg !2699
  %87 = add i32 %86, 1, !dbg !2699
  store i32 %87, i32* %85, align 4, !dbg !2699
  %88 = load %struct.luaL_Buffer** %1, align 4, !dbg !2699
  %89 = getelementptr inbounds %struct.luaL_Buffer* %88, i32 0, i32 0, !dbg !2699
  %90 = load i8** %89, align 4, !dbg !2699
  %91 = getelementptr inbounds i8* %90, i32 %86, !dbg !2699
  store i8 %83, i8* %91, align 1, !dbg !2699
  br label %156, !dbg !2702

; <label>:92                                      ; preds = %40
  %93 = load i8** %2, align 4, !dbg !2703
  %94 = load i8* %93, align 1, !dbg !2703
  %95 = zext i8 %94 to i32, !dbg !2703
  %96 = call i16** @__ctype_b_loc() #1, !dbg !2703
  %97 = load i16** %96, align 4, !dbg !2703
  %98 = getelementptr inbounds i16* %97, i32 %95, !dbg !2703
  %99 = load i16* %98, align 2, !dbg !2703
  %100 = zext i16 %99 to i32, !dbg !2703
  %101 = and i32 %100, 2, !dbg !2703
  %102 = icmp ne i32 %101, 0, !dbg !2703
  br i1 %102, label %103, label %130, !dbg !2703

; <label>:103                                     ; preds = %92
  call void @llvm.dbg.declare(metadata !{[10 x i8]* %buff}, metadata !2705), !dbg !2710
  %104 = load i8** %2, align 4, !dbg !2711
  %105 = getelementptr inbounds i8* %104, i32 1, !dbg !2711
  %106 = load i8* %105, align 1, !dbg !2711
  %107 = zext i8 %106 to i32, !dbg !2711
  %108 = call i16** @__ctype_b_loc() #1, !dbg !2713
  %109 = load i16** %108, align 4, !dbg !2713
  %110 = getelementptr inbounds i16* %109, i32 %107, !dbg !2713
  %111 = load i16* %110, align 2, !dbg !2713
  %112 = zext i16 %111 to i32, !dbg !2713
  %113 = and i32 %112, 2048, !dbg !2713
  %114 = icmp ne i32 %113, 0, !dbg !2713
  br i1 %114, label %121, label %115, !dbg !2713

; <label>:115                                     ; preds = %103
  %116 = getelementptr inbounds [10 x i8]* %buff, i32 0, i32 0, !dbg !2714
  %117 = load i8** %2, align 4, !dbg !2714
  %118 = load i8* %117, align 1, !dbg !2714
  %119 = zext i8 %118 to i32, !dbg !2714
  %120 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %116, i32 10, i8* getelementptr inbounds ([4 x i8]* @.str56, i32 0, i32 0), i32 %119) #4, !dbg !2714
  br label %127, !dbg !2714

; <label>:121                                     ; preds = %103
  %122 = getelementptr inbounds [10 x i8]* %buff, i32 0, i32 0, !dbg !2715
  %123 = load i8** %2, align 4, !dbg !2715
  %124 = load i8* %123, align 1, !dbg !2715
  %125 = zext i8 %124 to i32, !dbg !2715
  %126 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %122, i32 10, i8* getelementptr inbounds ([6 x i8]* @.str57, i32 0, i32 0), i32 %125) #4, !dbg !2715
  br label %127

; <label>:127                                     ; preds = %121, %115
  %128 = load %struct.luaL_Buffer** %1, align 4, !dbg !2716
  %129 = getelementptr inbounds [10 x i8]* %buff, i32 0, i32 0, !dbg !2716
  call void @luaL_addstring(%struct.luaL_Buffer* %128, i8* %129), !dbg !2716
  br label %155, !dbg !2717

; <label>:130                                     ; preds = %92
  %131 = load %struct.luaL_Buffer** %1, align 4, !dbg !2718
  %132 = getelementptr inbounds %struct.luaL_Buffer* %131, i32 0, i32 2, !dbg !2718
  %133 = load i32* %132, align 4, !dbg !2718
  %134 = load %struct.luaL_Buffer** %1, align 4, !dbg !2718
  %135 = getelementptr inbounds %struct.luaL_Buffer* %134, i32 0, i32 1, !dbg !2718
  %136 = load i32* %135, align 4, !dbg !2718
  %137 = icmp ult i32 %133, %136, !dbg !2718
  br i1 %137, label %142, label %138, !dbg !2718

; <label>:138                                     ; preds = %130
  %139 = load %struct.luaL_Buffer** %1, align 4, !dbg !2719
  %140 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %139, i32 1), !dbg !2719
  %141 = icmp ne i8* %140, null, !dbg !2719
  br label %142, !dbg !2719

; <label>:142                                     ; preds = %138, %130
  %143 = phi i1 [ true, %130 ], [ %141, %138 ]
  %144 = zext i1 %143 to i32, !dbg !2721
  %145 = load i8** %2, align 4, !dbg !2721
  %146 = load i8* %145, align 1, !dbg !2721
  %147 = load %struct.luaL_Buffer** %1, align 4, !dbg !2721
  %148 = getelementptr inbounds %struct.luaL_Buffer* %147, i32 0, i32 2, !dbg !2721
  %149 = load i32* %148, align 4, !dbg !2721
  %150 = add i32 %149, 1, !dbg !2721
  store i32 %150, i32* %148, align 4, !dbg !2721
  %151 = load %struct.luaL_Buffer** %1, align 4, !dbg !2721
  %152 = getelementptr inbounds %struct.luaL_Buffer* %151, i32 0, i32 0, !dbg !2721
  %153 = load i8** %152, align 4, !dbg !2721
  %154 = getelementptr inbounds i8* %153, i32 %149, !dbg !2721
  store i8 %146, i8* %154, align 1, !dbg !2721
  br label %155

; <label>:155                                     ; preds = %142, %127
  br label %156

; <label>:156                                     ; preds = %155, %79
  %157 = load i8** %2, align 4, !dbg !2724
  %158 = getelementptr inbounds i8* %157, i32 1, !dbg !2724
  store i8* %158, i8** %2, align 4, !dbg !2724
  br label %26, !dbg !2725

; <label>:159                                     ; preds = %26
  %160 = load %struct.luaL_Buffer** %1, align 4, !dbg !2726
  %161 = getelementptr inbounds %struct.luaL_Buffer* %160, i32 0, i32 2, !dbg !2726
  %162 = load i32* %161, align 4, !dbg !2726
  %163 = load %struct.luaL_Buffer** %1, align 4, !dbg !2726
  %164 = getelementptr inbounds %struct.luaL_Buffer* %163, i32 0, i32 1, !dbg !2726
  %165 = load i32* %164, align 4, !dbg !2726
  %166 = icmp ult i32 %162, %165, !dbg !2726
  br i1 %166, label %171, label %167, !dbg !2726

; <label>:167                                     ; preds = %159
  %168 = load %struct.luaL_Buffer** %1, align 4, !dbg !2727
  %169 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %168, i32 1), !dbg !2727
  %170 = icmp ne i8* %169, null, !dbg !2727
  br label %171, !dbg !2727

; <label>:171                                     ; preds = %167, %159
  %172 = phi i1 [ true, %159 ], [ %170, %167 ]
  %173 = zext i1 %172 to i32, !dbg !2729
  %174 = load %struct.luaL_Buffer** %1, align 4, !dbg !2729
  %175 = getelementptr inbounds %struct.luaL_Buffer* %174, i32 0, i32 2, !dbg !2729
  %176 = load i32* %175, align 4, !dbg !2729
  %177 = add i32 %176, 1, !dbg !2729
  store i32 %177, i32* %175, align 4, !dbg !2729
  %178 = load %struct.luaL_Buffer** %1, align 4, !dbg !2729
  %179 = getelementptr inbounds %struct.luaL_Buffer* %178, i32 0, i32 0, !dbg !2729
  %180 = load i8** %179, align 4, !dbg !2729
  %181 = getelementptr inbounds i8* %180, i32 %176, !dbg !2729
  store i8 34, i8* %181, align 1, !dbg !2729
  ret void, !dbg !2732
}

declare i32 @lua_isinteger(%struct.lua_State*, i32) #2

declare double @lua_tonumberx(%struct.lua_State*, i32, i32*) #2

; Function Attrs: nounwind
define internal void @checkdp(i8* %buff, i32 %nb) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i32, align 4
  %point = alloca i8, align 1
  %ppoint = alloca i8*, align 4
  store i8* %buff, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !2733), !dbg !2734
  store i32 %nb, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2735), !dbg !2736
  %3 = load i8** %1, align 4, !dbg !2737
  %4 = load i32* %2, align 4, !dbg !2737
  %5 = call i8* @memchr(i8* %3, i32 46, i32 %4) #6, !dbg !2737
  %6 = icmp eq i8* %5, null, !dbg !2737
  br i1 %6, label %7, label %23, !dbg !2737

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i8* %point}, metadata !2739), !dbg !2741
  %8 = call %struct.lconv* @localeconv() #4, !dbg !2742
  %9 = getelementptr inbounds %struct.lconv* %8, i32 0, i32 0, !dbg !2742
  %10 = load i8** %9, align 4, !dbg !2742
  %11 = getelementptr inbounds i8* %10, i32 0, !dbg !2742
  %12 = load i8* %11, align 1, !dbg !2742
  store i8 %12, i8* %point, align 1, !dbg !2742
  call void @llvm.dbg.declare(metadata !{i8** %ppoint}, metadata !2743), !dbg !2744
  %13 = load i8** %1, align 4, !dbg !2745
  %14 = load i8* %point, align 1, !dbg !2745
  %15 = zext i8 %14 to i32, !dbg !2745
  %16 = load i32* %2, align 4, !dbg !2745
  %17 = call i8* @memchr(i8* %13, i32 %15, i32 %16) #6, !dbg !2745
  store i8* %17, i8** %ppoint, align 4, !dbg !2745
  %18 = load i8** %ppoint, align 4, !dbg !2746
  %19 = icmp ne i8* %18, null, !dbg !2746
  br i1 %19, label %20, label %22, !dbg !2746

; <label>:20                                      ; preds = %7
  %21 = load i8** %ppoint, align 4, !dbg !2748
  store i8 46, i8* %21, align 1, !dbg !2748
  br label %22, !dbg !2748

; <label>:22                                      ; preds = %20, %7
  br label %23, !dbg !2750

; <label>:23                                      ; preds = %22, %0
  ret void, !dbg !2751
}

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) #2

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() #0

declare void @luaL_addstring(%struct.luaL_Buffer*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #0

declare void @luaL_checktype(%struct.lua_State*, i32, i32) #2

declare i32 @lua_dump(%struct.lua_State*, i32 (%struct.lua_State*, i8*, i32, i8*)*, i8*, i32) #2

; Function Attrs: nounwind
define internal i32 @writer(%struct.lua_State* %L, i8* %b, i32 %size, i8* %B) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2752), !dbg !2753
  store i8* %b, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !2754), !dbg !2755
  store i32 %size, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2756), !dbg !2757
  store i8* %B, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !2758), !dbg !2759
  %5 = load %struct.lua_State** %1, align 4, !dbg !2760
  %6 = load i8** %4, align 4, !dbg !2761
  %7 = bitcast i8* %6 to %struct.luaL_Buffer*, !dbg !2761
  %8 = load i8** %2, align 4, !dbg !2761
  %9 = load i32* %3, align 4, !dbg !2761
  call void @luaL_addlstring(%struct.luaL_Buffer* %7, i8* %8, i32 %9), !dbg !2761
  ret i32 0, !dbg !2762
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479}
!xidane.function_declaration_type = !{!250, !480, !252, !481, !254, !482, !256, !483, !258, !484, !260, !485, !262, !486, !264, !487, !266, !486, !268, !488, !270, !480, !272, !480, !274, !480, !276, !480, !278, !480, !280, !480, !282, !480, !284, !480, !286, !480, !288, !480, !290, !480, !292, !480, !294, !480, !296, !480, !298, !480, !300, !480, !302, !480, !304, !489, !306, !490, !308, !491, !310, !492, !312, !493, !314, !494, !316, !488, !318, !495, !320, !496, !322, !497, !324, !498, !326, !499, !328, !500, !330, !501, !332, !502, !334, !503, !336, !504, !338, !505, !340, !484, !342, !506, !344, !507, !346, !508, !348, !509, !350, !510, !352, !511, !354, !512, !356, !513, !358, !505, !360, !514, !362, !515, !364, !487, !366, !487, !368, !516, !370, !517, !372, !518, !374, !519, !376, !520, !378, !521, !380, !522, !382, !523, !384, !520, !386, !520, !388, !524, !390, !525, !392, !526, !394, !527, !396, !528, !398, !528, !400, !529, !402, !505, !404, !530, !406, !531, !408, !532, !410, !533, !412, !534, !414, !535, !416, !487, !418, !536, !420, !537, !422, !487, !424, !538, !426, !487, !428, !539, !430, !512, !432, !489, !434, !489, !436, !482, !438, !540, !440, !541, !442, !480, !444, !542, !446, !480, !448, !543, !450, !544, !452, !545, !454, !546, !456, !547, !458, !511, !460, !487, !462, !548, !464, !549, !466, !550, !468, !551, !470, !552, !472, !553, !474, !482, !476, !554, !478, !555}
!xidane.function_declaration_filename = !{!250, !556, !252, !557, !254, !558, !256, !557, !258, !559, !260, !558, !262, !558, !264, !558, !266, !558, !268, !558, !270, !559, !272, !559, !274, !559, !276, !559, !278, !559, !280, !559, !282, !559, !284, !559, !286, !559, !288, !559, !290, !559, !292, !559, !294, !559, !296, !559, !298, !559, !300, !559, !302, !559, !304, !557, !306, !559, !308, !557, !310, !557, !312, !559, !314, !559, !316, !557, !318, !559, !320, !558, !322, !559, !324, !558, !326, !558, !328, !560, !330, !557, !332, !559, !334, !559, !336, !559, !338, !559, !340, !558, !342, !557, !344, !557, !346, !557, !348, !559, !350, !557, !352, !557, !354, !557, !356, !557, !358, !561, !360, !557, !362, !557, !364, !559, !366, !558, !368, !559, !370, !559, !372, !559, !374, !559, !376, !559, !378, !559, !380, !559, !382, !559, !384, !559, !386, !559, !388, !559, !390, !559, !392, !559, !394, !559, !396, !559, !398, !559, !400, !559, !402, !561, !404, !561, !406, !559, !408, !560, !410, !559, !412, !560, !414, !560, !416, !558, !418, !559, !420, !558, !422, !558, !424, !559, !426, !558, !428, !558, !430, !557, !432, !558, !434, !557, !436, !558, !438, !558, !440, !558, !442, !559, !444, !558, !446, !558, !448, !559, !450, !562, !452, !559, !454, !559, !456, !560, !458, !559, !460, !558, !462, !558, !464, !559, !466, !558, !468, !563, !470, !557, !472, !560, !474, !557, !476, !558, !478, !559}
!xidane.ExternC = !{!250, !252, !254, !256, !260, !262, !264, !266, !268, !304, !308, !310, !316, !320, !324, !326, !328, !330, !340, !342, !344, !346, !350, !352, !354, !356, !358, !360, !362, !366, !402, !404, !408, !412, !414, !416, !420, !422, !426, !428, !430, !432, !434, !436, !438, !440, !444, !446, !450, !456, !460, !462, !466, !468, !470, !472, !474, !476}
!llvm.module.flags = !{!564, !565, !566, !567}
!llvm.ident = !{!568}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !30, metadata !31, metadata !231, metadata !30, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lstrlib.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clstrlib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{metadata !3, metadata !15}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"KOption", i32 1161, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [KOption] [line 1161, size 32, align 32, offset 0] [def] [from ]
!4 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstrlib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14}
!6 = metadata !{i32 786472, metadata !"Kint", i64 0} ; [ DW_TAG_enumerator ] [Kint :: 0]
!7 = metadata !{i32 786472, metadata !"Kuint", i64 1} ; [ DW_TAG_enumerator ] [Kuint :: 1]
!8 = metadata !{i32 786472, metadata !"Kfloat", i64 2} ; [ DW_TAG_enumerator ] [Kfloat :: 2]
!9 = metadata !{i32 786472, metadata !"Kchar", i64 3} ; [ DW_TAG_enumerator ] [Kchar :: 3]
!10 = metadata !{i32 786472, metadata !"Kstring", i64 4} ; [ DW_TAG_enumerator ] [Kstring :: 4]
!11 = metadata !{i32 786472, metadata !"Kzstr", i64 5} ; [ DW_TAG_enumerator ] [Kzstr :: 5]
!12 = metadata !{i32 786472, metadata !"Kpadding", i64 6} ; [ DW_TAG_enumerator ] [Kpadding :: 6]
!13 = metadata !{i32 786472, metadata !"Kpaddalign", i64 7} ; [ DW_TAG_enumerator ] [Kpaddalign :: 7]
!14 = metadata !{i32 786472, metadata !"Knop", i64 8} ; [ DW_TAG_enumerator ] [Knop :: 8]
!15 = metadata !{i32 786436, metadata !16, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [def] [from ]
!16 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cctype.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!17 = metadata !{metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29}
!18 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!19 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!20 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!21 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!22 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!23 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!24 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!25 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!26 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!27 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!28 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!29 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!30 = metadata !{}
!31 = metadata !{metadata !32, metadata !41, metadata !44, metadata !45, metadata !53, metadata !60, metadata !76, metadata !79, metadata !82, metadata !85, metadata !88, metadata !91, metadata !94, metadata !95, metadata !96, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !123, metadata !146, metadata !149, metadata !152, metadata !155, metadata !156, metadata !159, metadata !162, metadata !165, metadata !168, metadata !171, metadata !174, metadata !175, metadata !176, metadata !179, metadata !182, metadata !185, metadata !188, metadata !191, metadata !194, metadata !195, metadata !196, metadata !197, metadata !200, metadata !203, metadata !204, metadata !205, metadata !206, metadata !209, metadata !212, metadata !215, metadata !218, metadata !221, metadata !222, metadata !223, metadata !229, metadata !230}
!32 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"luaopen_string", metadata !"luaopen_string", metadata !"", i32 1577, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaopen_string, null, null, metadata !30, i32 1577} ; [ DW_TAG_subprogram ] [line 1577] [def] [luaopen_string]
!33 = metadata !{i32 786473, metadata !4}         ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!34 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!35 = metadata !{metadata !36, metadata !37}
!36 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!38 = metadata !{i32 786454, metadata !39, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!39 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!40 = metadata !{i32 786451, metadata !39, null, metadata !"lua_State", i32 56, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 56, size 0, align 0, offset 0] [decl] [from ]
!41 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"createmetatable", metadata !"createmetatable", metadata !"", i32 1562, metadata !42, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @createmetatable, null, null, metadata !30, i32 1562} ; [ DW_TAG_subprogram ] [line 1562] [local] [def] [createmetatable]
!42 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!43 = metadata !{null, metadata !37}
!44 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"str_unpack", metadata !"str_unpack", metadata !"", i32 1474, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @str_unpack, null, null, metadata !30, i32 1474} ; [ DW_TAG_subprogram ] [line 1474] [local] [def] [str_unpack]
!45 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"copywithendian", metadata !"copywithendian", metadata !"", i32 1314, metadata !46, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i32, i32)* @copywithendian, null, null, metadata !30, i32 1315} ; [ DW_TAG_subprogram ] [line 1314] [local] [def] [scope 1315] [copywithendian]
!46 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!47 = metadata !{null, metadata !48, metadata !51, metadata !36, metadata !36}
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!49 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!50 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!52 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!53 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"unpackint", metadata !"unpackint", metadata !"", i32 1448, metadata !54, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.lua_State*, i8*, i32, i32, i32)* @unpackint, null, null, metadata !30, i32 1449} ; [ DW_TAG_subprogram ] [line 1448] [local] [def] [scope 1449] [unpackint]
!54 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!55 = metadata !{metadata !56, metadata !37, metadata !58, metadata !36, metadata !36, metadata !36}
!56 = metadata !{i32 786454, metadata !39, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!57 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!59 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!60 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"getdetails", metadata !"getdetails", metadata !"", i32 1266, metadata !61, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.Header*, i32, i8**, i32*, i32*)* @getdetails, null, null, metadata !30, i32 1267} ; [ DW_TAG_subprogram ] [line 1266] [local] [def] [scope 1267] [getdetails]
!61 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!62 = metadata !{metadata !63, metadata !64, metadata !71, metadata !74, metadata !75, metadata !75}
!63 = metadata !{i32 786454, metadata !4, null, metadata !"KOption", i32 1171, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [KOption] [line 1171, size 0, align 0, offset 0] [from KOption]
!64 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Header]
!65 = metadata !{i32 786454, metadata !4, null, metadata !"Header", i32 1155, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [Header] [line 1155, size 0, align 0, offset 0] [from Header]
!66 = metadata !{i32 786451, metadata !4, null, metadata !"Header", i32 1151, i64 96, i64 32, i32 0, i32 0, null, metadata !67, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Header] [line 1151, size 96, align 32, offset 0] [def] [from ]
!67 = metadata !{metadata !68, metadata !69, metadata !70}
!68 = metadata !{i32 786445, metadata !4, metadata !66, metadata !"L", i32 1152, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [L] [line 1152, size 32, align 32, offset 0] [from ]
!69 = metadata !{i32 786445, metadata !4, metadata !66, metadata !"islittle", i32 1153, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [islittle] [line 1153, size 32, align 32, offset 32] [from int]
!70 = metadata !{i32 786445, metadata !4, metadata !66, metadata !"maxalign", i32 1154, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [maxalign] [line 1154, size 32, align 32, offset 64] [from int]
!71 = metadata !{i32 786454, metadata !72, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!72 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!73 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!74 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!75 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!76 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"getoption", metadata !"getoption", metadata !"", i32 1219, metadata !77, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.Header*, i8**, i32*)* @getoption, null, null, metadata !30, i32 1219} ; [ DW_TAG_subprogram ] [line 1219] [local] [def] [getoption]
!77 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!78 = metadata !{metadata !63, metadata !64, metadata !74, metadata !75}
!79 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"getnum", metadata !"getnum", metadata !"", i32 1180, metadata !80, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8**, i32)* @getnum, null, null, metadata !30, i32 1180} ; [ DW_TAG_subprogram ] [line 1180] [local] [def] [getnum]
!80 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!81 = metadata !{metadata !36, metadata !74, metadata !36}
!82 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"digit", metadata !"digit", metadata !"", i32 1178, metadata !83, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @digit, null, null, metadata !30, i32 1178} ; [ DW_TAG_subprogram ] [line 1178] [local] [def] [digit]
!83 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!84 = metadata !{metadata !36, metadata !36}
!85 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"getnumlimit", metadata !"getnumlimit", metadata !"", i32 1197, metadata !86, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.Header*, i8**, i32)* @getnumlimit, null, null, metadata !30, i32 1197} ; [ DW_TAG_subprogram ] [line 1197] [local] [def] [getnumlimit]
!86 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!87 = metadata !{metadata !36, metadata !64, metadata !74, metadata !36}
!88 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"initheader", metadata !"initheader", metadata !"", i32 1209, metadata !89, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.Header*)* @initheader, null, null, metadata !30, i32 1209} ; [ DW_TAG_subprogram ] [line 1209] [local] [def] [initheader]
!89 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!90 = metadata !{null, metadata !37, metadata !64}
!91 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"posrelat", metadata !"posrelat", metadata !"", i32 63, metadata !92, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i32)* @posrelat, null, null, metadata !30, i32 63} ; [ DW_TAG_subprogram ] [line 63] [local] [def] [posrelat]
!92 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!93 = metadata !{metadata !56, metadata !56, metadata !71}
!94 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"str_packsize", metadata !"str_packsize", metadata !"", i32 1415, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @str_packsize, null, null, metadata !30, i32 1415} ; [ DW_TAG_subprogram ] [line 1415] [local] [def] [str_packsize]
!95 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"str_pack", metadata !"str_pack", metadata !"", i32 1328, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @str_pack, null, null, metadata !30, i32 1328} ; [ DW_TAG_subprogram ] [line 1328] [local] [def] [str_pack]
!96 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"packint", metadata !"packint", metadata !"", i32 1293, metadata !97, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.luaL_Buffer*, i64, i32, i32, i32)* @packint, null, null, metadata !30, i32 1294} ; [ DW_TAG_subprogram ] [line 1293] [local] [def] [scope 1294] [packint]
!97 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!98 = metadata !{null, metadata !99, metadata !113, metadata !36, metadata !36, metadata !36}
!99 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from luaL_Buffer]
!100 = metadata !{i32 786454, metadata !101, null, metadata !"luaL_Buffer", i32 146, i64 0, i64 0, i64 0, i32 0, metadata !102} ; [ DW_TAG_typedef ] [luaL_Buffer] [line 146, size 0, align 0, offset 0] [from luaL_Buffer]
!101 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!102 = metadata !{i32 786451, metadata !101, null, metadata !"luaL_Buffer", i32 140, i64 65664, i64 32, i32 0, i32 0, null, metadata !103, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Buffer] [line 140, size 65664, align 32, offset 0] [def] [from ]
!103 = metadata !{metadata !104, metadata !106, metadata !107, metadata !108, metadata !109}
!104 = metadata !{i32 786445, metadata !101, metadata !102, metadata !"b", i32 141, i64 32, i64 32, i64 0, i32 0, metadata !105} ; [ DW_TAG_member ] [b] [line 141, size 32, align 32, offset 0] [from ]
!105 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!106 = metadata !{i32 786445, metadata !101, metadata !102, metadata !"size", i32 142, i64 32, i64 32, i64 32, i32 0, metadata !71} ; [ DW_TAG_member ] [size] [line 142, size 32, align 32, offset 32] [from size_t]
!107 = metadata !{i32 786445, metadata !101, metadata !102, metadata !"n", i32 143, i64 32, i64 32, i64 64, i32 0, metadata !71} ; [ DW_TAG_member ] [n] [line 143, size 32, align 32, offset 64] [from size_t]
!108 = metadata !{i32 786445, metadata !101, metadata !102, metadata !"L", i32 144, i64 32, i64 32, i64 96, i32 0, metadata !37} ; [ DW_TAG_member ] [L] [line 144, size 32, align 32, offset 96] [from ]
!109 = metadata !{i32 786445, metadata !101, metadata !102, metadata !"initb", i32 145, i64 65536, i64 8, i64 128, i32 0, metadata !110} ; [ DW_TAG_member ] [initb] [line 145, size 65536, align 8, offset 128] [from ]
!110 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 65536, i64 8, i32 0, i32 0, metadata !50, metadata !111, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 65536, align 8, offset 0] [from char]
!111 = metadata !{metadata !112}
!112 = metadata !{i32 786465, i64 0, i64 8192}    ; [ DW_TAG_subrange_type ] [0, 8191]
!113 = metadata !{i32 786454, metadata !39, null, metadata !"lua_Unsigned", i32 96, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_typedef ] [lua_Unsigned] [line 96, size 0, align 0, offset 0] [from long long unsigned int]
!114 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!115 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"str_upper", metadata !"str_upper", metadata !"", i32 109, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @str_upper, null, null, metadata !30, i32 109} ; [ DW_TAG_subprogram ] [line 109] [local] [def] [str_upper]
!116 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"str_sub", metadata !"str_sub", metadata !"", i32 70, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @str_sub, null, null, metadata !30, i32 70} ; [ DW_TAG_subprogram ] [line 70] [local] [def] [str_sub]
!117 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"str_reverse", metadata !"str_reverse", metadata !"", i32 84, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @str_reverse, null, null, metadata !30, i32 84} ; [ DW_TAG_subprogram ] [line 84] [local] [def] [str_reverse]
!118 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"str_rep", metadata !"str_rep", metadata !"", i32 122, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @str_rep, null, null, metadata !30, i32 122} ; [ DW_TAG_subprogram ] [line 122] [local] [def] [str_rep]
!119 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"str_match", metadata !"str_match", metadata !"", i32 659, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @str_match, null, null, metadata !30, i32 659} ; [ DW_TAG_subprogram ] [line 659] [local] [def] [str_match]
!120 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"str_find_aux", metadata !"str_find_aux", metadata !"", i32 607, metadata !121, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @str_find_aux, null, null, metadata !30, i32 607} ; [ DW_TAG_subprogram ] [line 607] [local] [def] [str_find_aux]
!121 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !122, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!122 = metadata !{metadata !36, metadata !37, metadata !36}
!123 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"push_captures", metadata !"push_captures", metadata !"", i32 569, metadata !124, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.MatchState*, i8*, i8*)* @push_captures, null, null, metadata !30, i32 569} ; [ DW_TAG_subprogram ] [line 569] [local] [def] [push_captures]
!124 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!125 = metadata !{metadata !36, metadata !126, metadata !58, metadata !58}
!126 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !127} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from MatchState]
!127 = metadata !{i32 786454, metadata !4, null, metadata !"MatchState", i32 225, i64 0, i64 0, i64 0, i32 0, metadata !128} ; [ DW_TAG_typedef ] [MatchState] [line 225, size 0, align 0, offset 0] [from MatchState]
!128 = metadata !{i32 786451, metadata !4, null, metadata !"MatchState", i32 214, i64 2240, i64 32, i32 0, i32 0, null, metadata !129, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [MatchState] [line 214, size 2240, align 32, offset 0] [def] [from ]
!129 = metadata !{metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !137}
!130 = metadata !{i32 786445, metadata !4, metadata !128, metadata !"src_init", i32 215, i64 32, i64 32, i64 0, i32 0, metadata !58} ; [ DW_TAG_member ] [src_init] [line 215, size 32, align 32, offset 0] [from ]
!131 = metadata !{i32 786445, metadata !4, metadata !128, metadata !"src_end", i32 216, i64 32, i64 32, i64 32, i32 0, metadata !58} ; [ DW_TAG_member ] [src_end] [line 216, size 32, align 32, offset 32] [from ]
!132 = metadata !{i32 786445, metadata !4, metadata !128, metadata !"p_end", i32 217, i64 32, i64 32, i64 64, i32 0, metadata !58} ; [ DW_TAG_member ] [p_end] [line 217, size 32, align 32, offset 64] [from ]
!133 = metadata !{i32 786445, metadata !4, metadata !128, metadata !"L", i32 218, i64 32, i64 32, i64 96, i32 0, metadata !37} ; [ DW_TAG_member ] [L] [line 218, size 32, align 32, offset 96] [from ]
!134 = metadata !{i32 786445, metadata !4, metadata !128, metadata !"matchdepth", i32 219, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [matchdepth] [line 219, size 32, align 32, offset 128] [from int]
!135 = metadata !{i32 786445, metadata !4, metadata !128, metadata !"level", i32 220, i64 8, i64 8, i64 160, i32 0, metadata !136} ; [ DW_TAG_member ] [level] [line 220, size 8, align 8, offset 160] [from unsigned char]
!136 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!137 = metadata !{i32 786445, metadata !4, metadata !128, metadata !"capture", i32 224, i64 2048, i64 32, i64 192, i32 0, metadata !138} ; [ DW_TAG_member ] [capture] [line 224, size 2048, align 32, offset 192] [from ]
!138 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !139, metadata !144, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 2048, align 32, offset 0] [from ]
!139 = metadata !{i32 786451, metadata !4, metadata !128, metadata !"", i32 221, i64 64, i64 32, i32 0, i32 0, null, metadata !140, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 221, size 64, align 32, offset 0] [def] [from ]
!140 = metadata !{metadata !141, metadata !142}
!141 = metadata !{i32 786445, metadata !4, metadata !139, metadata !"init", i32 222, i64 32, i64 32, i64 0, i32 0, metadata !58} ; [ DW_TAG_member ] [init] [line 222, size 32, align 32, offset 0] [from ]
!142 = metadata !{i32 786445, metadata !4, metadata !139, metadata !"len", i32 223, i64 32, i64 32, i64 32, i32 0, metadata !143} ; [ DW_TAG_member ] [len] [line 223, size 32, align 32, offset 32] [from ptrdiff_t]
!143 = metadata !{i32 786454, metadata !72, null, metadata !"ptrdiff_t", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 149, size 0, align 0, offset 0] [from int]
!144 = metadata !{metadata !145}
!145 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!146 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"push_onecapture", metadata !"push_onecapture", metadata !"", i32 550, metadata !147, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.MatchState*, i32, i8*, i8*)* @push_onecapture, null, null, metadata !30, i32 551} ; [ DW_TAG_subprogram ] [line 550] [local] [def] [scope 551] [push_onecapture]
!147 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!148 = metadata !{null, metadata !126, metadata !36, metadata !58, metadata !58}
!149 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"match", metadata !"match", metadata !"", i32 425, metadata !150, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.MatchState*, i8*, i8*)* @match, null, null, metadata !30, i32 425} ; [ DW_TAG_subprogram ] [line 425] [local] [def] [match]
!150 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!151 = metadata !{metadata !58, metadata !126, metadata !58, metadata !58}
!152 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"min_expand", metadata !"min_expand", metadata !"", i32 376, metadata !153, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.MatchState*, i8*, i8*, i8*)* @min_expand, null, null, metadata !30, i32 377} ; [ DW_TAG_subprogram ] [line 376] [local] [def] [scope 377] [min_expand]
!153 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !154, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!154 = metadata !{metadata !58, metadata !126, metadata !58, metadata !58, metadata !58}
!155 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"max_expand", metadata !"max_expand", metadata !"", i32 361, metadata !153, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.MatchState*, i8*, i8*, i8*)* @max_expand, null, null, metadata !30, i32 362} ; [ DW_TAG_subprogram ] [line 361] [local] [def] [scope 362] [max_expand]
!156 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"singlematch", metadata !"singlematch", metadata !"", i32 325, metadata !157, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.MatchState*, i8*, i8*, i8*)* @singlematch, null, null, metadata !30, i32 326} ; [ DW_TAG_subprogram ] [line 325] [local] [def] [scope 326] [singlematch]
!157 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!158 = metadata !{metadata !36, metadata !126, metadata !58, metadata !58, metadata !58}
!159 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"match_class", metadata !"match_class", metadata !"", i32 282, metadata !160, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @match_class, null, null, metadata !30, i32 282} ; [ DW_TAG_subprogram ] [line 282] [local] [def] [match_class]
!160 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!161 = metadata !{metadata !36, metadata !36, metadata !36}
!162 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"match_capture", metadata !"match_capture", metadata !"", i32 414, metadata !163, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.MatchState*, i8*, i32)* @match_capture, null, null, metadata !30, i32 414} ; [ DW_TAG_subprogram ] [line 414] [local] [def] [match_capture]
!163 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!164 = metadata !{metadata !58, metadata !126, metadata !58, metadata !36}
!165 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"check_capture", metadata !"check_capture", metadata !"", i32 242, metadata !166, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.MatchState*, i32)* @check_capture, null, null, metadata !30, i32 242} ; [ DW_TAG_subprogram ] [line 242] [local] [def] [check_capture]
!166 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !167, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!167 = metadata !{metadata !36, metadata !126, metadata !36}
!168 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"matchbracketclass", metadata !"matchbracketclass", metadata !"", i32 302, metadata !169, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8*, i8*)* @matchbracketclass, null, null, metadata !30, i32 302} ; [ DW_TAG_subprogram ] [line 302] [local] [def] [matchbracketclass]
!169 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !170, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!170 = metadata !{metadata !36, metadata !36, metadata !58, metadata !58}
!171 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"classend", metadata !"classend", metadata !"", i32 258, metadata !172, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.MatchState*, i8*)* @classend, null, null, metadata !30, i32 258} ; [ DW_TAG_subprogram ] [line 258] [local] [def] [classend]
!172 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!173 = metadata !{metadata !58, metadata !126, metadata !58}
!174 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"matchbalance", metadata !"matchbalance", metadata !"", i32 341, metadata !150, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.MatchState*, i8*, i8*)* @matchbalance, null, null, metadata !30, i32 342} ; [ DW_TAG_subprogram ] [line 341] [local] [def] [scope 342] [matchbalance]
!175 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"end_capture", metadata !"end_capture", metadata !"", i32 403, metadata !150, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.MatchState*, i8*, i8*)* @end_capture, null, null, metadata !30, i32 404} ; [ DW_TAG_subprogram ] [line 403] [local] [def] [scope 404] [end_capture]
!176 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"capture_to_close", metadata !"capture_to_close", metadata !"", i32 250, metadata !177, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.MatchState*)* @capture_to_close, null, null, metadata !30, i32 250} ; [ DW_TAG_subprogram ] [line 250] [local] [def] [capture_to_close]
!177 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !178, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!178 = metadata !{metadata !36, metadata !126}
!179 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"start_capture", metadata !"start_capture", metadata !"", i32 389, metadata !180, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.MatchState*, i8*, i8*, i32)* @start_capture, null, null, metadata !30, i32 390} ; [ DW_TAG_subprogram ] [line 389] [local] [def] [scope 390] [start_capture]
!180 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!181 = metadata !{metadata !58, metadata !126, metadata !58, metadata !58, metadata !36}
!182 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"reprepstate", metadata !"reprepstate", metadata !"", i32 601, metadata !183, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.MatchState*)* @reprepstate, null, null, metadata !30, i32 601} ; [ DW_TAG_subprogram ] [line 601] [local] [def] [reprepstate]
!183 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !184, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!184 = metadata !{null, metadata !126}
!185 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"prepstate", metadata !"prepstate", metadata !"", i32 591, metadata !186, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.MatchState*, %struct.lua_State*, i8*, i32, i8*, i32)* @prepstate, null, null, metadata !30, i32 592} ; [ DW_TAG_subprogram ] [line 591] [local] [def] [scope 592] [prepstate]
!186 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !187, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!187 = metadata !{null, metadata !126, metadata !37, metadata !58, metadata !71, metadata !58, metadata !71}
!188 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"lmemfind", metadata !"lmemfind", metadata !"", i32 528, metadata !189, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32, i8*, i32)* @lmemfind, null, null, metadata !30, i32 529} ; [ DW_TAG_subprogram ] [line 528] [local] [def] [scope 529] [lmemfind]
!189 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !190, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!190 = metadata !{metadata !58, metadata !58, metadata !71, metadata !58, metadata !71}
!191 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"nospecials", metadata !"nospecials", metadata !"", i32 580, metadata !192, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i32)* @nospecials, null, null, metadata !30, i32 580} ; [ DW_TAG_subprogram ] [line 580] [local] [def] [nospecials]
!192 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !193, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!193 = metadata !{metadata !36, metadata !58, metadata !71}
!194 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"str_lower", metadata !"str_lower", metadata !"", i32 96, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @str_lower, null, null, metadata !30, i32 96} ; [ DW_TAG_subprogram ] [line 96] [local] [def] [str_lower]
!195 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"str_len", metadata !"str_len", metadata !"", i32 54, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @str_len, null, null, metadata !30, i32 54} ; [ DW_TAG_subprogram ] [line 54] [local] [def] [str_len]
!196 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"str_gsub", metadata !"str_gsub", metadata !"", i32 762, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @str_gsub, null, null, metadata !30, i32 762} ; [ DW_TAG_subprogram ] [line 762] [local] [def] [str_gsub]
!197 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"add_value", metadata !"add_value", metadata !"", i32 731, metadata !198, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.MatchState*, %struct.luaL_Buffer*, i8*, i8*, i32)* @add_value, null, null, metadata !30, i32 732} ; [ DW_TAG_subprogram ] [line 731] [local] [def] [scope 732] [add_value]
!198 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !199, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!199 = metadata !{null, metadata !126, metadata !99, metadata !58, metadata !58, metadata !36}
!200 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"add_s", metadata !"add_s", metadata !"", i32 703, metadata !201, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.MatchState*, %struct.luaL_Buffer*, i8*, i8*)* @add_s, null, null, metadata !30, i32 704} ; [ DW_TAG_subprogram ] [line 703] [local] [def] [scope 704] [add_s]
!201 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !202, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!202 = metadata !{null, metadata !126, metadata !99, metadata !58, metadata !58}
!203 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"gmatch", metadata !"gmatch", metadata !"", i32 689, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @gmatch, null, null, metadata !30, i32 689} ; [ DW_TAG_subprogram ] [line 689] [local] [def] [gmatch]
!204 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"gmatch_aux", metadata !"gmatch_aux", metadata !"", i32 673, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @gmatch_aux, null, null, metadata !30, i32 673} ; [ DW_TAG_subprogram ] [line 673] [local] [def] [gmatch_aux]
!205 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"str_format", metadata !"str_format", metadata !"", i32 1015, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @str_format, null, null, metadata !30, i32 1015} ; [ DW_TAG_subprogram ] [line 1015] [local] [def] [str_format]
!206 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"addliteral", metadata !"addliteral", metadata !"", i32 942, metadata !207, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.luaL_Buffer*, i32)* @addliteral, null, null, metadata !30, i32 942} ; [ DW_TAG_subprogram ] [line 942] [local] [def] [addliteral]
!207 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !208, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!208 = metadata !{null, metadata !37, metadata !99, metadata !36}
!209 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"checkdp", metadata !"checkdp", metadata !"", i32 933, metadata !210, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32)* @checkdp, null, null, metadata !30, i32 933} ; [ DW_TAG_subprogram ] [line 933] [local] [def] [checkdp]
!210 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !211, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!211 = metadata !{null, metadata !105, metadata !36}
!212 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"addquoted", metadata !"addquoted", metadata !"", i32 907, metadata !213, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.luaL_Buffer*, i8*, i32)* @addquoted, null, null, metadata !30, i32 907} ; [ DW_TAG_subprogram ] [line 907] [local] [def] [addquoted]
!213 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !214, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!214 = metadata !{null, metadata !99, metadata !58, metadata !71}
!215 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"addlenmod", metadata !"addlenmod", metadata !"", i32 1005, metadata !216, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @addlenmod, null, null, metadata !30, i32 1005} ; [ DW_TAG_subprogram ] [line 1005] [local] [def] [addlenmod]
!216 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!217 = metadata !{null, metadata !105, metadata !58}
!218 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"scanformat", metadata !"scanformat", metadata !"", i32 980, metadata !219, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*, i8*)* @scanformat, null, null, metadata !30, i32 980} ; [ DW_TAG_subprogram ] [line 980] [local] [def] [scanformat]
!219 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!220 = metadata !{metadata !58, metadata !37, metadata !58, metadata !105}
!221 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"str_find", metadata !"str_find", metadata !"", i32 654, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @str_find, null, null, metadata !30, i32 654} ; [ DW_TAG_subprogram ] [line 654] [local] [def] [str_find]
!222 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"str_dump", metadata !"str_dump", metadata !"", i32 189, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @str_dump, null, null, metadata !30, i32 189} ; [ DW_TAG_subprogram ] [line 189] [local] [def] [str_dump]
!223 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"writer", metadata !"writer", metadata !"", i32 182, metadata !224, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*, i32, i8*)* @writer, null, null, metadata !30, i32 182} ; [ DW_TAG_subprogram ] [line 182] [local] [def] [writer]
!224 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !225, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!225 = metadata !{metadata !36, metadata !37, metadata !226, metadata !71, metadata !228}
!226 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !227} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!227 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!228 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!229 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"str_char", metadata !"str_char", metadata !"", i32 167, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @str_char, null, null, metadata !30, i32 167} ; [ DW_TAG_subprogram ] [line 167] [local] [def] [str_char]
!230 = metadata !{i32 786478, metadata !4, metadata !33, metadata !"str_byte", metadata !"str_byte", metadata !"", i32 148, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @str_byte, null, null, metadata !30, i32 148} ; [ DW_TAG_subprogram ] [line 148] [local] [def] [str_byte]
!231 = metadata !{metadata !232, metadata !244}
!232 = metadata !{i32 786484, i32 0, null, metadata !"strlib", metadata !"strlib", metadata !"", metadata !33, i32 1540, metadata !233, i32 1, i32 1, [18 x %struct.luaL_Reg]* @strlib, null} ; [ DW_TAG_variable ] [strlib] [line 1540] [local] [def]
!233 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 32, i32 0, i32 0, metadata !234, metadata !242, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1152, align 32, offset 0] [from ]
!234 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !235} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from luaL_Reg]
!235 = metadata !{i32 786454, metadata !101, null, metadata !"luaL_Reg", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !236} ; [ DW_TAG_typedef ] [luaL_Reg] [line 26, size 0, align 0, offset 0] [from luaL_Reg]
!236 = metadata !{i32 786451, metadata !101, null, metadata !"luaL_Reg", i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !237, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Reg] [line 23, size 64, align 32, offset 0] [def] [from ]
!237 = metadata !{metadata !238, metadata !239}
!238 = metadata !{i32 786445, metadata !101, metadata !236, metadata !"name", i32 24, i64 32, i64 32, i64 0, i32 0, metadata !58} ; [ DW_TAG_member ] [name] [line 24, size 32, align 32, offset 0] [from ]
!239 = metadata !{i32 786445, metadata !101, metadata !236, metadata !"func", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !240} ; [ DW_TAG_member ] [func] [line 25, size 32, align 32, offset 32] [from lua_CFunction]
!240 = metadata !{i32 786454, metadata !39, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !241} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!241 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!242 = metadata !{metadata !243}
!243 = metadata !{i32 786465, i64 0, i64 18}      ; [ DW_TAG_subrange_type ] [0, 17]
!244 = metadata !{i32 786484, i32 0, null, metadata !"nativeendian", metadata !"nativeendian", metadata !"", metadata !33, i32 1125, metadata !245, i32 1, i32 1, %union.anon* @nativeendian, null} ; [ DW_TAG_variable ] [nativeendian] [line 1125] [local] [def]
!245 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !246} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!246 = metadata !{i32 786455, metadata !4, null, metadata !"", i32 1122, i64 32, i64 32, i64 0, i32 0, null, metadata !247, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 1122, size 32, align 32, offset 0] [def] [from ]
!247 = metadata !{metadata !248, metadata !249}
!248 = metadata !{i32 786445, metadata !4, metadata !246, metadata !"dummy", i32 1123, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [dummy] [line 1123, size 32, align 32, offset 0] [from int]
!249 = metadata !{i32 786445, metadata !4, metadata !246, metadata !"little", i32 1124, i64 8, i64 8, i64 0, i32 0, metadata !50} ; [ DW_TAG_member ] [little] [line 1124, size 8, align 8, offset 0] [from char]
!250 = metadata !{i32 (%struct.lua_State*)* @luaopen_string}
!251 = metadata !{metadata !"luaopen_string"}
!252 = metadata !{void (%struct.lua_State*, double, i32)* @luaL_checkversion_}
!253 = metadata !{metadata !"luaL_checkversion_"}
!254 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_createtable}
!255 = metadata !{metadata !"lua_createtable"}
!256 = metadata !{void (%struct.lua_State*, %struct.luaL_Reg*, i32)* @luaL_setfuncs}
!257 = metadata !{metadata !"luaL_setfuncs"}
!258 = metadata !{void (%struct.lua_State*)* @createmetatable}
!259 = metadata !{metadata !"createmetatable"}
!260 = metadata !{i8* (%struct.lua_State*, i8*)* @lua_pushstring}
!261 = metadata !{metadata !"lua_pushstring"}
!262 = metadata !{void (%struct.lua_State*, i32)* @lua_pushvalue}
!263 = metadata !{metadata !"lua_pushvalue"}
!264 = metadata !{i32 (%struct.lua_State*, i32)* @lua_setmetatable}
!265 = metadata !{metadata !"lua_setmetatable"}
!266 = metadata !{void (%struct.lua_State*, i32)* @lua_settop}
!267 = metadata !{metadata !"lua_settop"}
!268 = metadata !{void (%struct.lua_State*, i32, i8*)* @lua_setfield}
!269 = metadata !{metadata !"lua_setfield"}
!270 = metadata !{i32 (%struct.lua_State*)* @str_byte}
!271 = metadata !{metadata !"str_byte"}
!272 = metadata !{i32 (%struct.lua_State*)* @str_char}
!273 = metadata !{metadata !"str_char"}
!274 = metadata !{i32 (%struct.lua_State*)* @str_dump}
!275 = metadata !{metadata !"str_dump"}
!276 = metadata !{i32 (%struct.lua_State*)* @str_find}
!277 = metadata !{metadata !"str_find"}
!278 = metadata !{i32 (%struct.lua_State*)* @str_format}
!279 = metadata !{metadata !"str_format"}
!280 = metadata !{i32 (%struct.lua_State*)* @gmatch}
!281 = metadata !{metadata !"gmatch"}
!282 = metadata !{i32 (%struct.lua_State*)* @str_gsub}
!283 = metadata !{metadata !"str_gsub"}
!284 = metadata !{i32 (%struct.lua_State*)* @str_len}
!285 = metadata !{metadata !"str_len"}
!286 = metadata !{i32 (%struct.lua_State*)* @str_lower}
!287 = metadata !{metadata !"str_lower"}
!288 = metadata !{i32 (%struct.lua_State*)* @str_match}
!289 = metadata !{metadata !"str_match"}
!290 = metadata !{i32 (%struct.lua_State*)* @str_rep}
!291 = metadata !{metadata !"str_rep"}
!292 = metadata !{i32 (%struct.lua_State*)* @str_reverse}
!293 = metadata !{metadata !"str_reverse"}
!294 = metadata !{i32 (%struct.lua_State*)* @str_sub}
!295 = metadata !{metadata !"str_sub"}
!296 = metadata !{i32 (%struct.lua_State*)* @str_upper}
!297 = metadata !{metadata !"str_upper"}
!298 = metadata !{i32 (%struct.lua_State*)* @str_pack}
!299 = metadata !{metadata !"str_pack"}
!300 = metadata !{i32 (%struct.lua_State*)* @str_packsize}
!301 = metadata !{metadata !"str_packsize"}
!302 = metadata !{i32 (%struct.lua_State*)* @str_unpack}
!303 = metadata !{metadata !"str_unpack"}
!304 = metadata !{i8* (%struct.lua_State*, i32, i32*)* @luaL_checklstring}
!305 = metadata !{metadata !"luaL_checklstring"}
!306 = metadata !{i64 (i64, i32)* @posrelat}
!307 = metadata !{metadata !"posrelat"}
!308 = metadata !{i64 (%struct.lua_State*, i32, i64)* @luaL_optinteger}
!309 = metadata !{metadata !"luaL_optinteger"}
!310 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @luaL_argerror}
!311 = metadata !{metadata !"luaL_argerror"}
!312 = metadata !{void (%struct.lua_State*, %struct.Header*)* @initheader}
!313 = metadata !{metadata !"initheader"}
!314 = metadata !{i32 (%struct.Header*, i32, i8**, i32*, i32*)* @getdetails}
!315 = metadata !{metadata !"getdetails"}
!316 = metadata !{void (%struct.lua_State*, i32, i8*)* @luaL_checkstack}
!317 = metadata !{metadata !"luaL_checkstack"}
!318 = metadata !{i64 (%struct.lua_State*, i8*, i32, i32, i32)* @unpackint}
!319 = metadata !{metadata !"unpackint"}
!320 = metadata !{void (%struct.lua_State*, i64)* @lua_pushinteger}
!321 = metadata !{metadata !"lua_pushinteger"}
!322 = metadata !{void (i8*, i8*, i32, i32)* @copywithendian}
!323 = metadata !{metadata !"copywithendian"}
!324 = metadata !{void (%struct.lua_State*, double)* @lua_pushnumber}
!325 = metadata !{metadata !"lua_pushnumber"}
!326 = metadata !{i8* (%struct.lua_State*, i8*, i32)* @lua_pushlstring}
!327 = metadata !{metadata !"lua_pushlstring"}
!328 = metadata !{i32 (i8*)* @strlen}
!329 = metadata !{metadata !"strlen"}
!330 = metadata !{i32 (%struct.lua_State*, i8*, ...)* @luaL_error}
!331 = metadata !{metadata !"luaL_error"}
!332 = metadata !{i32 (%struct.Header*, i8**, i32*)* @getoption}
!333 = metadata !{metadata !"getoption"}
!334 = metadata !{i32 (%struct.Header*, i8**, i32)* @getnumlimit}
!335 = metadata !{metadata !"getnumlimit"}
!336 = metadata !{i32 (i8**, i32)* @getnum}
!337 = metadata !{metadata !"getnum"}
!338 = metadata !{i32 (i32)* @digit}
!339 = metadata !{metadata !"digit"}
!340 = metadata !{void (%struct.lua_State*)* @lua_pushnil}
!341 = metadata !{metadata !"lua_pushnil"}
!342 = metadata !{void (%struct.lua_State*, %struct.luaL_Buffer*)* @luaL_buffinit}
!343 = metadata !{metadata !"luaL_buffinit"}
!344 = metadata !{i8* (%struct.luaL_Buffer*, i32)* @luaL_prepbuffsize}
!345 = metadata !{metadata !"luaL_prepbuffsize"}
!346 = metadata !{i64 (%struct.lua_State*, i32)* @luaL_checkinteger}
!347 = metadata !{metadata !"luaL_checkinteger"}
!348 = metadata !{void (%struct.luaL_Buffer*, i64, i32, i32, i32)* @packint}
!349 = metadata !{metadata !"packint"}
!350 = metadata !{double (%struct.lua_State*, i32)* @luaL_checknumber}
!351 = metadata !{metadata !"luaL_checknumber"}
!352 = metadata !{void (%struct.luaL_Buffer*, i8*, i32)* @luaL_addlstring}
!353 = metadata !{metadata !"luaL_addlstring"}
!354 = metadata !{void (%struct.luaL_Buffer*)* @luaL_pushresult}
!355 = metadata !{metadata !"luaL_pushresult"}
!356 = metadata !{i8* (%struct.lua_State*, %struct.luaL_Buffer*, i32)* @luaL_buffinitsize}
!357 = metadata !{metadata !"luaL_buffinitsize"}
!358 = metadata !{i32 (i32)* @toupper}
!359 = metadata !{metadata !"toupper"}
!360 = metadata !{void (%struct.luaL_Buffer*, i32)* @luaL_pushresultsize}
!361 = metadata !{metadata !"luaL_pushresultsize"}
!362 = metadata !{i8* (%struct.lua_State*, i32, i8*, i32*)* @luaL_optlstring}
!363 = metadata !{metadata !"luaL_optlstring"}
!364 = metadata !{i32 (%struct.lua_State*, i32)* @str_find_aux}
!365 = metadata !{metadata !"str_find_aux"}
!366 = metadata !{i32 (%struct.lua_State*, i32)* @lua_toboolean}
!367 = metadata !{metadata !"lua_toboolean"}
!368 = metadata !{i32 (i8*, i32)* @nospecials}
!369 = metadata !{metadata !"nospecials"}
!370 = metadata !{i8* (i8*, i32, i8*, i32)* @lmemfind}
!371 = metadata !{metadata !"lmemfind"}
!372 = metadata !{void (%struct.MatchState*, %struct.lua_State*, i8*, i32, i8*, i32)* @prepstate}
!373 = metadata !{metadata !"prepstate"}
!374 = metadata !{void (%struct.MatchState*)* @reprepstate}
!375 = metadata !{metadata !"reprepstate"}
!376 = metadata !{i8* (%struct.MatchState*, i8*, i8*)* @match}
!377 = metadata !{metadata !"match"}
!378 = metadata !{i32 (%struct.MatchState*, i8*, i8*)* @push_captures}
!379 = metadata !{metadata !"push_captures"}
!380 = metadata !{void (%struct.MatchState*, i32, i8*, i8*)* @push_onecapture}
!381 = metadata !{metadata !"push_onecapture"}
!382 = metadata !{i8* (%struct.MatchState*, i8*, i8*, i32)* @start_capture}
!383 = metadata !{metadata !"start_capture"}
!384 = metadata !{i8* (%struct.MatchState*, i8*, i8*)* @end_capture}
!385 = metadata !{metadata !"end_capture"}
!386 = metadata !{i8* (%struct.MatchState*, i8*, i8*)* @matchbalance}
!387 = metadata !{metadata !"matchbalance"}
!388 = metadata !{i8* (%struct.MatchState*, i8*)* @classend}
!389 = metadata !{metadata !"classend"}
!390 = metadata !{i32 (i32, i8*, i8*)* @matchbracketclass}
!391 = metadata !{metadata !"matchbracketclass"}
!392 = metadata !{i8* (%struct.MatchState*, i8*, i32)* @match_capture}
!393 = metadata !{metadata !"match_capture"}
!394 = metadata !{i32 (%struct.MatchState*, i8*, i8*, i8*)* @singlematch}
!395 = metadata !{metadata !"singlematch"}
!396 = metadata !{i8* (%struct.MatchState*, i8*, i8*, i8*)* @max_expand}
!397 = metadata !{metadata !"max_expand"}
!398 = metadata !{i8* (%struct.MatchState*, i8*, i8*, i8*)* @min_expand}
!399 = metadata !{metadata !"min_expand"}
!400 = metadata !{i32 (i32, i32)* @match_class}
!401 = metadata !{metadata !"match_class"}
!402 = metadata !{i32 (i32)* @tolower}
!403 = metadata !{metadata !"tolower"}
!404 = metadata !{i16** ()* @__ctype_b_loc}
!405 = metadata !{metadata !"__ctype_b_loc"}
!406 = metadata !{i32 (%struct.MatchState*, i32)* @check_capture}
!407 = metadata !{metadata !"check_capture"}
!408 = metadata !{i32 (i8*, i8*, i32)* @memcmp}
!409 = metadata !{metadata !"memcmp"}
!410 = metadata !{i32 (%struct.MatchState*)* @capture_to_close}
!411 = metadata !{metadata !"capture_to_close"}
!412 = metadata !{i8* (i8*, i32, i32)* @memchr}
!413 = metadata !{metadata !"memchr"}
!414 = metadata !{i8* (i8*, i8*)* @strpbrk}
!415 = metadata !{metadata !"strpbrk"}
!416 = metadata !{i32 (%struct.lua_State*, i32)* @lua_type}
!417 = metadata !{metadata !"lua_type"}
!418 = metadata !{void (%struct.MatchState*, %struct.luaL_Buffer*, i8*, i8*, i32)* @add_value}
!419 = metadata !{metadata !"add_value"}
!420 = metadata !{void (%struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*)* @lua_callk}
!421 = metadata !{metadata !"lua_callk"}
!422 = metadata !{i32 (%struct.lua_State*, i32)* @lua_gettable}
!423 = metadata !{metadata !"lua_gettable"}
!424 = metadata !{void (%struct.MatchState*, %struct.luaL_Buffer*, i8*, i8*)* @add_s}
!425 = metadata !{metadata !"add_s"}
!426 = metadata !{i32 (%struct.lua_State*, i32)* @lua_isstring}
!427 = metadata !{metadata !"lua_isstring"}
!428 = metadata !{i8* (%struct.lua_State*, i32)* @lua_typename}
!429 = metadata !{metadata !"lua_typename"}
!430 = metadata !{void (%struct.luaL_Buffer*)* @luaL_addvalue}
!431 = metadata !{metadata !"luaL_addvalue"}
!432 = metadata !{i8* (%struct.lua_State*, i32, i32*)* @lua_tolstring}
!433 = metadata !{metadata !"lua_tolstring"}
!434 = metadata !{i8* (%struct.lua_State*, i32, i32*)* @luaL_tolstring}
!435 = metadata !{metadata !"luaL_tolstring"}
!436 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_rotate}
!437 = metadata !{metadata !"lua_rotate"}
!438 = metadata !{i8* (%struct.lua_State*, i32)* @lua_newuserdata}
!439 = metadata !{metadata !"lua_newuserdata"}
!440 = metadata !{void (%struct.lua_State*, i32 (%struct.lua_State*)*, i32)* @lua_pushcclosure}
!441 = metadata !{metadata !"lua_pushcclosure"}
!442 = metadata !{i32 (%struct.lua_State*)* @gmatch_aux}
!443 = metadata !{metadata !"gmatch_aux"}
!444 = metadata !{i8* (%struct.lua_State*, i32)* @lua_touserdata}
!445 = metadata !{metadata !"lua_touserdata"}
!446 = metadata !{i32 (%struct.lua_State*)* @lua_gettop}
!447 = metadata !{metadata !"lua_gettop"}
!448 = metadata !{i8* (%struct.lua_State*, i8*, i8*)* @scanformat}
!449 = metadata !{metadata !"scanformat"}
!450 = metadata !{i32 (i8*, i32, i8*, ...)* @snprintf}
!451 = metadata !{metadata !"snprintf"}
!452 = metadata !{void (i8*, i8*)* @addlenmod}
!453 = metadata !{metadata !"addlenmod"}
!454 = metadata !{void (%struct.lua_State*, %struct.luaL_Buffer*, i32)* @addliteral}
!455 = metadata !{metadata !"addliteral"}
!456 = metadata !{i8* (i8*, i32)* @strchr}
!457 = metadata !{metadata !"strchr"}
!458 = metadata !{void (%struct.luaL_Buffer*, i8*, i32)* @addquoted}
!459 = metadata !{metadata !"addquoted"}
!460 = metadata !{i32 (%struct.lua_State*, i32)* @lua_isinteger}
!461 = metadata !{metadata !"lua_isinteger"}
!462 = metadata !{double (%struct.lua_State*, i32, i32*)* @lua_tonumberx}
!463 = metadata !{metadata !"lua_tonumberx"}
!464 = metadata !{void (i8*, i32)* @checkdp}
!465 = metadata !{metadata !"checkdp"}
!466 = metadata !{i64 (%struct.lua_State*, i32, i32*)* @lua_tointegerx}
!467 = metadata !{metadata !"lua_tointegerx"}
!468 = metadata !{%struct.lconv* ()* @localeconv}
!469 = metadata !{metadata !"localeconv"}
!470 = metadata !{void (%struct.luaL_Buffer*, i8*)* @luaL_addstring}
!471 = metadata !{metadata !"luaL_addstring"}
!472 = metadata !{i8* (i8*, i8*)* @strcpy}
!473 = metadata !{metadata !"strcpy"}
!474 = metadata !{void (%struct.lua_State*, i32, i32)* @luaL_checktype}
!475 = metadata !{metadata !"luaL_checktype"}
!476 = metadata !{i32 (%struct.lua_State*, i32 (%struct.lua_State*, i8*, i32, i8*)*, i8*, i32)* @lua_dump}
!477 = metadata !{metadata !"lua_dump"}
!478 = metadata !{i32 (%struct.lua_State*, i8*, i32, i8*)* @writer}
!479 = metadata !{metadata !"writer"}
!480 = metadata !{metadata !"int.lua_State *.1"}
!481 = metadata !{metadata !"void.lua_State *.1.lua_Number.0.size_t.0"}
!482 = metadata !{metadata !"void.lua_State *.1.int.0.int.0"}
!483 = metadata !{metadata !"void.lua_State *.1.const luaL_Reg *.1.int.0"}
!484 = metadata !{metadata !"void.lua_State *.1"}
!485 = metadata !{metadata !"const char .lua_State *.1.const char *.1"}
!486 = metadata !{metadata !"void.lua_State *.1.int.0"}
!487 = metadata !{metadata !"int.lua_State *.1.int.0"}
!488 = metadata !{metadata !"void.lua_State *.1.int.0.const char *.1"}
!489 = metadata !{metadata !"const char .lua_State *.1.int.0.size_t *.1"}
!490 = metadata !{metadata !"lua_Integer.lua_Integer.0.size_t.0"}
!491 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0.lua_Integer.0"}
!492 = metadata !{metadata !"int.lua_State *.1.int.0.const char *.1"}
!493 = metadata !{metadata !"void.lua_State *.1.Header *.1"}
!494 = metadata !{metadata !"KOption.Header *.1.size_t.0.const char **.1.int *.1.int *.1"}
!495 = metadata !{metadata !"lua_Integer.lua_State *.1.const char *.1.int.0.int.0.int.0"}
!496 = metadata !{metadata !"void.lua_State *.1.lua_Integer.0"}
!497 = metadata !{metadata !"void.volatile char *.1.const volatile char *.1.int.0.int.0"}
!498 = metadata !{metadata !"void.lua_State *.1.lua_Number.0"}
!499 = metadata !{metadata !"const char .lua_State *.1.const char *.1.size_t.0"}
!500 = metadata !{metadata !"unsigned int.const char *.1"}
!501 = metadata !{metadata !"int.lua_State *.1.const char *.1"}
!502 = metadata !{metadata !"KOption.Header *.1.const char **.1.int *.1"}
!503 = metadata !{metadata !"int.Header *.1.const char **.1.int.0"}
!504 = metadata !{metadata !"int.const char **.1.int.0"}
!505 = metadata !{metadata !"int.int.0"}
!506 = metadata !{metadata !"void.lua_State *.1.luaL_Buffer *.1"}
!507 = metadata !{metadata !"char .luaL_Buffer *.1.size_t.0"}
!508 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0"}
!509 = metadata !{metadata !"void.luaL_Buffer *.1.lua_Unsigned.0.int.0.int.0.int.0"}
!510 = metadata !{metadata !"lua_Number.lua_State *.1.int.0"}
!511 = metadata !{metadata !"void.luaL_Buffer *.1.const char *.1.size_t.0"}
!512 = metadata !{metadata !"void.luaL_Buffer *.1"}
!513 = metadata !{metadata !"char .lua_State *.1.luaL_Buffer *.1.size_t.0"}
!514 = metadata !{metadata !"void.luaL_Buffer *.1.size_t.0"}
!515 = metadata !{metadata !"const char .lua_State *.1.int.0.const char *.1.size_t *.1"}
!516 = metadata !{metadata !"int.const char *.1.size_t.0"}
!517 = metadata !{metadata !"const char .const char *.1.size_t.0.const char *.1.size_t.0"}
!518 = metadata !{metadata !"void.MatchState *.1.lua_State *.1.const char *.1.size_t.0.const char *.1.size_t.0"}
!519 = metadata !{metadata !"void.MatchState *.1"}
!520 = metadata !{metadata !"const char .MatchState *.1.const char *.1.const char *.1"}
!521 = metadata !{metadata !"int.MatchState *.1.const char *.1.const char *.1"}
!522 = metadata !{metadata !"void.MatchState *.1.int.0.const char *.1.const char *.1"}
!523 = metadata !{metadata !"const char .MatchState *.1.const char *.1.const char *.1.int.0"}
!524 = metadata !{metadata !"const char .MatchState *.1.const char *.1"}
!525 = metadata !{metadata !"int.int.0.const char *.1.const char *.1"}
!526 = metadata !{metadata !"const char .MatchState *.1.const char *.1.int.0"}
!527 = metadata !{metadata !"int.MatchState *.1.const char *.1.const char *.1.const char *.1"}
!528 = metadata !{metadata !"const char .MatchState *.1.const char *.1.const char *.1.const char *.1"}
!529 = metadata !{metadata !"int.int.0.int.0"}
!530 = metadata !{metadata !"const unsigned short *."}
!531 = metadata !{metadata !"int.MatchState *.1.int.0"}
!532 = metadata !{metadata !"int.const void *.1.const void *.1.size_t.0"}
!533 = metadata !{metadata !"int.MatchState *.1"}
!534 = metadata !{metadata !"void .const void *.1.int.0.size_t.0"}
!535 = metadata !{metadata !"char .const char *.1.const char *.1"}
!536 = metadata !{metadata !"void.MatchState *.1.luaL_Buffer *.1.const char *.1.const char *.1.int.0"}
!537 = metadata !{metadata !"void.lua_State *.1.int.0.int.0.lua_KContext.0.lua_KFunction.1"}
!538 = metadata !{metadata !"void.MatchState *.1.luaL_Buffer *.1.const char *.1.const char *.1"}
!539 = metadata !{metadata !"const char .lua_State *.1.int.0"}
!540 = metadata !{metadata !"void .lua_State *.1.size_t.0"}
!541 = metadata !{metadata !"void.lua_State *.1.lua_CFunction.1.int.0"}
!542 = metadata !{metadata !"void .lua_State *.1.int.0"}
!543 = metadata !{metadata !"const char .lua_State *.1.const char *.1.char *.1"}
!544 = metadata !{metadata !"int.char *restrict.1.size_t.0.const char *restrict.1"}
!545 = metadata !{metadata !"void.char *.1.const char *.1"}
!546 = metadata !{metadata !"void.lua_State *.1.luaL_Buffer *.1.int.0"}
!547 = metadata !{metadata !"char .const char *.1.int.0"}
!548 = metadata !{metadata !"lua_Number.lua_State *.1.int.0.int *.1"}
!549 = metadata !{metadata !"void.char *.1.int.0"}
!550 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0.int *.1"}
!551 = metadata !{metadata !"struct lconv ."}
!552 = metadata !{metadata !"void.luaL_Buffer *.1.const char *.1"}
!553 = metadata !{metadata !"char .char *restrict.1.const char *restrict.1"}
!554 = metadata !{metadata !"int.lua_State *.1.lua_Writer.1.void *.1.int.0"}
!555 = metadata !{metadata !"int.lua_State *.1.const void *.1.size_t.0.void *.1"}
!556 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lualib.h"}
!557 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h"}
!558 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h"}
!559 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstrlib.c"}
!560 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstring.h"}
!561 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cctype.h"}
!562 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdio.h"}
!563 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Clocale.h"}
!564 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!565 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!566 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!567 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!568 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!569 = metadata !{i32 786689, metadata !32, metadata !"L", metadata !33, i32 16778793, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1577]
!570 = metadata !{i32 1577, i32 43, metadata !32, null}
!571 = metadata !{i32 1578, i32 3, metadata !32, null}
!572 = metadata !{i32 1579, i32 3, metadata !32, null}
!573 = metadata !{i32 1580, i32 3, metadata !32, null}
!574 = metadata !{i32 786689, metadata !41, metadata !"L", metadata !33, i32 16778778, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1562]
!575 = metadata !{i32 1562, i32 41, metadata !41, null}
!576 = metadata !{i32 1563, i32 3, metadata !41, null}
!577 = metadata !{i32 1564, i32 3, metadata !41, null}
!578 = metadata !{i32 1565, i32 3, metadata !41, null}
!579 = metadata !{i32 1566, i32 3, metadata !41, null}
!580 = metadata !{i32 1567, i32 3, metadata !41, null}
!581 = metadata !{i32 1568, i32 3, metadata !41, null}
!582 = metadata !{i32 1569, i32 3, metadata !41, null}
!583 = metadata !{i32 1570, i32 3, metadata !41, null}
!584 = metadata !{i32 1571, i32 1, metadata !41, null}
!585 = metadata !{i32 786689, metadata !230, metadata !"L", metadata !33, i32 16777364, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 148]
!586 = metadata !{i32 148, i32 33, metadata !230, null}
!587 = metadata !{i32 786688, metadata !230, metadata !"l", metadata !33, i32 149, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 149]
!588 = metadata !{i32 149, i32 10, metadata !230, null}
!589 = metadata !{i32 786688, metadata !230, metadata !"s", metadata !33, i32 150, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 150]
!590 = metadata !{i32 150, i32 15, metadata !230, null}
!591 = metadata !{i32 150, i32 19, metadata !230, null}
!592 = metadata !{i32 786688, metadata !230, metadata !"posi", metadata !33, i32 151, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [posi] [line 151]
!593 = metadata !{i32 151, i32 15, metadata !230, null}
!594 = metadata !{i32 151, i32 31, metadata !230, null}
!595 = metadata !{i32 151, i32 22, metadata !230, null}
!596 = metadata !{i32 786688, metadata !230, metadata !"pose", metadata !33, i32 152, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pose] [line 152]
!597 = metadata !{i32 152, i32 15, metadata !230, null}
!598 = metadata !{i32 152, i32 31, metadata !230, null}
!599 = metadata !{i32 152, i32 22, metadata !230, null}
!600 = metadata !{i32 786688, metadata !230, metadata !"n", metadata !33, i32 153, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 153]
!601 = metadata !{i32 153, i32 7, metadata !230, null}
!602 = metadata !{i32 786688, metadata !230, metadata !"i", metadata !33, i32 153, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 153]
!603 = metadata !{i32 153, i32 10, metadata !230, null}
!604 = metadata !{i32 154, i32 7, metadata !605, null}
!605 = metadata !{i32 786443, metadata !4, metadata !230, i32 154, i32 7, i32 0, i32 248} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!606 = metadata !{i32 154, i32 17, metadata !607, null}
!607 = metadata !{i32 786443, metadata !4, metadata !605, i32 154, i32 17, i32 1, i32 253} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!608 = metadata !{i32 155, i32 7, metadata !609, null}
!609 = metadata !{i32 786443, metadata !4, metadata !230, i32 155, i32 7, i32 0, i32 249} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!610 = metadata !{i32 155, i32 30, metadata !611, null}
!611 = metadata !{i32 786443, metadata !4, metadata !609, i32 155, i32 30, i32 1, i32 254} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!612 = metadata !{i32 156, i32 7, metadata !613, null}
!613 = metadata !{i32 786443, metadata !4, metadata !230, i32 156, i32 7, i32 0, i32 250} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!614 = metadata !{i32 156, i32 20, metadata !615, null}
!615 = metadata !{i32 786443, metadata !4, metadata !613, i32 156, i32 20, i32 1, i32 255} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!616 = metadata !{i32 157, i32 7, metadata !617, null}
!617 = metadata !{i32 786443, metadata !4, metadata !230, i32 157, i32 7, i32 0, i32 251} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!618 = metadata !{i32 158, i32 12, metadata !617, null}
!619 = metadata !{i32 159, i32 3, metadata !230, null}
!620 = metadata !{i32 160, i32 3, metadata !230, null}
!621 = metadata !{i32 161, i32 8, metadata !622, null}
!622 = metadata !{i32 786443, metadata !4, metadata !230, i32 161, i32 3, i32 0, i32 252} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!623 = metadata !{i32 161, i32 8, metadata !624, null}
!624 = metadata !{i32 786443, metadata !4, metadata !625, i32 161, i32 8, i32 2, i32 257} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!625 = metadata !{i32 786443, metadata !4, metadata !622, i32 161, i32 8, i32 1, i32 256} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!626 = metadata !{i32 162, i32 5, metadata !622, null}
!627 = metadata !{i32 161, i32 18, metadata !622, null}
!628 = metadata !{i32 163, i32 3, metadata !230, null}
!629 = metadata !{i32 164, i32 1, metadata !230, null}
!630 = metadata !{i32 786689, metadata !229, metadata !"L", metadata !33, i32 16777383, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 167]
!631 = metadata !{i32 167, i32 33, metadata !229, null}
!632 = metadata !{i32 786688, metadata !229, metadata !"n", metadata !33, i32 168, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 168]
!633 = metadata !{i32 168, i32 7, metadata !229, null}
!634 = metadata !{i32 168, i32 11, metadata !229, null}
!635 = metadata !{i32 786688, metadata !229, metadata !"i", metadata !33, i32 169, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 169]
!636 = metadata !{i32 169, i32 7, metadata !229, null}
!637 = metadata !{i32 786688, metadata !229, metadata !"b", metadata !33, i32 170, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 170]
!638 = metadata !{i32 170, i32 15, metadata !229, null}
!639 = metadata !{i32 786688, metadata !229, metadata !"p", metadata !33, i32 171, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 171]
!640 = metadata !{i32 171, i32 9, metadata !229, null}
!641 = metadata !{i32 171, i32 13, metadata !229, null}
!642 = metadata !{i32 172, i32 8, metadata !643, null}
!643 = metadata !{i32 786443, metadata !4, metadata !229, i32 172, i32 3, i32 0, i32 246} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!644 = metadata !{i32 172, i32 8, metadata !645, null}
!645 = metadata !{i32 786443, metadata !4, metadata !646, i32 172, i32 8, i32 2, i32 262} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!646 = metadata !{i32 786443, metadata !4, metadata !643, i32 172, i32 8, i32 1, i32 258} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!647 = metadata !{i32 786688, metadata !648, metadata !"c", metadata !33, i32 173, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 173]
!648 = metadata !{i32 786443, metadata !4, metadata !643, i32 172, i32 24, i32 0, i32 247} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!649 = metadata !{i32 173, i32 17, metadata !648, null}
!650 = metadata !{i32 173, i32 21, metadata !648, null}
!651 = metadata !{i32 174, i32 5, metadata !648, null}
!652 = metadata !{i32 174, i32 5, metadata !653, null}
!653 = metadata !{i32 786443, metadata !4, metadata !648, i32 174, i32 5, i32 2, i32 260} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!654 = metadata !{i32 174, i32 5, metadata !655, null}
!655 = metadata !{i32 786443, metadata !4, metadata !656, i32 174, i32 5, i32 3, i32 261} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!656 = metadata !{i32 786443, metadata !4, metadata !648, i32 174, i32 5, i32 1, i32 259} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!657 = metadata !{i32 175, i32 5, metadata !648, null}
!658 = metadata !{i32 176, i32 3, metadata !648, null}
!659 = metadata !{i32 172, i32 19, metadata !643, null}
!660 = metadata !{i32 177, i32 3, metadata !229, null}
!661 = metadata !{i32 178, i32 3, metadata !229, null}
!662 = metadata !{i32 786689, metadata !222, metadata !"L", metadata !33, i32 16777405, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 189]
!663 = metadata !{i32 189, i32 33, metadata !222, null}
!664 = metadata !{i32 786688, metadata !222, metadata !"b", metadata !33, i32 190, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 190]
!665 = metadata !{i32 190, i32 15, metadata !222, null}
!666 = metadata !{i32 786688, metadata !222, metadata !"strip", metadata !33, i32 191, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [strip] [line 191]
!667 = metadata !{i32 191, i32 7, metadata !222, null}
!668 = metadata !{i32 191, i32 15, metadata !222, null}
!669 = metadata !{i32 192, i32 3, metadata !222, null}
!670 = metadata !{i32 193, i32 3, metadata !222, null}
!671 = metadata !{i32 194, i32 3, metadata !222, null}
!672 = metadata !{i32 195, i32 7, metadata !673, null}
!673 = metadata !{i32 786443, metadata !4, metadata !222, i32 195, i32 7, i32 0, i32 245} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!674 = metadata !{i32 196, i32 12, metadata !673, null}
!675 = metadata !{i32 197, i32 3, metadata !222, null}
!676 = metadata !{i32 198, i32 3, metadata !222, null}
!677 = metadata !{i32 199, i32 1, metadata !222, null}
!678 = metadata !{i32 786689, metadata !221, metadata !"L", metadata !33, i32 16777870, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 654]
!679 = metadata !{i32 654, i32 33, metadata !221, null}
!680 = metadata !{i32 655, i32 10, metadata !221, null}
!681 = metadata !{i32 786689, metadata !205, metadata !"L", metadata !33, i32 16778231, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1015]
!682 = metadata !{i32 1015, i32 35, metadata !205, null}
!683 = metadata !{i32 786688, metadata !205, metadata !"top", metadata !33, i32 1016, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [top] [line 1016]
!684 = metadata !{i32 1016, i32 7, metadata !205, null}
!685 = metadata !{i32 1016, i32 13, metadata !205, null}
!686 = metadata !{i32 786688, metadata !205, metadata !"arg", metadata !33, i32 1017, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 1017]
!687 = metadata !{i32 1017, i32 7, metadata !205, null}
!688 = metadata !{i32 1017, i32 3, metadata !205, null}
!689 = metadata !{i32 786688, metadata !205, metadata !"sfl", metadata !33, i32 1018, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sfl] [line 1018]
!690 = metadata !{i32 1018, i32 10, metadata !205, null}
!691 = metadata !{i32 786688, metadata !205, metadata !"strfrmt", metadata !33, i32 1019, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [strfrmt] [line 1019]
!692 = metadata !{i32 1019, i32 15, metadata !205, null}
!693 = metadata !{i32 1019, i32 25, metadata !205, null}
!694 = metadata !{i32 786688, metadata !205, metadata !"strfrmt_end", metadata !33, i32 1020, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [strfrmt_end] [line 1020]
!695 = metadata !{i32 1020, i32 15, metadata !205, null}
!696 = metadata !{i32 1020, i32 3, metadata !205, null}
!697 = metadata !{i32 786688, metadata !205, metadata !"b", metadata !33, i32 1021, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1021]
!698 = metadata !{i32 1021, i32 15, metadata !205, null}
!699 = metadata !{i32 1022, i32 3, metadata !205, null}
!700 = metadata !{i32 1023, i32 3, metadata !205, null}
!701 = metadata !{i32 1023, i32 3, metadata !702, null}
!702 = metadata !{i32 786443, metadata !4, metadata !205, i32 1023, i32 3, i32 1, i32 263} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!703 = metadata !{i32 1024, i32 9, metadata !704, null}
!704 = metadata !{i32 786443, metadata !4, metadata !705, i32 1024, i32 9, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!705 = metadata !{i32 786443, metadata !4, metadata !205, i32 1023, i32 33, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!706 = metadata !{i32 1025, i32 7, metadata !704, null}
!707 = metadata !{i32 1025, i32 7, metadata !708, null}
!708 = metadata !{i32 786443, metadata !4, metadata !704, i32 1025, i32 7, i32 2, i32 265} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!709 = metadata !{i32 1025, i32 7, metadata !710, null}
!710 = metadata !{i32 786443, metadata !4, metadata !711, i32 1025, i32 7, i32 3, i32 266} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!711 = metadata !{i32 786443, metadata !4, metadata !704, i32 1025, i32 7, i32 1, i32 264} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!712 = metadata !{i32 1026, i32 14, metadata !713, null}
!713 = metadata !{i32 786443, metadata !4, metadata !704, i32 1026, i32 14, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!714 = metadata !{i32 1027, i32 7, metadata !713, null}
!715 = metadata !{i32 1027, i32 7, metadata !716, null}
!716 = metadata !{i32 786443, metadata !4, metadata !713, i32 1027, i32 7, i32 2, i32 268} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!717 = metadata !{i32 1027, i32 7, metadata !718, null}
!718 = metadata !{i32 786443, metadata !4, metadata !719, i32 1027, i32 7, i32 3, i32 269} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!719 = metadata !{i32 786443, metadata !4, metadata !713, i32 1027, i32 7, i32 1, i32 267} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!720 = metadata !{i32 786688, metadata !721, metadata !"form", metadata !33, i32 1029, metadata !722, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [form] [line 1029]
!721 = metadata !{i32 786443, metadata !4, metadata !713, i32 1028, i32 10, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!722 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !50, metadata !144, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from char]
!723 = metadata !{i32 1029, i32 12, metadata !721, null}
!724 = metadata !{i32 786688, metadata !721, metadata !"buff", metadata !33, i32 1030, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 1030]
!725 = metadata !{i32 1030, i32 13, metadata !721, null}
!726 = metadata !{i32 1030, i32 20, metadata !721, null}
!727 = metadata !{i32 786688, metadata !721, metadata !"nb", metadata !33, i32 1031, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nb] [line 1031]
!728 = metadata !{i32 1031, i32 11, metadata !721, null}
!729 = metadata !{i32 1031, i32 7, metadata !721, null}
!730 = metadata !{i32 1032, i32 11, metadata !731, null}
!731 = metadata !{i32 786443, metadata !4, metadata !721, i32 1032, i32 11, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!732 = metadata !{i32 1033, i32 9, metadata !731, null}
!733 = metadata !{i32 1034, i32 17, metadata !721, null}
!734 = metadata !{i32 1035, i32 7, metadata !721, null}
!735 = metadata !{i32 1037, i32 16, metadata !736, null}
!736 = metadata !{i32 786443, metadata !4, metadata !737, i32 1036, i32 19, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!737 = metadata !{i32 786443, metadata !4, metadata !721, i32 1035, i32 27, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!738 = metadata !{i32 1038, i32 11, metadata !736, null}
!739 = metadata !{i32 786688, metadata !740, metadata !"n", metadata !33, i32 1042, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1042]
!740 = metadata !{i32 786443, metadata !4, metadata !737, i32 1041, i32 49, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!741 = metadata !{i32 1042, i32 23, metadata !740, null}
!742 = metadata !{i32 1042, i32 27, metadata !740, null}
!743 = metadata !{i32 1043, i32 11, metadata !740, null}
!744 = metadata !{i32 1044, i32 16, metadata !740, null}
!745 = metadata !{i32 1045, i32 11, metadata !740, null}
!746 = metadata !{i32 1048, i32 11, metadata !737, null}
!747 = metadata !{i32 1049, i32 11, metadata !737, null}
!748 = metadata !{i32 1049, i32 16, metadata !737, null}
!749 = metadata !{i32 1051, i32 11, metadata !737, null}
!750 = metadata !{i32 1054, i32 11, metadata !751, null}
!751 = metadata !{i32 786443, metadata !4, metadata !737, i32 1053, i32 29, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!752 = metadata !{i32 1055, i32 16, metadata !751, null}
!753 = metadata !{i32 1056, i32 11, metadata !751, null}
!754 = metadata !{i32 1059, i32 11, metadata !755, null}
!755 = metadata !{i32 786443, metadata !4, metadata !737, i32 1058, i32 19, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!756 = metadata !{i32 1060, i32 11, metadata !755, null}
!757 = metadata !{i32 786688, metadata !758, metadata !"l", metadata !33, i32 1063, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 1063]
!758 = metadata !{i32 786443, metadata !4, metadata !737, i32 1062, i32 19, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!759 = metadata !{i32 1063, i32 18, metadata !758, null}
!760 = metadata !{i32 786688, metadata !758, metadata !"s", metadata !33, i32 1064, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 1064]
!761 = metadata !{i32 1064, i32 23, metadata !758, null}
!762 = metadata !{i32 1064, i32 27, metadata !758, null}
!763 = metadata !{i32 1065, i32 15, metadata !764, null}
!764 = metadata !{i32 786443, metadata !4, metadata !758, i32 1065, i32 15, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!765 = metadata !{i32 1066, i32 13, metadata !764, null}
!766 = metadata !{i32 1068, i32 13, metadata !767, null}
!767 = metadata !{i32 786443, metadata !4, metadata !764, i32 1067, i32 16, i32 0, i32 215} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!768 = metadata !{i32 1068, i32 13, metadata !769, null}
!769 = metadata !{i32 786443, metadata !4, metadata !767, i32 1068, i32 13, i32 2, i32 271} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!770 = metadata !{i32 1068, i32 13, metadata !771, null}
!771 = metadata !{i32 786443, metadata !4, metadata !772, i32 1068, i32 13, i32 3, i32 272} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!772 = metadata !{i32 786443, metadata !4, metadata !767, i32 1068, i32 13, i32 1, i32 270} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!773 = metadata !{i32 1069, i32 18, metadata !774, null}
!774 = metadata !{i32 786443, metadata !4, metadata !767, i32 1069, i32 17, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!775 = metadata !{i32 1069, i32 18, metadata !776, null}
!776 = metadata !{i32 786443, metadata !4, metadata !774, i32 1069, i32 18, i32 1, i32 273} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!777 = metadata !{i32 1071, i32 15, metadata !778, null}
!778 = metadata !{i32 786443, metadata !4, metadata !774, i32 1069, i32 49, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!779 = metadata !{i32 1072, i32 13, metadata !778, null}
!780 = metadata !{i32 1074, i32 20, metadata !781, null}
!781 = metadata !{i32 786443, metadata !4, metadata !774, i32 1073, i32 18, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!782 = metadata !{i32 1075, i32 15, metadata !781, null}
!783 = metadata !{i32 1078, i32 11, metadata !758, null}
!784 = metadata !{i32 1081, i32 18, metadata !785, null}
!785 = metadata !{i32 786443, metadata !4, metadata !737, i32 1080, i32 18, i32 0, i32 219} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!786 = metadata !{i32 1086, i32 7, metadata !721, null}
!787 = metadata !{i32 1088, i32 3, metadata !705, null}
!788 = metadata !{i32 1089, i32 3, metadata !205, null}
!789 = metadata !{i32 1090, i32 3, metadata !205, null}
!790 = metadata !{i32 1091, i32 1, metadata !205, null}
!791 = metadata !{i32 786689, metadata !203, metadata !"L", metadata !33, i32 16777905, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 689]
!792 = metadata !{i32 689, i32 31, metadata !203, null}
!793 = metadata !{i32 786688, metadata !203, metadata !"ls", metadata !33, i32 690, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ls] [line 690]
!794 = metadata !{i32 690, i32 10, metadata !203, null}
!795 = metadata !{i32 786688, metadata !203, metadata !"lp", metadata !33, i32 690, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lp] [line 690]
!796 = metadata !{i32 690, i32 14, metadata !203, null}
!797 = metadata !{i32 786688, metadata !203, metadata !"s", metadata !33, i32 691, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 691]
!798 = metadata !{i32 691, i32 15, metadata !203, null}
!799 = metadata !{i32 691, i32 19, metadata !203, null}
!800 = metadata !{i32 786688, metadata !203, metadata !"p", metadata !33, i32 692, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 692]
!801 = metadata !{i32 692, i32 15, metadata !203, null}
!802 = metadata !{i32 692, i32 19, metadata !203, null}
!803 = metadata !{i32 786688, metadata !203, metadata !"gm", metadata !33, i32 693, metadata !804, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gm] [line 693]
!804 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !805} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from GMatchState]
!805 = metadata !{i32 786454, metadata !4, null, metadata !"GMatchState", i32 670, i64 0, i64 0, i64 0, i32 0, metadata !806} ; [ DW_TAG_typedef ] [GMatchState] [line 670, size 0, align 0, offset 0] [from GMatchState]
!806 = metadata !{i32 786451, metadata !4, null, metadata !"GMatchState", i32 665, i64 2336, i64 32, i32 0, i32 0, null, metadata !807, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [GMatchState] [line 665, size 2336, align 32, offset 0] [def] [from ]
!807 = metadata !{metadata !808, metadata !809, metadata !810, metadata !811}
!808 = metadata !{i32 786445, metadata !4, metadata !806, metadata !"src", i32 666, i64 32, i64 32, i64 0, i32 0, metadata !58} ; [ DW_TAG_member ] [src] [line 666, size 32, align 32, offset 0] [from ]
!809 = metadata !{i32 786445, metadata !4, metadata !806, metadata !"p", i32 667, i64 32, i64 32, i64 32, i32 0, metadata !58} ; [ DW_TAG_member ] [p] [line 667, size 32, align 32, offset 32] [from ]
!810 = metadata !{i32 786445, metadata !4, metadata !806, metadata !"lastmatch", i32 668, i64 32, i64 32, i64 64, i32 0, metadata !58} ; [ DW_TAG_member ] [lastmatch] [line 668, size 32, align 32, offset 64] [from ]
!811 = metadata !{i32 786445, metadata !4, metadata !806, metadata !"ms", i32 669, i64 2240, i64 32, i64 96, i32 0, metadata !127} ; [ DW_TAG_member ] [ms] [line 669, size 2240, align 32, offset 96] [from MatchState]
!812 = metadata !{i32 693, i32 16, metadata !203, null}
!813 = metadata !{i32 694, i32 3, metadata !203, null}
!814 = metadata !{i32 695, i32 23, metadata !203, null}
!815 = metadata !{i32 696, i32 3, metadata !203, null}
!816 = metadata !{i32 697, i32 3, metadata !203, null}
!817 = metadata !{i32 697, i32 16, metadata !203, null}
!818 = metadata !{i32 697, i32 27, metadata !203, null}
!819 = metadata !{i32 698, i32 3, metadata !203, null}
!820 = metadata !{i32 699, i32 3, metadata !203, null}
!821 = metadata !{i32 786689, metadata !196, metadata !"L", metadata !33, i32 16777978, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 762]
!822 = metadata !{i32 762, i32 33, metadata !196, null}
!823 = metadata !{i32 786688, metadata !196, metadata !"srcl", metadata !33, i32 763, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [srcl] [line 763]
!824 = metadata !{i32 763, i32 10, metadata !196, null}
!825 = metadata !{i32 786688, metadata !196, metadata !"lp", metadata !33, i32 763, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lp] [line 763]
!826 = metadata !{i32 763, i32 16, metadata !196, null}
!827 = metadata !{i32 786688, metadata !196, metadata !"src", metadata !33, i32 764, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 764]
!828 = metadata !{i32 764, i32 15, metadata !196, null}
!829 = metadata !{i32 764, i32 21, metadata !196, null}
!830 = metadata !{i32 786688, metadata !196, metadata !"p", metadata !33, i32 765, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 765]
!831 = metadata !{i32 765, i32 15, metadata !196, null}
!832 = metadata !{i32 765, i32 19, metadata !196, null}
!833 = metadata !{i32 786688, metadata !196, metadata !"lastmatch", metadata !33, i32 766, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastmatch] [line 766]
!834 = metadata !{i32 766, i32 15, metadata !196, null}
!835 = metadata !{i32 766, i32 3, metadata !196, null}
!836 = metadata !{i32 786688, metadata !196, metadata !"tr", metadata !33, i32 767, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 767]
!837 = metadata !{i32 767, i32 7, metadata !196, null}
!838 = metadata !{i32 767, i32 12, metadata !196, null}
!839 = metadata !{i32 786688, metadata !196, metadata !"max_s", metadata !33, i32 768, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_s] [line 768]
!840 = metadata !{i32 768, i32 15, metadata !196, null}
!841 = metadata !{i32 768, i32 23, metadata !196, null}
!842 = metadata !{i32 786688, metadata !196, metadata !"anchor", metadata !33, i32 769, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [anchor] [line 769]
!843 = metadata !{i32 769, i32 7, metadata !196, null}
!844 = metadata !{i32 769, i32 3, metadata !196, null}
!845 = metadata !{i32 786688, metadata !196, metadata !"n", metadata !33, i32 770, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 770]
!846 = metadata !{i32 770, i32 15, metadata !196, null}
!847 = metadata !{i32 770, i32 3, metadata !196, null}
!848 = metadata !{i32 786688, metadata !196, metadata !"ms", metadata !33, i32 771, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ms] [line 771]
!849 = metadata !{i32 771, i32 14, metadata !196, null}
!850 = metadata !{i32 786688, metadata !196, metadata !"b", metadata !33, i32 772, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 772]
!851 = metadata !{i32 772, i32 15, metadata !196, null}
!852 = metadata !{i32 773, i32 3, metadata !196, null}
!853 = metadata !{i32 773, i32 3, metadata !854, null}
!854 = metadata !{i32 786443, metadata !4, metadata !196, i32 773, i32 3, i32 2, i32 275} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!855 = metadata !{i32 773, i32 3, metadata !856, null}
!856 = metadata !{i32 786443, metadata !4, metadata !196, i32 773, i32 3, i32 4, i32 277} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!857 = metadata !{i32 773, i32 3, metadata !858, null}
!858 = metadata !{i32 786443, metadata !4, metadata !196, i32 773, i32 3, i32 6, i32 279} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!859 = metadata !{i32 773, i32 3, metadata !860, null}
!860 = metadata !{i32 786443, metadata !4, metadata !196, i32 773, i32 3, i32 8, i32 281} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!861 = metadata !{i32 773, i32 3, metadata !862, null}
!862 = metadata !{i32 786443, metadata !4, metadata !863, i32 773, i32 3, i32 9, i32 282} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!863 = metadata !{i32 786443, metadata !4, metadata !864, i32 773, i32 3, i32 7, i32 280} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!864 = metadata !{i32 786443, metadata !4, metadata !865, i32 773, i32 3, i32 5, i32 278} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!865 = metadata !{i32 786443, metadata !4, metadata !866, i32 773, i32 3, i32 3, i32 276} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!866 = metadata !{i32 786443, metadata !4, metadata !196, i32 773, i32 3, i32 1, i32 274} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!867 = metadata !{i32 776, i32 3, metadata !196, null}
!868 = metadata !{i32 777, i32 7, metadata !869, null}
!869 = metadata !{i32 786443, metadata !4, metadata !196, i32 777, i32 7, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!870 = metadata !{i32 778, i32 5, metadata !871, null}
!871 = metadata !{i32 786443, metadata !4, metadata !869, i32 777, i32 15, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!872 = metadata !{i32 778, i32 10, metadata !871, null}
!873 = metadata !{i32 779, i32 3, metadata !871, null}
!874 = metadata !{i32 780, i32 3, metadata !196, null}
!875 = metadata !{i32 781, i32 3, metadata !196, null}
!876 = metadata !{i32 781, i32 3, metadata !877, null}
!877 = metadata !{i32 786443, metadata !4, metadata !196, i32 781, i32 3, i32 1, i32 283} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!878 = metadata !{i32 786688, metadata !879, metadata !"e", metadata !33, i32 782, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 782]
!879 = metadata !{i32 786443, metadata !4, metadata !196, i32 781, i32 21, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!880 = metadata !{i32 782, i32 17, metadata !879, null}
!881 = metadata !{i32 783, i32 5, metadata !879, null}
!882 = metadata !{i32 784, i32 14, metadata !883, null}
!883 = metadata !{i32 786443, metadata !4, metadata !879, i32 784, i32 9, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!884 = metadata !{i32 784, i32 14, metadata !885, null}
!885 = metadata !{i32 786443, metadata !4, metadata !883, i32 784, i32 14, i32 1, i32 284} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!886 = metadata !{i32 785, i32 7, metadata !887, null}
!887 = metadata !{i32 786443, metadata !4, metadata !883, i32 784, i32 61, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!888 = metadata !{i32 786, i32 7, metadata !887, null}
!889 = metadata !{i32 787, i32 7, metadata !887, null}
!890 = metadata !{i32 788, i32 5, metadata !887, null}
!891 = metadata !{i32 789, i32 14, metadata !892, null}
!892 = metadata !{i32 786443, metadata !4, metadata !883, i32 789, i32 14, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!893 = metadata !{i32 790, i32 7, metadata !892, null}
!894 = metadata !{i32 790, i32 7, metadata !895, null}
!895 = metadata !{i32 786443, metadata !4, metadata !892, i32 790, i32 7, i32 2, i32 286} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!896 = metadata !{i32 790, i32 7, metadata !897, null}
!897 = metadata !{i32 786443, metadata !4, metadata !898, i32 790, i32 7, i32 3, i32 287} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!898 = metadata !{i32 786443, metadata !4, metadata !892, i32 790, i32 7, i32 1, i32 285} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!899 = metadata !{i32 791, i32 10, metadata !892, null}
!900 = metadata !{i32 792, i32 9, metadata !901, null}
!901 = metadata !{i32 786443, metadata !4, metadata !879, i32 792, i32 9, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!902 = metadata !{i32 792, i32 17, metadata !903, null}
!903 = metadata !{i32 786443, metadata !4, metadata !901, i32 792, i32 17, i32 1, i32 288} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!904 = metadata !{i32 793, i32 3, metadata !879, null}
!905 = metadata !{i32 794, i32 3, metadata !196, null}
!906 = metadata !{i32 795, i32 3, metadata !196, null}
!907 = metadata !{i32 796, i32 3, metadata !196, null}
!908 = metadata !{i32 797, i32 3, metadata !196, null}
!909 = metadata !{i32 786689, metadata !195, metadata !"L", metadata !33, i32 16777270, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 54]
!910 = metadata !{i32 54, i32 32, metadata !195, null}
!911 = metadata !{i32 786688, metadata !195, metadata !"l", metadata !33, i32 55, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 55]
!912 = metadata !{i32 55, i32 10, metadata !195, null}
!913 = metadata !{i32 56, i32 3, metadata !195, null}
!914 = metadata !{i32 57, i32 3, metadata !195, null}
!915 = metadata !{i32 58, i32 3, metadata !195, null} ; [ DW_TAG_imported_module ]
!916 = metadata !{i32 786689, metadata !194, metadata !"L", metadata !33, i32 16777312, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 96]
!917 = metadata !{i32 96, i32 34, metadata !194, null}
!918 = metadata !{i32 786688, metadata !194, metadata !"l", metadata !33, i32 97, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 97]
!919 = metadata !{i32 97, i32 10, metadata !194, null}
!920 = metadata !{i32 786688, metadata !194, metadata !"i", metadata !33, i32 98, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 98]
!921 = metadata !{i32 98, i32 10, metadata !194, null}
!922 = metadata !{i32 786688, metadata !194, metadata !"b", metadata !33, i32 99, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 99]
!923 = metadata !{i32 99, i32 15, metadata !194, null}
!924 = metadata !{i32 786688, metadata !194, metadata !"s", metadata !33, i32 100, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 100]
!925 = metadata !{i32 100, i32 15, metadata !194, null}
!926 = metadata !{i32 100, i32 19, metadata !194, null}
!927 = metadata !{i32 786688, metadata !194, metadata !"p", metadata !33, i32 101, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 101]
!928 = metadata !{i32 101, i32 9, metadata !194, null}
!929 = metadata !{i32 101, i32 13, metadata !194, null}
!930 = metadata !{i32 102, i32 8, metadata !931, null}
!931 = metadata !{i32 786443, metadata !4, metadata !194, i32 102, i32 3, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!932 = metadata !{i32 102, i32 8, metadata !933, null}
!933 = metadata !{i32 786443, metadata !4, metadata !934, i32 102, i32 8, i32 2, i32 290} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!934 = metadata !{i32 786443, metadata !4, metadata !931, i32 102, i32 8, i32 1, i32 289} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!935 = metadata !{i32 103, i32 12, metadata !931, null}
!936 = metadata !{i32 102, i32 18, metadata !931, null}
!937 = metadata !{i32 104, i32 3, metadata !194, null}
!938 = metadata !{i32 105, i32 3, metadata !194, null}
!939 = metadata !{i32 786689, metadata !119, metadata !"L", metadata !33, i32 16777875, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 659]
!940 = metadata !{i32 659, i32 34, metadata !119, null}
!941 = metadata !{i32 660, i32 10, metadata !119, null}
!942 = metadata !{i32 786689, metadata !118, metadata !"L", metadata !33, i32 16777338, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 122]
!943 = metadata !{i32 122, i32 32, metadata !118, null}
!944 = metadata !{i32 786688, metadata !118, metadata !"l", metadata !33, i32 123, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 123]
!945 = metadata !{i32 123, i32 10, metadata !118, null}
!946 = metadata !{i32 786688, metadata !118, metadata !"lsep", metadata !33, i32 123, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lsep] [line 123]
!947 = metadata !{i32 123, i32 13, metadata !118, null}
!948 = metadata !{i32 786688, metadata !118, metadata !"s", metadata !33, i32 124, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 124]
!949 = metadata !{i32 124, i32 15, metadata !118, null}
!950 = metadata !{i32 124, i32 19, metadata !118, null}
!951 = metadata !{i32 786688, metadata !118, metadata !"n", metadata !33, i32 125, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 125]
!952 = metadata !{i32 125, i32 15, metadata !118, null}
!953 = metadata !{i32 125, i32 19, metadata !118, null}
!954 = metadata !{i32 786688, metadata !118, metadata !"sep", metadata !33, i32 126, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sep] [line 126]
!955 = metadata !{i32 126, i32 15, metadata !118, null}
!956 = metadata !{i32 126, i32 21, metadata !118, null}
!957 = metadata !{i32 127, i32 7, metadata !958, null}
!958 = metadata !{i32 786443, metadata !4, metadata !118, i32 127, i32 7, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!959 = metadata !{i32 127, i32 15, metadata !960, null}
!960 = metadata !{i32 786443, metadata !4, metadata !958, i32 127, i32 15, i32 1, i32 291} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!961 = metadata !{i32 128, i32 12, metadata !962, null}
!962 = metadata !{i32 786443, metadata !4, metadata !958, i32 128, i32 12, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!963 = metadata !{i32 128, i32 12, metadata !964, null}
!964 = metadata !{i32 786443, metadata !4, metadata !962, i32 128, i32 12, i32 1, i32 292} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!965 = metadata !{i32 129, i32 12, metadata !962, null}
!966 = metadata !{i32 786688, metadata !967, metadata !"totallen", metadata !33, i32 131, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [totallen] [line 131]
!967 = metadata !{i32 786443, metadata !4, metadata !962, i32 130, i32 8, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!968 = metadata !{i32 131, i32 12, metadata !967, null}
!969 = metadata !{i32 131, i32 5, metadata !967, null}
!970 = metadata !{i32 786688, metadata !967, metadata !"b", metadata !33, i32 132, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 132]
!971 = metadata !{i32 132, i32 17, metadata !967, null}
!972 = metadata !{i32 786688, metadata !967, metadata !"p", metadata !33, i32 133, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 133]
!973 = metadata !{i32 133, i32 11, metadata !967, null}
!974 = metadata !{i32 133, i32 15, metadata !967, null}
!975 = metadata !{i32 134, i32 5, metadata !967, null}
!976 = metadata !{i32 134, i32 5, metadata !977, null}
!977 = metadata !{i32 786443, metadata !4, metadata !967, i32 134, i32 5, i32 1, i32 293} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!978 = metadata !{i32 135, i32 7, metadata !979, null}
!979 = metadata !{i32 786443, metadata !4, metadata !967, i32 134, i32 21, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!980 = metadata !{i32 135, i32 39, metadata !979, null}
!981 = metadata !{i32 136, i32 11, metadata !982, null}
!982 = metadata !{i32 786443, metadata !4, metadata !979, i32 136, i32 11, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!983 = metadata !{i32 137, i32 9, metadata !984, null}
!984 = metadata !{i32 786443, metadata !4, metadata !982, i32 136, i32 21, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!985 = metadata !{i32 138, i32 9, metadata !984, null}
!986 = metadata !{i32 139, i32 7, metadata !984, null}
!987 = metadata !{i32 140, i32 5, metadata !979, null}
!988 = metadata !{i32 141, i32 5, metadata !967, null}
!989 = metadata !{i32 142, i32 5, metadata !967, null}
!990 = metadata !{i32 144, i32 3, metadata !118, null}
!991 = metadata !{i32 145, i32 1, metadata !118, null}
!992 = metadata !{i32 786689, metadata !117, metadata !"L", metadata !33, i32 16777300, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 84]
!993 = metadata !{i32 84, i32 36, metadata !117, null}
!994 = metadata !{i32 786688, metadata !117, metadata !"l", metadata !33, i32 85, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 85]
!995 = metadata !{i32 85, i32 10, metadata !117, null}
!996 = metadata !{i32 786688, metadata !117, metadata !"i", metadata !33, i32 85, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 85]
!997 = metadata !{i32 85, i32 13, metadata !117, null}
!998 = metadata !{i32 786688, metadata !117, metadata !"b", metadata !33, i32 86, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 86]
!999 = metadata !{i32 86, i32 15, metadata !117, null}
!1000 = metadata !{i32 786688, metadata !117, metadata !"s", metadata !33, i32 87, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 87]
!1001 = metadata !{i32 87, i32 15, metadata !117, null}
!1002 = metadata !{i32 87, i32 19, metadata !117, null}
!1003 = metadata !{i32 786688, metadata !117, metadata !"p", metadata !33, i32 88, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 88]
!1004 = metadata !{i32 88, i32 9, metadata !117, null}
!1005 = metadata !{i32 88, i32 13, metadata !117, null}
!1006 = metadata !{i32 89, i32 8, metadata !1007, null}
!1007 = metadata !{i32 786443, metadata !4, metadata !117, i32 89, i32 3, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1008 = metadata !{i32 89, i32 8, metadata !1009, null}
!1009 = metadata !{i32 786443, metadata !4, metadata !1010, i32 89, i32 8, i32 2, i32 295} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1010 = metadata !{i32 786443, metadata !4, metadata !1007, i32 89, i32 8, i32 1, i32 294} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1011 = metadata !{i32 90, i32 5, metadata !1007, null}
!1012 = metadata !{i32 89, i32 22, metadata !1007, null}
!1013 = metadata !{i32 91, i32 3, metadata !117, null}
!1014 = metadata !{i32 92, i32 3, metadata !117, null}
!1015 = metadata !{i32 786689, metadata !116, metadata !"L", metadata !33, i32 16777286, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 70]
!1016 = metadata !{i32 70, i32 32, metadata !116, null}
!1017 = metadata !{i32 786688, metadata !116, metadata !"l", metadata !33, i32 71, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 71]
!1018 = metadata !{i32 71, i32 10, metadata !116, null}
!1019 = metadata !{i32 786688, metadata !116, metadata !"s", metadata !33, i32 72, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 72]
!1020 = metadata !{i32 72, i32 15, metadata !116, null}
!1021 = metadata !{i32 72, i32 19, metadata !116, null}
!1022 = metadata !{i32 786688, metadata !116, metadata !"start", metadata !33, i32 73, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 73]
!1023 = metadata !{i32 73, i32 15, metadata !116, null}
!1024 = metadata !{i32 73, i32 32, metadata !116, null}
!1025 = metadata !{i32 73, i32 23, metadata !116, null}
!1026 = metadata !{i32 786688, metadata !116, metadata !"end", metadata !33, i32 74, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 74]
!1027 = metadata !{i32 74, i32 15, metadata !116, null}
!1028 = metadata !{i32 74, i32 30, metadata !116, null}
!1029 = metadata !{i32 74, i32 21, metadata !116, null}
!1030 = metadata !{i32 75, i32 7, metadata !1031, null}
!1031 = metadata !{i32 786443, metadata !4, metadata !116, i32 75, i32 7, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1032 = metadata !{i32 75, i32 18, metadata !1033, null}
!1033 = metadata !{i32 786443, metadata !4, metadata !1031, i32 75, i32 18, i32 1, i32 296} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1034 = metadata !{i32 76, i32 7, metadata !1035, null}
!1035 = metadata !{i32 786443, metadata !4, metadata !116, i32 76, i32 7, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1036 = metadata !{i32 76, i32 29, metadata !1037, null}
!1037 = metadata !{i32 786443, metadata !4, metadata !1035, i32 76, i32 29, i32 1, i32 297} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1038 = metadata !{i32 77, i32 7, metadata !1039, null}
!1039 = metadata !{i32 786443, metadata !4, metadata !116, i32 77, i32 7, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1040 = metadata !{i32 78, i32 5, metadata !1039, null}
!1041 = metadata !{i32 79, i32 8, metadata !1039, null}
!1042 = metadata !{i32 80, i32 3, metadata !116, null}
!1043 = metadata !{i32 786689, metadata !115, metadata !"L", metadata !33, i32 16777325, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 109]
!1044 = metadata !{i32 109, i32 34, metadata !115, null}
!1045 = metadata !{i32 786688, metadata !115, metadata !"l", metadata !33, i32 110, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 110]
!1046 = metadata !{i32 110, i32 10, metadata !115, null}
!1047 = metadata !{i32 786688, metadata !115, metadata !"i", metadata !33, i32 111, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 111]
!1048 = metadata !{i32 111, i32 10, metadata !115, null}
!1049 = metadata !{i32 786688, metadata !115, metadata !"b", metadata !33, i32 112, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 112]
!1050 = metadata !{i32 112, i32 15, metadata !115, null}
!1051 = metadata !{i32 786688, metadata !115, metadata !"s", metadata !33, i32 113, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 113]
!1052 = metadata !{i32 113, i32 15, metadata !115, null}
!1053 = metadata !{i32 113, i32 19, metadata !115, null}
!1054 = metadata !{i32 786688, metadata !115, metadata !"p", metadata !33, i32 114, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 114]
!1055 = metadata !{i32 114, i32 9, metadata !115, null}
!1056 = metadata !{i32 114, i32 13, metadata !115, null}
!1057 = metadata !{i32 115, i32 8, metadata !1058, null}
!1058 = metadata !{i32 786443, metadata !4, metadata !115, i32 115, i32 3, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1059 = metadata !{i32 115, i32 8, metadata !1060, null}
!1060 = metadata !{i32 786443, metadata !4, metadata !1061, i32 115, i32 8, i32 2, i32 299} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1061 = metadata !{i32 786443, metadata !4, metadata !1058, i32 115, i32 8, i32 1, i32 298} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1062 = metadata !{i32 116, i32 12, metadata !1058, null}
!1063 = metadata !{i32 115, i32 18, metadata !1058, null}
!1064 = metadata !{i32 117, i32 3, metadata !115, null}
!1065 = metadata !{i32 118, i32 3, metadata !115, null}
!1066 = metadata !{i32 786689, metadata !95, metadata !"L", metadata !33, i32 16778544, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1328]
!1067 = metadata !{i32 1328, i32 33, metadata !95, null}
!1068 = metadata !{i32 786688, metadata !95, metadata !"b", metadata !33, i32 1329, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1329]
!1069 = metadata !{i32 1329, i32 15, metadata !95, null}
!1070 = metadata !{i32 786688, metadata !95, metadata !"h", metadata !33, i32 1330, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 1330]
!1071 = metadata !{i32 1330, i32 10, metadata !95, null}
!1072 = metadata !{i32 786688, metadata !95, metadata !"fmt", metadata !33, i32 1331, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmt] [line 1331]
!1073 = metadata !{i32 1331, i32 15, metadata !95, null}
!1074 = metadata !{i32 1331, i32 21, metadata !95, null}
!1075 = metadata !{i32 786688, metadata !95, metadata !"arg", metadata !33, i32 1332, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 1332]
!1076 = metadata !{i32 1332, i32 7, metadata !95, null}
!1077 = metadata !{i32 1332, i32 3, metadata !95, null}
!1078 = metadata !{i32 786688, metadata !95, metadata !"totalsize", metadata !33, i32 1333, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [totalsize] [line 1333]
!1079 = metadata !{i32 1333, i32 10, metadata !95, null}
!1080 = metadata !{i32 1333, i32 3, metadata !95, null}
!1081 = metadata !{i32 1334, i32 3, metadata !95, null}
!1082 = metadata !{i32 1335, i32 3, metadata !95, null}
!1083 = metadata !{i32 1336, i32 3, metadata !95, null}
!1084 = metadata !{i32 1337, i32 3, metadata !95, null}
!1085 = metadata !{i32 1337, i32 3, metadata !1086, null}
!1086 = metadata !{i32 786443, metadata !4, metadata !95, i32 1337, i32 3, i32 1, i32 300} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1087 = metadata !{i32 786688, metadata !1088, metadata !"size", metadata !33, i32 1338, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 1338]
!1088 = metadata !{i32 786443, metadata !4, metadata !95, i32 1337, i32 24, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1089 = metadata !{i32 1338, i32 9, metadata !1088, null}
!1090 = metadata !{i32 786688, metadata !1088, metadata !"ntoalign", metadata !33, i32 1338, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ntoalign] [line 1338]
!1091 = metadata !{i32 1338, i32 15, metadata !1088, null}
!1092 = metadata !{i32 786688, metadata !1088, metadata !"opt", metadata !33, i32 1339, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [opt] [line 1339]
!1093 = metadata !{i32 1339, i32 13, metadata !1088, null}
!1094 = metadata !{i32 1339, i32 19, metadata !1088, null}
!1095 = metadata !{i32 1340, i32 5, metadata !1088, null}
!1096 = metadata !{i32 1341, i32 5, metadata !1088, null}
!1097 = metadata !{i32 1341, i32 5, metadata !1098, null}
!1098 = metadata !{i32 786443, metadata !4, metadata !1088, i32 1341, i32 5, i32 1, i32 301} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1099 = metadata !{i32 1342, i32 6, metadata !1088, null}
!1100 = metadata !{i32 1342, i32 6, metadata !1101, null}
!1101 = metadata !{i32 786443, metadata !4, metadata !1088, i32 1342, i32 6, i32 2, i32 303} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1102 = metadata !{i32 1342, i32 6, metadata !1103, null}
!1103 = metadata !{i32 786443, metadata !4, metadata !1104, i32 1342, i32 6, i32 3, i32 304} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1104 = metadata !{i32 786443, metadata !4, metadata !1088, i32 1342, i32 6, i32 1, i32 302} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1105 = metadata !{i32 1343, i32 5, metadata !1088, null}
!1106 = metadata !{i32 1344, i32 5, metadata !1088, null}
!1107 = metadata !{i32 786688, metadata !1108, metadata !"n", metadata !33, i32 1346, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1346]
!1108 = metadata !{i32 786443, metadata !4, metadata !1109, i32 1345, i32 18, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1109 = metadata !{i32 786443, metadata !4, metadata !1088, i32 1344, i32 18, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1110 = metadata !{i32 1346, i32 21, metadata !1108, null}
!1111 = metadata !{i32 1346, i32 25, metadata !1108, null}
!1112 = metadata !{i32 1347, i32 13, metadata !1113, null}
!1113 = metadata !{i32 786443, metadata !4, metadata !1108, i32 1347, i32 13, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1114 = metadata !{i32 786688, metadata !1115, metadata !"lim", metadata !33, i32 1348, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lim] [line 1348]
!1115 = metadata !{i32 786443, metadata !4, metadata !1113, i32 1347, i32 27, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1116 = metadata !{i32 1348, i32 23, metadata !1115, null}
!1117 = metadata !{i32 1348, i32 11, metadata !1115, null}
!1118 = metadata !{i32 1349, i32 11, metadata !1115, null}
!1119 = metadata !{i32 1349, i32 11, metadata !1120, null}
!1120 = metadata !{i32 786443, metadata !4, metadata !1115, i32 1349, i32 11, i32 1, i32 305} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1121 = metadata !{i32 1349, i32 11, metadata !1122, null}
!1122 = metadata !{i32 786443, metadata !4, metadata !1123, i32 1349, i32 11, i32 4, i32 308} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1123 = metadata !{i32 786443, metadata !4, metadata !1115, i32 1349, i32 11, i32 2, i32 306} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1124 = metadata !{i32 1349, i32 11, metadata !1125, null}
!1125 = metadata !{i32 786443, metadata !4, metadata !1126, i32 1349, i32 11, i32 5, i32 309} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1126 = metadata !{i32 786443, metadata !4, metadata !1115, i32 1349, i32 11, i32 3, i32 307} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1127 = metadata !{i32 1350, i32 9, metadata !1115, null}
!1128 = metadata !{i32 1351, i32 9, metadata !1108, null}
!1129 = metadata !{i32 1352, i32 9, metadata !1108, null}
!1130 = metadata !{i32 786688, metadata !1131, metadata !"n", metadata !33, i32 1355, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1355]
!1131 = metadata !{i32 786443, metadata !4, metadata !1109, i32 1354, i32 19, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1132 = metadata !{i32 1355, i32 21, metadata !1131, null}
!1133 = metadata !{i32 1355, i32 25, metadata !1131, null}
!1134 = metadata !{i32 1356, i32 13, metadata !1135, null}
!1135 = metadata !{i32 786443, metadata !4, metadata !1131, i32 1356, i32 13, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1136 = metadata !{i32 1357, i32 11, metadata !1135, null}
!1137 = metadata !{i32 1357, i32 11, metadata !1138, null}
!1138 = metadata !{i32 786443, metadata !4, metadata !1135, i32 1357, i32 11, i32 2, i32 311} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1139 = metadata !{i32 1357, i32 11, metadata !1140, null}
!1140 = metadata !{i32 786443, metadata !4, metadata !1141, i32 1357, i32 11, i32 3, i32 312} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1141 = metadata !{i32 786443, metadata !4, metadata !1135, i32 1357, i32 11, i32 1, i32 310} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1142 = metadata !{i32 1359, i32 9, metadata !1131, null}
!1143 = metadata !{i32 1360, i32 9, metadata !1131, null}
!1144 = metadata !{i32 786688, metadata !1145, metadata !"u", metadata !33, i32 1363, metadata !1146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 1363]
!1145 = metadata !{i32 786443, metadata !4, metadata !1109, i32 1362, i32 20, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1146 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1147} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from Ftypes]
!1147 = metadata !{i32 786454, metadata !4, null, metadata !"Ftypes", i32 1145, i64 0, i64 0, i64 0, i32 0, metadata !1148} ; [ DW_TAG_typedef ] [Ftypes] [line 1145, size 0, align 0, offset 0] [from Ftypes]
!1148 = metadata !{i32 786455, metadata !4, null, metadata !"Ftypes", i32 1140, i64 320, i64 64, i64 0, i32 0, null, metadata !1149, i32 0, null, null, null} ; [ DW_TAG_union_type ] [Ftypes] [line 1140, size 320, align 64, offset 0] [def] [from ]
!1149 = metadata !{metadata !1150, metadata !1152, metadata !1154, metadata !1156}
!1150 = metadata !{i32 786445, metadata !4, metadata !1148, metadata !"f", i32 1141, i64 32, i64 32, i64 0, i32 0, metadata !1151} ; [ DW_TAG_member ] [f] [line 1141, size 32, align 32, offset 0] [from float]
!1151 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!1152 = metadata !{i32 786445, metadata !4, metadata !1148, metadata !"d", i32 1142, i64 64, i64 64, i64 0, i32 0, metadata !1153} ; [ DW_TAG_member ] [d] [line 1142, size 64, align 64, offset 0] [from double]
!1153 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!1154 = metadata !{i32 786445, metadata !4, metadata !1148, metadata !"n", i32 1143, i64 64, i64 64, i64 0, i32 0, metadata !1155} ; [ DW_TAG_member ] [n] [line 1143, size 64, align 64, offset 0] [from lua_Number]
!1155 = metadata !{i32 786454, metadata !39, null, metadata !"lua_Number", i32 89, i64 0, i64 0, i64 0, i32 0, metadata !1153} ; [ DW_TAG_typedef ] [lua_Number] [line 89, size 0, align 0, offset 0] [from double]
!1156 = metadata !{i32 786445, metadata !4, metadata !1148, metadata !"buff", i32 1144, i64 320, i64 8, i64 0, i32 0, metadata !1157} ; [ DW_TAG_member ] [buff] [line 1144, size 320, align 8, offset 0] [from ]
!1157 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 8, i32 0, i32 0, metadata !50, metadata !1158, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 320, align 8, offset 0] [from char]
!1158 = metadata !{metadata !1159}
!1159 = metadata !{i32 786465, i64 0, i64 40}     ; [ DW_TAG_subrange_type ] [0, 39]
!1160 = metadata !{i32 1363, i32 25, metadata !1145, null}
!1161 = metadata !{i32 786688, metadata !1145, metadata !"buff", metadata !33, i32 1364, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 1364]
!1162 = metadata !{i32 1364, i32 15, metadata !1145, null}
!1163 = metadata !{i32 1364, i32 22, metadata !1145, null}
!1164 = metadata !{i32 786688, metadata !1145, metadata !"n", metadata !33, i32 1365, metadata !1155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1365]
!1165 = metadata !{i32 1365, i32 20, metadata !1145, null}
!1166 = metadata !{i32 1365, i32 24, metadata !1145, null}
!1167 = metadata !{i32 1366, i32 13, metadata !1168, null}
!1168 = metadata !{i32 786443, metadata !4, metadata !1145, i32 1366, i32 13, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1169 = metadata !{i32 1366, i32 34, metadata !1170, null}
!1170 = metadata !{i32 786443, metadata !4, metadata !1168, i32 1366, i32 34, i32 1, i32 313} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1171 = metadata !{i32 1367, i32 18, metadata !1172, null}
!1172 = metadata !{i32 786443, metadata !4, metadata !1168, i32 1367, i32 18, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1173 = metadata !{i32 1367, i32 39, metadata !1174, null}
!1174 = metadata !{i32 786443, metadata !4, metadata !1172, i32 1367, i32 39, i32 1, i32 314} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1175 = metadata !{i32 1368, i32 14, metadata !1172, null}
!1176 = metadata !{i32 1370, i32 9, metadata !1145, null}
!1177 = metadata !{i32 1371, i32 9, metadata !1145, null}
!1178 = metadata !{i32 1372, i32 9, metadata !1145, null}
!1179 = metadata !{i32 786688, metadata !1180, metadata !"len", metadata !33, i32 1375, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 1375]
!1180 = metadata !{i32 786443, metadata !4, metadata !1109, i32 1374, i32 19, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1181 = metadata !{i32 1375, i32 16, metadata !1180, null}
!1182 = metadata !{i32 786688, metadata !1180, metadata !"s", metadata !33, i32 1376, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 1376]
!1183 = metadata !{i32 1376, i32 21, metadata !1180, null}
!1184 = metadata !{i32 1376, i32 25, metadata !1180, null}
!1185 = metadata !{i32 1377, i32 9, metadata !1180, null}
!1186 = metadata !{i32 1377, i32 9, metadata !1187, null}
!1187 = metadata !{i32 786443, metadata !4, metadata !1180, i32 1377, i32 9, i32 2, i32 316} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1188 = metadata !{i32 1377, i32 9, metadata !1189, null}
!1189 = metadata !{i32 786443, metadata !4, metadata !1190, i32 1377, i32 9, i32 3, i32 317} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1190 = metadata !{i32 786443, metadata !4, metadata !1180, i32 1377, i32 9, i32 1, i32 315} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1191 = metadata !{i32 1379, i32 9, metadata !1180, null}
!1192 = metadata !{i32 1380, i32 9, metadata !1180, null}
!1193 = metadata !{i32 1380, i32 9, metadata !1194, null}
!1194 = metadata !{i32 786443, metadata !4, metadata !1180, i32 1380, i32 9, i32 1, i32 318} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1195 = metadata !{i32 1381, i32 11, metadata !1180, null}
!1196 = metadata !{i32 1381, i32 11, metadata !1197, null}
!1197 = metadata !{i32 786443, metadata !4, metadata !1180, i32 1381, i32 11, i32 2, i32 320} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1198 = metadata !{i32 1381, i32 11, metadata !1199, null}
!1199 = metadata !{i32 786443, metadata !4, metadata !1200, i32 1381, i32 11, i32 3, i32 321} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1200 = metadata !{i32 786443, metadata !4, metadata !1180, i32 1381, i32 11, i32 1, i32 319} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1201 = metadata !{i32 1382, i32 9, metadata !1180, null}
!1202 = metadata !{i32 786688, metadata !1203, metadata !"len", metadata !33, i32 1385, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 1385]
!1203 = metadata !{i32 786443, metadata !4, metadata !1109, i32 1384, i32 21, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1204 = metadata !{i32 1385, i32 16, metadata !1203, null}
!1205 = metadata !{i32 786688, metadata !1203, metadata !"s", metadata !33, i32 1386, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 1386]
!1206 = metadata !{i32 1386, i32 21, metadata !1203, null}
!1207 = metadata !{i32 1386, i32 25, metadata !1203, null}
!1208 = metadata !{i32 1387, i32 9, metadata !1203, null}
!1209 = metadata !{i32 1387, i32 9, metadata !1210, null}
!1210 = metadata !{i32 786443, metadata !4, metadata !1203, i32 1387, i32 9, i32 2, i32 323} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1211 = metadata !{i32 1387, i32 9, metadata !1212, null}
!1212 = metadata !{i32 786443, metadata !4, metadata !1203, i32 1387, i32 9, i32 4, i32 325} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1213 = metadata !{i32 1387, i32 9, metadata !1214, null}
!1214 = metadata !{i32 786443, metadata !4, metadata !1215, i32 1387, i32 9, i32 5, i32 326} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1215 = metadata !{i32 786443, metadata !4, metadata !1216, i32 1387, i32 9, i32 3, i32 324} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1216 = metadata !{i32 786443, metadata !4, metadata !1203, i32 1387, i32 9, i32 1, i32 322} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1217 = metadata !{i32 1390, i32 9, metadata !1203, null}
!1218 = metadata !{i32 1391, i32 9, metadata !1203, null}
!1219 = metadata !{i32 1392, i32 9, metadata !1203, null}
!1220 = metadata !{i32 1393, i32 9, metadata !1203, null}
!1221 = metadata !{i32 786688, metadata !1222, metadata !"len", metadata !33, i32 1396, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 1396]
!1222 = metadata !{i32 786443, metadata !4, metadata !1109, i32 1395, i32 19, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1223 = metadata !{i32 1396, i32 16, metadata !1222, null}
!1224 = metadata !{i32 786688, metadata !1222, metadata !"s", metadata !33, i32 1397, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 1397]
!1225 = metadata !{i32 1397, i32 21, metadata !1222, null}
!1226 = metadata !{i32 1397, i32 25, metadata !1222, null}
!1227 = metadata !{i32 1398, i32 9, metadata !1222, null}
!1228 = metadata !{i32 1398, i32 9, metadata !1229, null}
!1229 = metadata !{i32 786443, metadata !4, metadata !1222, i32 1398, i32 9, i32 2, i32 328} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1230 = metadata !{i32 1398, i32 9, metadata !1231, null}
!1231 = metadata !{i32 786443, metadata !4, metadata !1232, i32 1398, i32 9, i32 3, i32 329} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1232 = metadata !{i32 786443, metadata !4, metadata !1222, i32 1398, i32 9, i32 1, i32 327} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1233 = metadata !{i32 1399, i32 9, metadata !1222, null}
!1234 = metadata !{i32 1400, i32 9, metadata !1222, null}
!1235 = metadata !{i32 1400, i32 9, metadata !1236, null}
!1236 = metadata !{i32 786443, metadata !4, metadata !1222, i32 1400, i32 9, i32 2, i32 331} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1237 = metadata !{i32 1400, i32 9, metadata !1238, null}
!1238 = metadata !{i32 786443, metadata !4, metadata !1239, i32 1400, i32 9, i32 3, i32 332} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1239 = metadata !{i32 786443, metadata !4, metadata !1222, i32 1400, i32 9, i32 1, i32 330} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1240 = metadata !{i32 1401, i32 9, metadata !1222, null}
!1241 = metadata !{i32 1402, i32 9, metadata !1222, null}
!1242 = metadata !{i32 1404, i32 22, metadata !1109, null}
!1243 = metadata !{i32 1404, i32 22, metadata !1244, null}
!1244 = metadata !{i32 786443, metadata !4, metadata !1109, i32 1404, i32 22, i32 2, i32 334} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1245 = metadata !{i32 1404, i32 22, metadata !1246, null}
!1246 = metadata !{i32 786443, metadata !4, metadata !1247, i32 1404, i32 22, i32 3, i32 335} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1247 = metadata !{i32 786443, metadata !4, metadata !1109, i32 1404, i32 22, i32 1, i32 333} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1248 = metadata !{i32 1406, i32 9, metadata !1109, null}
!1249 = metadata !{i32 1407, i32 9, metadata !1109, null}
!1250 = metadata !{i32 1409, i32 3, metadata !1088, null}
!1251 = metadata !{i32 1410, i32 3, metadata !95, null}
!1252 = metadata !{i32 1411, i32 3, metadata !95, null}
!1253 = metadata !{i32 786689, metadata !94, metadata !"L", metadata !33, i32 16778631, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1415]
!1254 = metadata !{i32 1415, i32 37, metadata !94, null}
!1255 = metadata !{i32 786688, metadata !94, metadata !"h", metadata !33, i32 1416, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 1416]
!1256 = metadata !{i32 1416, i32 10, metadata !94, null}
!1257 = metadata !{i32 786688, metadata !94, metadata !"fmt", metadata !33, i32 1417, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmt] [line 1417]
!1258 = metadata !{i32 1417, i32 15, metadata !94, null}
!1259 = metadata !{i32 1417, i32 21, metadata !94, null}
!1260 = metadata !{i32 786688, metadata !94, metadata !"totalsize", metadata !33, i32 1418, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [totalsize] [line 1418]
!1261 = metadata !{i32 1418, i32 10, metadata !94, null}
!1262 = metadata !{i32 1418, i32 3, metadata !94, null}
!1263 = metadata !{i32 1419, i32 3, metadata !94, null}
!1264 = metadata !{i32 1420, i32 3, metadata !94, null}
!1265 = metadata !{i32 1420, i32 3, metadata !1266, null}
!1266 = metadata !{i32 786443, metadata !4, metadata !94, i32 1420, i32 3, i32 1, i32 336} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1267 = metadata !{i32 786688, metadata !1268, metadata !"size", metadata !33, i32 1421, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 1421]
!1268 = metadata !{i32 786443, metadata !4, metadata !94, i32 1420, i32 24, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1269 = metadata !{i32 1421, i32 9, metadata !1268, null}
!1270 = metadata !{i32 786688, metadata !1268, metadata !"ntoalign", metadata !33, i32 1421, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ntoalign] [line 1421]
!1271 = metadata !{i32 1421, i32 15, metadata !1268, null}
!1272 = metadata !{i32 786688, metadata !1268, metadata !"opt", metadata !33, i32 1422, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [opt] [line 1422]
!1273 = metadata !{i32 1422, i32 13, metadata !1268, null}
!1274 = metadata !{i32 1422, i32 19, metadata !1268, null}
!1275 = metadata !{i32 1423, i32 5, metadata !1268, null}
!1276 = metadata !{i32 1424, i32 5, metadata !1268, null}
!1277 = metadata !{i32 1424, i32 5, metadata !1278, null}
!1278 = metadata !{i32 786443, metadata !4, metadata !1268, i32 1424, i32 5, i32 2, i32 338} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1279 = metadata !{i32 1424, i32 5, metadata !1280, null}
!1280 = metadata !{i32 786443, metadata !4, metadata !1281, i32 1424, i32 5, i32 3, i32 339} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1281 = metadata !{i32 786443, metadata !4, metadata !1268, i32 1424, i32 5, i32 1, i32 337} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1282 = metadata !{i32 1426, i32 5, metadata !1268, null}
!1283 = metadata !{i32 1427, i32 5, metadata !1268, null}
!1284 = metadata !{i32 1430, i32 9, metadata !1285, null}
!1285 = metadata !{i32 786443, metadata !4, metadata !1268, i32 1427, i32 18, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1286 = metadata !{i32 1432, i32 17, metadata !1285, null}
!1287 = metadata !{i32 1434, i32 3, metadata !1268, null}
!1288 = metadata !{i32 1435, i32 3, metadata !94, null}
!1289 = metadata !{i32 1436, i32 3, metadata !94, null}
!1290 = metadata !{i32 786689, metadata !44, metadata !"L", metadata !33, i32 16778690, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1474]
!1291 = metadata !{i32 1474, i32 35, metadata !44, null}
!1292 = metadata !{i32 786688, metadata !44, metadata !"h", metadata !33, i32 1475, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 1475]
!1293 = metadata !{i32 1475, i32 10, metadata !44, null}
!1294 = metadata !{i32 786688, metadata !44, metadata !"fmt", metadata !33, i32 1476, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmt] [line 1476]
!1295 = metadata !{i32 1476, i32 15, metadata !44, null}
!1296 = metadata !{i32 1476, i32 21, metadata !44, null}
!1297 = metadata !{i32 786688, metadata !44, metadata !"ld", metadata !33, i32 1477, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ld] [line 1477]
!1298 = metadata !{i32 1477, i32 10, metadata !44, null}
!1299 = metadata !{i32 786688, metadata !44, metadata !"data", metadata !33, i32 1478, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 1478]
!1300 = metadata !{i32 1478, i32 15, metadata !44, null}
!1301 = metadata !{i32 1478, i32 22, metadata !44, null}
!1302 = metadata !{i32 786688, metadata !44, metadata !"pos", metadata !33, i32 1479, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 1479]
!1303 = metadata !{i32 1479, i32 10, metadata !44, null}
!1304 = metadata !{i32 1479, i32 33, metadata !44, null}
!1305 = metadata !{i32 1479, i32 24, metadata !44, null}
!1306 = metadata !{i32 786688, metadata !44, metadata !"n", metadata !33, i32 1480, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1480]
!1307 = metadata !{i32 1480, i32 7, metadata !44, null}
!1308 = metadata !{i32 1480, i32 3, metadata !44, null}
!1309 = metadata !{i32 1481, i32 3, metadata !44, null}
!1310 = metadata !{i32 1481, i32 3, metadata !1311, null}
!1311 = metadata !{i32 786443, metadata !4, metadata !44, i32 1481, i32 3, i32 2, i32 341} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1312 = metadata !{i32 1481, i32 3, metadata !1313, null}
!1313 = metadata !{i32 786443, metadata !4, metadata !1314, i32 1481, i32 3, i32 3, i32 342} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1314 = metadata !{i32 786443, metadata !4, metadata !44, i32 1481, i32 3, i32 1, i32 340} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1315 = metadata !{i32 1482, i32 3, metadata !44, null}
!1316 = metadata !{i32 1483, i32 3, metadata !44, null}
!1317 = metadata !{i32 1483, i32 3, metadata !1318, null}
!1318 = metadata !{i32 786443, metadata !4, metadata !44, i32 1483, i32 3, i32 1, i32 343} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1319 = metadata !{i32 786688, metadata !1320, metadata !"size", metadata !33, i32 1484, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 1484]
!1320 = metadata !{i32 786443, metadata !4, metadata !44, i32 1483, i32 24, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1321 = metadata !{i32 1484, i32 9, metadata !1320, null}
!1322 = metadata !{i32 786688, metadata !1320, metadata !"ntoalign", metadata !33, i32 1484, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ntoalign] [line 1484]
!1323 = metadata !{i32 1484, i32 15, metadata !1320, null}
!1324 = metadata !{i32 786688, metadata !1320, metadata !"opt", metadata !33, i32 1485, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [opt] [line 1485]
!1325 = metadata !{i32 1485, i32 13, metadata !1320, null}
!1326 = metadata !{i32 1485, i32 19, metadata !1320, null}
!1327 = metadata !{i32 1486, i32 9, metadata !1328, null}
!1328 = metadata !{i32 786443, metadata !4, metadata !1320, i32 1486, i32 9, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1329 = metadata !{i32 1486, i32 9, metadata !1330, null}
!1330 = metadata !{i32 786443, metadata !4, metadata !1328, i32 1486, i32 9, i32 1, i32 344} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1331 = metadata !{i32 1487, i32 7, metadata !1328, null}
!1332 = metadata !{i32 1488, i32 5, metadata !1320, null}
!1333 = metadata !{i32 1490, i32 5, metadata !1320, null}
!1334 = metadata !{i32 1491, i32 5, metadata !1320, null}
!1335 = metadata !{i32 1492, i32 5, metadata !1320, null}
!1336 = metadata !{i32 786688, metadata !1337, metadata !"res", metadata !33, i32 1495, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 1495]
!1337 = metadata !{i32 786443, metadata !4, metadata !1338, i32 1494, i32 19, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1338 = metadata !{i32 786443, metadata !4, metadata !1320, i32 1492, i32 18, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1339 = metadata !{i32 1495, i32 21, metadata !1337, null}
!1340 = metadata !{i32 1495, i32 27, metadata !1337, null}
!1341 = metadata !{i32 1497, i32 9, metadata !1337, null}
!1342 = metadata !{i32 1498, i32 9, metadata !1337, null}
!1343 = metadata !{i32 786688, metadata !1344, metadata !"u", metadata !33, i32 1501, metadata !1146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 1501]
!1344 = metadata !{i32 786443, metadata !4, metadata !1338, i32 1500, i32 20, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1345 = metadata !{i32 1501, i32 25, metadata !1344, null}
!1346 = metadata !{i32 786688, metadata !1344, metadata !"num", metadata !33, i32 1502, metadata !1155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num] [line 1502]
!1347 = metadata !{i32 1502, i32 20, metadata !1344, null}
!1348 = metadata !{i32 1503, i32 9, metadata !1344, null}
!1349 = metadata !{i32 1504, i32 13, metadata !1350, null}
!1350 = metadata !{i32 786443, metadata !4, metadata !1344, i32 1504, i32 13, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1351 = metadata !{i32 1504, i32 34, metadata !1352, null}
!1352 = metadata !{i32 786443, metadata !4, metadata !1350, i32 1504, i32 34, i32 1, i32 345} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1353 = metadata !{i32 1505, i32 18, metadata !1354, null}
!1354 = metadata !{i32 786443, metadata !4, metadata !1350, i32 1505, i32 18, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1355 = metadata !{i32 1505, i32 39, metadata !1356, null}
!1356 = metadata !{i32 786443, metadata !4, metadata !1354, i32 1505, i32 39, i32 1, i32 346} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1357 = metadata !{i32 1506, i32 14, metadata !1354, null}
!1358 = metadata !{i32 1507, i32 9, metadata !1344, null}
!1359 = metadata !{i32 1508, i32 9, metadata !1344, null}
!1360 = metadata !{i32 1511, i32 9, metadata !1361, null}
!1361 = metadata !{i32 786443, metadata !4, metadata !1338, i32 1510, i32 19, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1362 = metadata !{i32 1512, i32 9, metadata !1361, null}
!1363 = metadata !{i32 786688, metadata !1364, metadata !"len", metadata !33, i32 1515, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 1515]
!1364 = metadata !{i32 786443, metadata !4, metadata !1338, i32 1514, i32 21, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1365 = metadata !{i32 1515, i32 16, metadata !1364, null}
!1366 = metadata !{i32 1515, i32 30, metadata !1364, null}
!1367 = metadata !{i32 1516, i32 9, metadata !1364, null}
!1368 = metadata !{i32 1516, i32 9, metadata !1369, null}
!1369 = metadata !{i32 786443, metadata !4, metadata !1364, i32 1516, i32 9, i32 2, i32 348} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1370 = metadata !{i32 1516, i32 9, metadata !1371, null}
!1371 = metadata !{i32 786443, metadata !4, metadata !1372, i32 1516, i32 9, i32 3, i32 349} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1372 = metadata !{i32 786443, metadata !4, metadata !1364, i32 1516, i32 9, i32 1, i32 347} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1373 = metadata !{i32 1517, i32 9, metadata !1364, null}
!1374 = metadata !{i32 1518, i32 9, metadata !1364, null}
!1375 = metadata !{i32 1519, i32 9, metadata !1364, null}
!1376 = metadata !{i32 786688, metadata !1377, metadata !"len", metadata !33, i32 1522, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 1522]
!1377 = metadata !{i32 786443, metadata !4, metadata !1338, i32 1521, i32 19, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1378 = metadata !{i32 1522, i32 16, metadata !1377, null}
!1379 = metadata !{i32 1522, i32 27, metadata !1377, null}
!1380 = metadata !{i32 1523, i32 9, metadata !1377, null}
!1381 = metadata !{i32 1524, i32 9, metadata !1377, null}
!1382 = metadata !{i32 1525, i32 9, metadata !1377, null}
!1383 = metadata !{i32 1528, i32 9, metadata !1338, null}
!1384 = metadata !{i32 1529, i32 9, metadata !1338, null}
!1385 = metadata !{i32 1531, i32 5, metadata !1320, null}
!1386 = metadata !{i32 1532, i32 3, metadata !1320, null}
!1387 = metadata !{i32 1533, i32 3, metadata !44, null}
!1388 = metadata !{i32 1534, i32 3, metadata !44, null}
!1389 = metadata !{i32 786689, metadata !91, metadata !"pos", metadata !33, i32 16777279, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pos] [line 63]
!1390 = metadata !{i32 63, i32 42, metadata !91, null}
!1391 = metadata !{i32 786689, metadata !91, metadata !"len", metadata !33, i32 33554495, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 63]
!1392 = metadata !{i32 63, i32 54, metadata !91, null}
!1393 = metadata !{i32 64, i32 7, metadata !1394, null}
!1394 = metadata !{i32 786443, metadata !4, metadata !91, i32 64, i32 7, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1395 = metadata !{i32 64, i32 17, metadata !1396, null}
!1396 = metadata !{i32 786443, metadata !4, metadata !1394, i32 64, i32 17, i32 1, i32 350} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1397 = metadata !{i32 65, i32 12, metadata !1398, null}
!1398 = metadata !{i32 786443, metadata !4, metadata !1394, i32 65, i32 12, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1399 = metadata !{i32 65, i32 36, metadata !1400, null}
!1400 = metadata !{i32 786443, metadata !4, metadata !1398, i32 65, i32 36, i32 1, i32 351} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1401 = metadata !{i32 66, i32 8, metadata !1398, null}
!1402 = metadata !{i32 67, i32 1, metadata !91, null}
!1403 = metadata !{i32 786689, metadata !88, metadata !"L", metadata !33, i32 16778425, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1209]
!1404 = metadata !{i32 1209, i32 36, metadata !88, null}
!1405 = metadata !{i32 786689, metadata !88, metadata !"h", metadata !33, i32 33555641, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 1209]
!1406 = metadata !{i32 1209, i32 47, metadata !88, null}
!1407 = metadata !{i32 1210, i32 3, metadata !88, null}
!1408 = metadata !{i32 1211, i32 3, metadata !88, null}
!1409 = metadata !{i32 1212, i32 3, metadata !88, null}
!1410 = metadata !{i32 1213, i32 1, metadata !88, null}
!1411 = metadata !{i32 786689, metadata !60, metadata !"h", metadata !33, i32 16778482, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 1266]
!1412 = metadata !{i32 1266, i32 36, metadata !60, null}
!1413 = metadata !{i32 786689, metadata !60, metadata !"totalsize", metadata !33, i32 33555698, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [totalsize] [line 1266]
!1414 = metadata !{i32 1266, i32 46, metadata !60, null}
!1415 = metadata !{i32 786689, metadata !60, metadata !"fmt", metadata !33, i32 50332915, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 1267]
!1416 = metadata !{i32 1267, i32 41, metadata !60, null}
!1417 = metadata !{i32 786689, metadata !60, metadata !"psize", metadata !33, i32 67110131, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [psize] [line 1267]
!1418 = metadata !{i32 1267, i32 51, metadata !60, null}
!1419 = metadata !{i32 786689, metadata !60, metadata !"ntoalign", metadata !33, i32 83887347, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ntoalign] [line 1267]
!1420 = metadata !{i32 1267, i32 63, metadata !60, null}
!1421 = metadata !{i32 786688, metadata !60, metadata !"opt", metadata !33, i32 1268, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [opt] [line 1268]
!1422 = metadata !{i32 1268, i32 11, metadata !60, null}
!1423 = metadata !{i32 1268, i32 17, metadata !60, null}
!1424 = metadata !{i32 786688, metadata !60, metadata !"align", metadata !33, i32 1269, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [align] [line 1269]
!1425 = metadata !{i32 1269, i32 7, metadata !60, null}
!1426 = metadata !{i32 1269, i32 3, metadata !60, null}
!1427 = metadata !{i32 1270, i32 7, metadata !1428, null}
!1428 = metadata !{i32 786443, metadata !4, metadata !60, i32 1270, i32 7, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1429 = metadata !{i32 1271, i32 9, metadata !1430, null}
!1430 = metadata !{i32 786443, metadata !4, metadata !1431, i32 1271, i32 9, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1431 = metadata !{i32 786443, metadata !4, metadata !1428, i32 1270, i32 26, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1432 = metadata !{i32 1271, i32 26, metadata !1433, null}
!1433 = metadata !{i32 786443, metadata !4, metadata !1430, i32 1271, i32 26, i32 1, i32 352} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1434 = metadata !{i32 1271, i32 26, metadata !1435, null}
!1435 = metadata !{i32 786443, metadata !4, metadata !1430, i32 1271, i32 26, i32 2, i32 353} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1436 = metadata !{i32 1272, i32 7, metadata !1430, null}
!1437 = metadata !{i32 1273, i32 3, metadata !1431, null}
!1438 = metadata !{i32 1274, i32 7, metadata !1439, null}
!1439 = metadata !{i32 786443, metadata !4, metadata !60, i32 1274, i32 7, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1440 = metadata !{i32 1274, i32 7, metadata !1441, null}
!1441 = metadata !{i32 786443, metadata !4, metadata !1439, i32 1274, i32 7, i32 1, i32 354} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1442 = metadata !{i32 1275, i32 5, metadata !1439, null}
!1443 = metadata !{i32 1277, i32 9, metadata !1444, null}
!1444 = metadata !{i32 786443, metadata !4, metadata !1445, i32 1277, i32 9, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1445 = metadata !{i32 786443, metadata !4, metadata !1439, i32 1276, i32 8, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1446 = metadata !{i32 1278, i32 7, metadata !1444, null}
!1447 = metadata !{i32 1279, i32 9, metadata !1448, null}
!1448 = metadata !{i32 786443, metadata !4, metadata !1445, i32 1279, i32 9, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1449 = metadata !{i32 1280, i32 7, metadata !1448, null}
!1450 = metadata !{i32 1281, i32 5, metadata !1445, null}
!1451 = metadata !{i32 1283, i32 3, metadata !60, null}
!1452 = metadata !{i32 786689, metadata !53, metadata !"L", metadata !33, i32 16778664, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1448]
!1453 = metadata !{i32 1448, i32 42, metadata !53, null}
!1454 = metadata !{i32 786689, metadata !53, metadata !"str", metadata !33, i32 33555880, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 1448]
!1455 = metadata !{i32 1448, i32 57, metadata !53, null}
!1456 = metadata !{i32 786689, metadata !53, metadata !"islittle", metadata !33, i32 50333097, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [islittle] [line 1449]
!1457 = metadata !{i32 1449, i32 35, metadata !53, null}
!1458 = metadata !{i32 786689, metadata !53, metadata !"size", metadata !33, i32 67110313, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1449]
!1459 = metadata !{i32 1449, i32 49, metadata !53, null}
!1460 = metadata !{i32 786689, metadata !53, metadata !"issigned", metadata !33, i32 83887529, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [issigned] [line 1449]
!1461 = metadata !{i32 1449, i32 59, metadata !53, null}
!1462 = metadata !{i32 786688, metadata !53, metadata !"res", metadata !33, i32 1450, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 1450]
!1463 = metadata !{i32 1450, i32 16, metadata !53, null}
!1464 = metadata !{i32 1450, i32 3, metadata !53, null}
!1465 = metadata !{i32 786688, metadata !53, metadata !"i", metadata !33, i32 1451, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1451]
!1466 = metadata !{i32 1451, i32 7, metadata !53, null}
!1467 = metadata !{i32 786688, metadata !53, metadata !"limit", metadata !33, i32 1452, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [limit] [line 1452]
!1468 = metadata !{i32 1452, i32 7, metadata !53, null}
!1469 = metadata !{i32 1452, i32 3, metadata !53, null}
!1470 = metadata !{i32 1452, i32 3, metadata !1471, null}
!1471 = metadata !{i32 786443, metadata !4, metadata !53, i32 1452, i32 3, i32 1, i32 355} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1472 = metadata !{i32 1452, i32 3, metadata !1473, null}
!1473 = metadata !{i32 786443, metadata !4, metadata !53, i32 1452, i32 3, i32 2, i32 356} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1474 = metadata !{i32 1452, i32 3, metadata !1475, null}
!1475 = metadata !{i32 786443, metadata !4, metadata !1476, i32 1452, i32 3, i32 4, i32 358} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1476 = metadata !{i32 786443, metadata !4, metadata !53, i32 1452, i32 3, i32 3, i32 357} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1477 = metadata !{i32 1453, i32 8, metadata !1478, null}
!1478 = metadata !{i32 786443, metadata !4, metadata !53, i32 1453, i32 3, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1479 = metadata !{i32 1453, i32 8, metadata !1480, null}
!1480 = metadata !{i32 786443, metadata !4, metadata !1481, i32 1453, i32 8, i32 2, i32 364} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1481 = metadata !{i32 786443, metadata !4, metadata !1478, i32 1453, i32 8, i32 1, i32 359} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1482 = metadata !{i32 1454, i32 5, metadata !1483, null}
!1483 = metadata !{i32 786443, metadata !4, metadata !1478, i32 1453, i32 36, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1484 = metadata !{i32 1455, i32 5, metadata !1483, null}
!1485 = metadata !{i32 1455, i32 5, metadata !1486, null}
!1486 = metadata !{i32 786443, metadata !4, metadata !1483, i32 1455, i32 5, i32 1, i32 360} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1487 = metadata !{i32 1455, i32 5, metadata !1488, null}
!1488 = metadata !{i32 786443, metadata !4, metadata !1483, i32 1455, i32 5, i32 2, i32 361} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1489 = metadata !{i32 1455, i32 5, metadata !1490, null}
!1490 = metadata !{i32 786443, metadata !4, metadata !1491, i32 1455, i32 5, i32 4, i32 363} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1491 = metadata !{i32 786443, metadata !4, metadata !1483, i32 1455, i32 5, i32 3, i32 362} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1492 = metadata !{i32 1456, i32 3, metadata !1483, null}
!1493 = metadata !{i32 1453, i32 31, metadata !1478, null}
!1494 = metadata !{i32 1457, i32 7, metadata !1495, null}
!1495 = metadata !{i32 786443, metadata !4, metadata !53, i32 1457, i32 7, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1496 = metadata !{i32 1458, i32 9, metadata !1497, null}
!1497 = metadata !{i32 786443, metadata !4, metadata !1498, i32 1458, i32 9, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1498 = metadata !{i32 786443, metadata !4, metadata !1495, i32 1457, i32 21, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1499 = metadata !{i32 786688, metadata !1500, metadata !"mask", metadata !33, i32 1459, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mask] [line 1459]
!1500 = metadata !{i32 786443, metadata !4, metadata !1497, i32 1458, i32 19, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1501 = metadata !{i32 1459, i32 20, metadata !1500, null}
!1502 = metadata !{i32 1459, i32 7, metadata !1500, null}
!1503 = metadata !{i32 1460, i32 7, metadata !1500, null}
!1504 = metadata !{i32 1461, i32 5, metadata !1500, null}
!1505 = metadata !{i32 1462, i32 3, metadata !1498, null}
!1506 = metadata !{i32 1463, i32 12, metadata !1507, null}
!1507 = metadata !{i32 786443, metadata !4, metadata !1495, i32 1463, i32 12, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1508 = metadata !{i32 786688, metadata !1509, metadata !"mask", metadata !33, i32 1464, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mask] [line 1464]
!1509 = metadata !{i32 786443, metadata !4, metadata !1507, i32 1463, i32 26, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1510 = metadata !{i32 1464, i32 9, metadata !1509, null}
!1511 = metadata !{i32 1464, i32 5, metadata !1509, null}
!1512 = metadata !{i32 1464, i32 5, metadata !1513, null}
!1513 = metadata !{i32 786443, metadata !4, metadata !1509, i32 1464, i32 5, i32 1, i32 365} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1514 = metadata !{i32 1464, i32 5, metadata !1515, null}
!1515 = metadata !{i32 786443, metadata !4, metadata !1516, i32 1464, i32 5, i32 3, i32 367} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1516 = metadata !{i32 786443, metadata !4, metadata !1509, i32 1464, i32 5, i32 2, i32 366} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1517 = metadata !{i32 1465, i32 10, metadata !1518, null}
!1518 = metadata !{i32 786443, metadata !4, metadata !1509, i32 1465, i32 5, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1519 = metadata !{i32 1465, i32 10, metadata !1520, null}
!1520 = metadata !{i32 786443, metadata !4, metadata !1521, i32 1465, i32 10, i32 2, i32 373} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1521 = metadata !{i32 786443, metadata !4, metadata !1518, i32 1465, i32 10, i32 1, i32 368} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1522 = metadata !{i32 1466, i32 11, metadata !1523, null}
!1523 = metadata !{i32 786443, metadata !4, metadata !1524, i32 1466, i32 11, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1524 = metadata !{i32 786443, metadata !4, metadata !1518, i32 1465, i32 36, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1525 = metadata !{i32 1466, i32 11, metadata !1526, null}
!1526 = metadata !{i32 786443, metadata !4, metadata !1523, i32 1466, i32 11, i32 1, i32 369} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1527 = metadata !{i32 1466, i32 11, metadata !1528, null}
!1528 = metadata !{i32 786443, metadata !4, metadata !1523, i32 1466, i32 11, i32 2, i32 370} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1529 = metadata !{i32 1466, i32 11, metadata !1530, null}
!1530 = metadata !{i32 786443, metadata !4, metadata !1531, i32 1466, i32 11, i32 4, i32 372} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1531 = metadata !{i32 786443, metadata !4, metadata !1523, i32 1466, i32 11, i32 3, i32 371} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1532 = metadata !{i32 1467, i32 9, metadata !1523, null}
!1533 = metadata !{i32 1468, i32 5, metadata !1524, null}
!1534 = metadata !{i32 1465, i32 31, metadata !1518, null}
!1535 = metadata !{i32 1469, i32 3, metadata !1509, null}
!1536 = metadata !{i32 1470, i32 3, metadata !53, null}
!1537 = metadata !{i32 786689, metadata !45, metadata !"dest", metadata !33, i32 16778530, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 1314]
!1538 = metadata !{i32 1314, i32 44, metadata !45, null}
!1539 = metadata !{i32 786689, metadata !45, metadata !"src", metadata !33, i32 33555746, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 1314]
!1540 = metadata !{i32 1314, i32 71, metadata !45, null}
!1541 = metadata !{i32 786689, metadata !45, metadata !"size", metadata !33, i32 50332963, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1315]
!1542 = metadata !{i32 1315, i32 33, metadata !45, null}
!1543 = metadata !{i32 786689, metadata !45, metadata !"islittle", metadata !33, i32 67110179, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [islittle] [line 1315]
!1544 = metadata !{i32 1315, i32 43, metadata !45, null}
!1545 = metadata !{i32 1316, i32 7, metadata !1546, null}
!1546 = metadata !{i32 786443, metadata !4, metadata !45, i32 1316, i32 7, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1547 = metadata !{i32 1317, i32 5, metadata !1548, null}
!1548 = metadata !{i32 786443, metadata !4, metadata !1546, i32 1316, i32 40, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1549 = metadata !{i32 1317, i32 5, metadata !1550, null}
!1550 = metadata !{i32 786443, metadata !4, metadata !1548, i32 1317, i32 5, i32 1, i32 374} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1551 = metadata !{i32 1318, i32 7, metadata !1548, null}
!1552 = metadata !{i32 1319, i32 3, metadata !1548, null}
!1553 = metadata !{i32 1321, i32 5, metadata !1554, null}
!1554 = metadata !{i32 786443, metadata !4, metadata !1546, i32 1320, i32 8, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1555 = metadata !{i32 1322, i32 5, metadata !1554, null}
!1556 = metadata !{i32 1322, i32 5, metadata !1557, null}
!1557 = metadata !{i32 786443, metadata !4, metadata !1554, i32 1322, i32 5, i32 1, i32 375} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1558 = metadata !{i32 1323, i32 7, metadata !1554, null}
!1559 = metadata !{i32 1325, i32 1, metadata !45, null}
!1560 = metadata !{i32 786689, metadata !76, metadata !"h", metadata !33, i32 16778435, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 1219]
!1561 = metadata !{i32 1219, i32 35, metadata !76, null}
!1562 = metadata !{i32 786689, metadata !76, metadata !"fmt", metadata !33, i32 33555651, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 1219]
!1563 = metadata !{i32 1219, i32 51, metadata !76, null}
!1564 = metadata !{i32 786689, metadata !76, metadata !"size", metadata !33, i32 50332867, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1219]
!1565 = metadata !{i32 1219, i32 61, metadata !76, null}
!1566 = metadata !{i32 786688, metadata !76, metadata !"opt", metadata !33, i32 1220, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [opt] [line 1220]
!1567 = metadata !{i32 1220, i32 7, metadata !76, null}
!1568 = metadata !{i32 1220, i32 3, metadata !76, null}
!1569 = metadata !{i32 1221, i32 3, metadata !76, null}
!1570 = metadata !{i32 1222, i32 3, metadata !76, null}
!1571 = metadata !{i32 1223, i32 15, metadata !1572, null}
!1572 = metadata !{i32 786443, metadata !4, metadata !76, i32 1222, i32 16, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1573 = metadata !{i32 1223, i32 37, metadata !1572, null}
!1574 = metadata !{i32 1224, i32 15, metadata !1572, null}
!1575 = metadata !{i32 1224, i32 37, metadata !1572, null}
!1576 = metadata !{i32 1225, i32 15, metadata !1572, null}
!1577 = metadata !{i32 1225, i32 38, metadata !1572, null}
!1578 = metadata !{i32 1226, i32 15, metadata !1572, null}
!1579 = metadata !{i32 1226, i32 38, metadata !1572, null}
!1580 = metadata !{i32 1227, i32 15, metadata !1572, null}
!1581 = metadata !{i32 1227, i32 37, metadata !1572, null}
!1582 = metadata !{i32 1228, i32 15, metadata !1572, null}
!1583 = metadata !{i32 1228, i32 37, metadata !1572, null}
!1584 = metadata !{i32 1229, i32 15, metadata !1572, null}
!1585 = metadata !{i32 1229, i32 44, metadata !1572, null}
!1586 = metadata !{i32 1230, i32 15, metadata !1572, null}
!1587 = metadata !{i32 1230, i32 44, metadata !1572, null}
!1588 = metadata !{i32 1231, i32 15, metadata !1572, null}
!1589 = metadata !{i32 1231, i32 39, metadata !1572, null}
!1590 = metadata !{i32 1232, i32 15, metadata !1572, null}
!1591 = metadata !{i32 1232, i32 38, metadata !1572, null}
!1592 = metadata !{i32 1233, i32 15, metadata !1572, null}
!1593 = metadata !{i32 1233, i32 39, metadata !1572, null}
!1594 = metadata !{i32 1234, i32 15, metadata !1572, null}
!1595 = metadata !{i32 1234, i32 43, metadata !1572, null}
!1596 = metadata !{i32 1235, i32 23, metadata !1572, null}
!1597 = metadata !{i32 1235, i32 57, metadata !1572, null}
!1598 = metadata !{i32 1236, i32 23, metadata !1572, null}
!1599 = metadata !{i32 1236, i32 57, metadata !1572, null}
!1600 = metadata !{i32 1237, i32 23, metadata !1572, null}
!1601 = metadata !{i32 1237, i32 60, metadata !1572, null}
!1602 = metadata !{i32 1239, i32 15, metadata !1572, null}
!1603 = metadata !{i32 1240, i32 11, metadata !1604, null}
!1604 = metadata !{i32 786443, metadata !4, metadata !1572, i32 1240, i32 11, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1605 = metadata !{i32 1241, i32 9, metadata !1604, null}
!1606 = metadata !{i32 1242, i32 7, metadata !1572, null}
!1607 = metadata !{i32 1243, i32 15, metadata !1572, null}
!1608 = metadata !{i32 1244, i32 15, metadata !1572, null}
!1609 = metadata !{i32 1244, i32 26, metadata !1572, null}
!1610 = metadata !{i32 1245, i32 15, metadata !1572, null}
!1611 = metadata !{i32 1246, i32 15, metadata !1572, null}
!1612 = metadata !{i32 1247, i32 15, metadata !1572, null}
!1613 = metadata !{i32 1247, i32 32, metadata !1572, null}
!1614 = metadata !{i32 1248, i32 15, metadata !1572, null}
!1615 = metadata !{i32 1248, i32 32, metadata !1572, null}
!1616 = metadata !{i32 1249, i32 15, metadata !1572, null}
!1617 = metadata !{i32 1249, i32 50, metadata !1572, null}
!1618 = metadata !{i32 1250, i32 29, metadata !1572, null}
!1619 = metadata !{i32 1250, i32 60, metadata !1572, null}
!1620 = metadata !{i32 1251, i32 14, metadata !1572, null}
!1621 = metadata !{i32 1252, i32 3, metadata !1572, null}
!1622 = metadata !{i32 1253, i32 3, metadata !76, null}
!1623 = metadata !{i32 1254, i32 1, metadata !76, null}
!1624 = metadata !{i32 786689, metadata !85, metadata !"h", metadata !33, i32 16778413, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 1197]
!1625 = metadata !{i32 1197, i32 33, metadata !85, null}
!1626 = metadata !{i32 786689, metadata !85, metadata !"fmt", metadata !33, i32 33555629, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 1197]
!1627 = metadata !{i32 1197, i32 49, metadata !85, null}
!1628 = metadata !{i32 786689, metadata !85, metadata !"df", metadata !33, i32 50332845, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [df] [line 1197]
!1629 = metadata !{i32 1197, i32 58, metadata !85, null}
!1630 = metadata !{i32 786688, metadata !85, metadata !"sz", metadata !33, i32 1198, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sz] [line 1198]
!1631 = metadata !{i32 1198, i32 7, metadata !85, null}
!1632 = metadata !{i32 1198, i32 12, metadata !85, null}
!1633 = metadata !{i32 1199, i32 7, metadata !1634, null}
!1634 = metadata !{i32 786443, metadata !4, metadata !85, i32 1199, i32 7, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1635 = metadata !{i32 1199, i32 7, metadata !1636, null}
!1636 = metadata !{i32 786443, metadata !4, metadata !1634, i32 1199, i32 7, i32 1, i32 376} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1637 = metadata !{i32 1200, i32 5, metadata !1634, null}
!1638 = metadata !{i32 1202, i32 3, metadata !85, null}
!1639 = metadata !{i32 786689, metadata !79, metadata !"fmt", metadata !33, i32 16778396, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 1180]
!1640 = metadata !{i32 1180, i32 33, metadata !79, null}
!1641 = metadata !{i32 786689, metadata !79, metadata !"df", metadata !33, i32 33555612, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [df] [line 1180]
!1642 = metadata !{i32 1180, i32 42, metadata !79, null}
!1643 = metadata !{i32 1181, i32 8, metadata !1644, null}
!1644 = metadata !{i32 786443, metadata !4, metadata !79, i32 1181, i32 7, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1645 = metadata !{i32 1182, i32 5, metadata !1644, null}
!1646 = metadata !{i32 786688, metadata !1647, metadata !"a", metadata !33, i32 1184, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1184]
!1647 = metadata !{i32 786443, metadata !4, metadata !1644, i32 1183, i32 8, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1648 = metadata !{i32 1184, i32 9, metadata !1647, null}
!1649 = metadata !{i32 1184, i32 5, metadata !1647, null}
!1650 = metadata !{i32 1185, i32 5, metadata !1647, null}
!1651 = metadata !{i32 1186, i32 7, metadata !1652, null}
!1652 = metadata !{i32 786443, metadata !4, metadata !1647, i32 1185, i32 8, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1653 = metadata !{i32 1187, i32 5, metadata !1652, null}
!1654 = metadata !{i32 1187, i32 14, metadata !1655, null}
!1655 = metadata !{i32 786443, metadata !4, metadata !1647, i32 1187, i32 14, i32 1, i32 377} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1656 = metadata !{i32 1187, i32 14, metadata !1657, null}
!1657 = metadata !{i32 786443, metadata !4, metadata !1647, i32 1187, i32 14, i32 2, i32 378} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1658 = metadata !{i32 1187, i32 14, metadata !1659, null}
!1659 = metadata !{i32 786443, metadata !4, metadata !1647, i32 1187, i32 14, i32 3, i32 379} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1660 = metadata !{i32 1188, i32 5, metadata !1647, null}
!1661 = metadata !{i32 1190, i32 1, metadata !79, null}
!1662 = metadata !{i32 786689, metadata !82, metadata !"c", metadata !33, i32 16778394, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 1178]
!1663 = metadata !{i32 1178, i32 23, metadata !82, null}
!1664 = metadata !{i32 1178, i32 28, metadata !82, null}
!1665 = metadata !{i32 1178, i32 28, metadata !1666, null}
!1666 = metadata !{i32 786443, metadata !4, metadata !82, i32 1178, i32 28, i32 1, i32 380} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1667 = metadata !{i32 1178, i32 28, metadata !1668, null}
!1668 = metadata !{i32 786443, metadata !4, metadata !82, i32 1178, i32 28, i32 2, i32 381} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1669 = metadata !{i32 786689, metadata !96, metadata !"b", metadata !33, i32 16778509, metadata !99, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1293]
!1670 = metadata !{i32 1293, i32 35, metadata !96, null}
!1671 = metadata !{i32 786689, metadata !96, metadata !"n", metadata !33, i32 33555725, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1293]
!1672 = metadata !{i32 1293, i32 51, metadata !96, null}
!1673 = metadata !{i32 786689, metadata !96, metadata !"islittle", metadata !33, i32 50332942, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [islittle] [line 1294]
!1674 = metadata !{i32 1294, i32 26, metadata !96, null}
!1675 = metadata !{i32 786689, metadata !96, metadata !"size", metadata !33, i32 67110158, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1294]
!1676 = metadata !{i32 1294, i32 40, metadata !96, null}
!1677 = metadata !{i32 786689, metadata !96, metadata !"neg", metadata !33, i32 83887374, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [neg] [line 1294]
!1678 = metadata !{i32 1294, i32 50, metadata !96, null}
!1679 = metadata !{i32 786688, metadata !96, metadata !"buff", metadata !33, i32 1295, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 1295]
!1680 = metadata !{i32 1295, i32 9, metadata !96, null}
!1681 = metadata !{i32 1295, i32 16, metadata !96, null}
!1682 = metadata !{i32 786688, metadata !96, metadata !"i", metadata !33, i32 1296, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1296]
!1683 = metadata !{i32 1296, i32 7, metadata !96, null}
!1684 = metadata !{i32 1297, i32 3, metadata !96, null}
!1685 = metadata !{i32 1297, i32 3, metadata !1686, null}
!1686 = metadata !{i32 786443, metadata !4, metadata !96, i32 1297, i32 3, i32 1, i32 382} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1687 = metadata !{i32 1297, i32 3, metadata !1688, null}
!1688 = metadata !{i32 786443, metadata !4, metadata !96, i32 1297, i32 3, i32 2, i32 383} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1689 = metadata !{i32 1297, i32 3, metadata !1690, null}
!1690 = metadata !{i32 786443, metadata !4, metadata !1691, i32 1297, i32 3, i32 4, i32 385} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1691 = metadata !{i32 786443, metadata !4, metadata !96, i32 1297, i32 3, i32 3, i32 384} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1692 = metadata !{i32 1298, i32 8, metadata !1693, null}
!1693 = metadata !{i32 786443, metadata !4, metadata !96, i32 1298, i32 3, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1694 = metadata !{i32 1298, i32 8, metadata !1695, null}
!1695 = metadata !{i32 786443, metadata !4, metadata !1696, i32 1298, i32 8, i32 2, i32 391} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1696 = metadata !{i32 786443, metadata !4, metadata !1693, i32 1298, i32 8, i32 1, i32 386} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1697 = metadata !{i32 1299, i32 5, metadata !1698, null}
!1698 = metadata !{i32 786443, metadata !4, metadata !1693, i32 1298, i32 30, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1699 = metadata !{i32 1300, i32 5, metadata !1698, null}
!1700 = metadata !{i32 1300, i32 5, metadata !1701, null}
!1701 = metadata !{i32 786443, metadata !4, metadata !1698, i32 1300, i32 5, i32 1, i32 387} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1702 = metadata !{i32 1300, i32 5, metadata !1703, null}
!1703 = metadata !{i32 786443, metadata !4, metadata !1698, i32 1300, i32 5, i32 2, i32 388} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1704 = metadata !{i32 1300, i32 5, metadata !1705, null}
!1705 = metadata !{i32 786443, metadata !4, metadata !1706, i32 1300, i32 5, i32 4, i32 390} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1706 = metadata !{i32 786443, metadata !4, metadata !1698, i32 1300, i32 5, i32 3, i32 389} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1707 = metadata !{i32 1301, i32 3, metadata !1698, null}
!1708 = metadata !{i32 1298, i32 25, metadata !1693, null}
!1709 = metadata !{i32 1302, i32 7, metadata !1710, null}
!1710 = metadata !{i32 786443, metadata !4, metadata !96, i32 1302, i32 7, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1711 = metadata !{i32 1302, i32 7, metadata !1712, null}
!1712 = metadata !{i32 786443, metadata !4, metadata !1710, i32 1302, i32 7, i32 1, i32 392} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1713 = metadata !{i32 1303, i32 10, metadata !1714, null}
!1714 = metadata !{i32 786443, metadata !4, metadata !1715, i32 1303, i32 5, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1715 = metadata !{i32 786443, metadata !4, metadata !1710, i32 1302, i32 28, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1716 = metadata !{i32 1303, i32 10, metadata !1717, null}
!1717 = metadata !{i32 786443, metadata !4, metadata !1718, i32 1303, i32 10, i32 2, i32 398} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1718 = metadata !{i32 786443, metadata !4, metadata !1714, i32 1303, i32 10, i32 1, i32 393} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1719 = metadata !{i32 1304, i32 7, metadata !1714, null}
!1720 = metadata !{i32 1304, i32 7, metadata !1721, null}
!1721 = metadata !{i32 786443, metadata !4, metadata !1714, i32 1304, i32 7, i32 1, i32 394} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1722 = metadata !{i32 1304, i32 7, metadata !1723, null}
!1723 = metadata !{i32 786443, metadata !4, metadata !1714, i32 1304, i32 7, i32 2, i32 395} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1724 = metadata !{i32 1304, i32 7, metadata !1725, null}
!1725 = metadata !{i32 786443, metadata !4, metadata !1726, i32 1304, i32 7, i32 4, i32 397} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1726 = metadata !{i32 786443, metadata !4, metadata !1714, i32 1304, i32 7, i32 3, i32 396} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1727 = metadata !{i32 1303, i32 31, metadata !1714, null}
!1728 = metadata !{i32 1305, i32 3, metadata !1715, null}
!1729 = metadata !{i32 1306, i32 3, metadata !96, null}
!1730 = metadata !{i32 1307, i32 1, metadata !96, null}
!1731 = metadata !{i32 786689, metadata !120, metadata !"L", metadata !33, i32 16777823, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 607]
!1732 = metadata !{i32 607, i32 37, metadata !120, null}
!1733 = metadata !{i32 786689, metadata !120, metadata !"find", metadata !33, i32 33555039, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [find] [line 607]
!1734 = metadata !{i32 607, i32 44, metadata !120, null}
!1735 = metadata !{i32 786688, metadata !120, metadata !"ls", metadata !33, i32 608, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ls] [line 608]
!1736 = metadata !{i32 608, i32 10, metadata !120, null}
!1737 = metadata !{i32 786688, metadata !120, metadata !"lp", metadata !33, i32 608, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lp] [line 608]
!1738 = metadata !{i32 608, i32 14, metadata !120, null}
!1739 = metadata !{i32 786688, metadata !120, metadata !"s", metadata !33, i32 609, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 609]
!1740 = metadata !{i32 609, i32 15, metadata !120, null}
!1741 = metadata !{i32 609, i32 19, metadata !120, null}
!1742 = metadata !{i32 786688, metadata !120, metadata !"p", metadata !33, i32 610, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 610]
!1743 = metadata !{i32 610, i32 15, metadata !120, null}
!1744 = metadata !{i32 610, i32 19, metadata !120, null}
!1745 = metadata !{i32 786688, metadata !120, metadata !"init", metadata !33, i32 611, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [init] [line 611]
!1746 = metadata !{i32 611, i32 15, metadata !120, null}
!1747 = metadata !{i32 611, i32 31, metadata !120, null}
!1748 = metadata !{i32 611, i32 22, metadata !120, null}
!1749 = metadata !{i32 612, i32 7, metadata !1750, null}
!1750 = metadata !{i32 786443, metadata !4, metadata !120, i32 612, i32 7, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1751 = metadata !{i32 612, i32 17, metadata !1752, null}
!1752 = metadata !{i32 786443, metadata !4, metadata !1750, i32 612, i32 17, i32 1, i32 399} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1753 = metadata !{i32 613, i32 12, metadata !1754, null}
!1754 = metadata !{i32 786443, metadata !4, metadata !1750, i32 613, i32 12, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1755 = metadata !{i32 614, i32 5, metadata !1756, null}
!1756 = metadata !{i32 786443, metadata !4, metadata !1754, i32 613, i32 40, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1757 = metadata !{i32 615, i32 5, metadata !1756, null}
!1758 = metadata !{i32 618, i32 7, metadata !1759, null}
!1759 = metadata !{i32 786443, metadata !4, metadata !120, i32 618, i32 7, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1760 = metadata !{i32 618, i32 16, metadata !1761, null}
!1761 = metadata !{i32 786443, metadata !4, metadata !1759, i32 618, i32 16, i32 1, i32 400} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1762 = metadata !{i32 618, i32 39, metadata !1763, null}
!1763 = metadata !{i32 786443, metadata !4, metadata !1759, i32 618, i32 39, i32 2, i32 401} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1764 = metadata !{i32 786688, metadata !1765, metadata !"s2", metadata !33, i32 620, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s2] [line 620]
!1765 = metadata !{i32 786443, metadata !4, metadata !1759, i32 618, i32 59, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1766 = metadata !{i32 620, i32 17, metadata !1765, null}
!1767 = metadata !{i32 620, i32 22, metadata !1765, null}
!1768 = metadata !{i32 621, i32 9, metadata !1769, null}
!1769 = metadata !{i32 786443, metadata !4, metadata !1765, i32 621, i32 9, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1770 = metadata !{i32 622, i32 7, metadata !1771, null}
!1771 = metadata !{i32 786443, metadata !4, metadata !1769, i32 621, i32 13, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1772 = metadata !{i32 623, i32 7, metadata !1771, null}
!1773 = metadata !{i32 624, i32 7, metadata !1771, null}
!1774 = metadata !{i32 626, i32 3, metadata !1765, null}
!1775 = metadata !{i32 786688, metadata !1776, metadata !"ms", metadata !33, i32 628, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ms] [line 628]
!1776 = metadata !{i32 786443, metadata !4, metadata !1759, i32 627, i32 8, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1777 = metadata !{i32 628, i32 16, metadata !1776, null}
!1778 = metadata !{i32 786688, metadata !1776, metadata !"s1", metadata !33, i32 629, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s1] [line 629]
!1779 = metadata !{i32 629, i32 17, metadata !1776, null}
!1780 = metadata !{i32 629, i32 5, metadata !1776, null}
!1781 = metadata !{i32 786688, metadata !1776, metadata !"anchor", metadata !33, i32 630, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [anchor] [line 630]
!1782 = metadata !{i32 630, i32 9, metadata !1776, null}
!1783 = metadata !{i32 630, i32 5, metadata !1776, null}
!1784 = metadata !{i32 631, i32 9, metadata !1785, null}
!1785 = metadata !{i32 786443, metadata !4, metadata !1776, i32 631, i32 9, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1786 = metadata !{i32 632, i32 7, metadata !1787, null}
!1787 = metadata !{i32 786443, metadata !4, metadata !1785, i32 631, i32 17, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1788 = metadata !{i32 632, i32 12, metadata !1787, null}
!1789 = metadata !{i32 633, i32 5, metadata !1787, null}
!1790 = metadata !{i32 634, i32 5, metadata !1776, null}
!1791 = metadata !{i32 635, i32 5, metadata !1776, null}
!1792 = metadata !{i32 786688, metadata !1793, metadata !"res", metadata !33, i32 636, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 636]
!1793 = metadata !{i32 786443, metadata !4, metadata !1776, i32 635, i32 8, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1794 = metadata !{i32 636, i32 19, metadata !1793, null}
!1795 = metadata !{i32 637, i32 7, metadata !1793, null}
!1796 = metadata !{i32 638, i32 16, metadata !1797, null}
!1797 = metadata !{i32 786443, metadata !4, metadata !1793, i32 638, i32 11, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1798 = metadata !{i32 639, i32 13, metadata !1799, null}
!1799 = metadata !{i32 786443, metadata !4, metadata !1800, i32 639, i32 13, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1800 = metadata !{i32 786443, metadata !4, metadata !1797, i32 638, i32 44, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1801 = metadata !{i32 640, i32 11, metadata !1802, null}
!1802 = metadata !{i32 786443, metadata !4, metadata !1799, i32 639, i32 19, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1803 = metadata !{i32 641, i32 11, metadata !1802, null}
!1804 = metadata !{i32 642, i32 18, metadata !1802, null}
!1805 = metadata !{i32 645, i32 18, metadata !1799, null}
!1806 = metadata !{i32 647, i32 5, metadata !1793, null}
!1807 = metadata !{i32 647, i32 5, metadata !1808, null}
!1808 = metadata !{i32 786443, metadata !4, metadata !1793, i32 647, i32 5, i32 1, i32 402} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1809 = metadata !{i32 647, i32 5, metadata !1810, null}
!1810 = metadata !{i32 786443, metadata !4, metadata !1793, i32 647, i32 5, i32 2, i32 403} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1811 = metadata !{i32 647, i32 5, metadata !1812, null}
!1812 = metadata !{i32 786443, metadata !4, metadata !1793, i32 647, i32 5, i32 3, i32 404} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1813 = metadata !{i32 649, i32 3, metadata !120, null}
!1814 = metadata !{i32 650, i32 3, metadata !120, null}
!1815 = metadata !{i32 651, i32 1, metadata !120, null}
!1816 = metadata !{i32 786689, metadata !191, metadata !"p", metadata !33, i32 16777796, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 580]
!1817 = metadata !{i32 580, i32 36, metadata !191, null}
!1818 = metadata !{i32 786689, metadata !191, metadata !"l", metadata !33, i32 33555012, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 580]
!1819 = metadata !{i32 580, i32 46, metadata !191, null}
!1820 = metadata !{i32 786688, metadata !191, metadata !"upto", metadata !33, i32 581, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [upto] [line 581]
!1821 = metadata !{i32 581, i32 10, metadata !191, null}
!1822 = metadata !{i32 581, i32 3, metadata !191, null}
!1823 = metadata !{i32 582, i32 3, metadata !191, null}
!1824 = metadata !{i32 583, i32 9, metadata !1825, null}
!1825 = metadata !{i32 786443, metadata !4, metadata !1826, i32 583, i32 9, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1826 = metadata !{i32 786443, metadata !4, metadata !191, i32 582, i32 6, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1827 = metadata !{i32 584, i32 7, metadata !1825, null}
!1828 = metadata !{i32 585, i32 13, metadata !1826, null}
!1829 = metadata !{i32 586, i32 3, metadata !1826, null}
!1830 = metadata !{i32 586, i32 3, metadata !1831, null}
!1831 = metadata !{i32 786443, metadata !4, metadata !1826, i32 586, i32 3, i32 1, i32 405} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1832 = metadata !{i32 587, i32 3, metadata !191, null}
!1833 = metadata !{i32 588, i32 1, metadata !191, null}
!1834 = metadata !{i32 786689, metadata !188, metadata !"s1", metadata !33, i32 16777744, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 528]
!1835 = metadata !{i32 528, i32 42, metadata !188, null}
!1836 = metadata !{i32 786689, metadata !188, metadata !"l1", metadata !33, i32 33554960, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l1] [line 528]
!1837 = metadata !{i32 528, i32 53, metadata !188, null}
!1838 = metadata !{i32 786689, metadata !188, metadata !"s2", metadata !33, i32 50332177, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 529]
!1839 = metadata !{i32 529, i32 44, metadata !188, null}
!1840 = metadata !{i32 786689, metadata !188, metadata !"l2", metadata !33, i32 67109393, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l2] [line 529]
!1841 = metadata !{i32 529, i32 55, metadata !188, null}
!1842 = metadata !{i32 530, i32 7, metadata !1843, null}
!1843 = metadata !{i32 786443, metadata !4, metadata !188, i32 530, i32 7, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1844 = metadata !{i32 530, i32 16, metadata !1845, null}
!1845 = metadata !{i32 786443, metadata !4, metadata !1843, i32 530, i32 16, i32 1, i32 406} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1846 = metadata !{i32 531, i32 12, metadata !1847, null}
!1847 = metadata !{i32 786443, metadata !4, metadata !1843, i32 531, i32 12, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1848 = metadata !{i32 531, i32 21, metadata !1849, null}
!1849 = metadata !{i32 786443, metadata !4, metadata !1847, i32 531, i32 21, i32 1, i32 407} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1850 = metadata !{i32 786688, metadata !1851, metadata !"init", metadata !33, i32 533, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [init] [line 533]
!1851 = metadata !{i32 786443, metadata !4, metadata !1847, i32 532, i32 8, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1852 = metadata !{i32 533, i32 17, metadata !1851, null}
!1853 = metadata !{i32 534, i32 5, metadata !1851, null}
!1854 = metadata !{i32 535, i32 5, metadata !1851, null}
!1855 = metadata !{i32 536, i32 5, metadata !1851, null}
!1856 = metadata !{i32 536, i32 5, metadata !1857, null}
!1857 = metadata !{i32 786443, metadata !4, metadata !1851, i32 536, i32 5, i32 1, i32 408} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1858 = metadata !{i32 536, i32 44, metadata !1859, null}
!1859 = metadata !{i32 786443, metadata !4, metadata !1851, i32 536, i32 44, i32 2, i32 409} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1860 = metadata !{i32 536, i32 44, metadata !1861, null}
!1861 = metadata !{i32 786443, metadata !4, metadata !1851, i32 536, i32 44, i32 3, i32 410} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1862 = metadata !{i32 537, i32 7, metadata !1863, null}
!1863 = metadata !{i32 786443, metadata !4, metadata !1851, i32 536, i32 74, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1864 = metadata !{i32 538, i32 11, metadata !1865, null}
!1865 = metadata !{i32 786443, metadata !4, metadata !1863, i32 538, i32 11, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1866 = metadata !{i32 539, i32 9, metadata !1865, null}
!1867 = metadata !{i32 541, i32 9, metadata !1868, null}
!1868 = metadata !{i32 786443, metadata !4, metadata !1865, i32 540, i32 12, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1869 = metadata !{i32 542, i32 9, metadata !1868, null}
!1870 = metadata !{i32 544, i32 5, metadata !1863, null}
!1871 = metadata !{i32 545, i32 5, metadata !1851, null}
!1872 = metadata !{i32 547, i32 1, metadata !188, null}
!1873 = metadata !{i32 786689, metadata !185, metadata !"ms", metadata !33, i32 16777807, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ms] [line 591]
!1874 = metadata !{i32 591, i32 36, metadata !185, null}
!1875 = metadata !{i32 786689, metadata !185, metadata !"L", metadata !33, i32 33555023, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 591]
!1876 = metadata !{i32 591, i32 51, metadata !185, null}
!1877 = metadata !{i32 786689, metadata !185, metadata !"s", metadata !33, i32 50332240, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 592]
!1878 = metadata !{i32 592, i32 36, metadata !185, null}
!1879 = metadata !{i32 786689, metadata !185, metadata !"ls", metadata !33, i32 67109456, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 592]
!1880 = metadata !{i32 592, i32 46, metadata !185, null}
!1881 = metadata !{i32 786689, metadata !185, metadata !"p", metadata !33, i32 83886672, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 592]
!1882 = metadata !{i32 592, i32 62, metadata !185, null}
!1883 = metadata !{i32 786689, metadata !185, metadata !"lp", metadata !33, i32 100663888, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lp] [line 592]
!1884 = metadata !{i32 592, i32 72, metadata !185, null}
!1885 = metadata !{i32 593, i32 3, metadata !185, null}
!1886 = metadata !{i32 594, i32 3, metadata !185, null}
!1887 = metadata !{i32 595, i32 3, metadata !185, null}
!1888 = metadata !{i32 596, i32 3, metadata !185, null}
!1889 = metadata !{i32 597, i32 3, metadata !185, null}
!1890 = metadata !{i32 598, i32 1, metadata !185, null}
!1891 = metadata !{i32 786689, metadata !182, metadata !"ms", metadata !33, i32 16777817, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ms] [line 601]
!1892 = metadata !{i32 601, i32 38, metadata !182, null}
!1893 = metadata !{i32 602, i32 3, metadata !182, null}
!1894 = metadata !{i32 604, i32 1, metadata !182, null}
!1895 = metadata !{i32 786689, metadata !149, metadata !"ms", metadata !33, i32 16777641, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ms] [line 425]
!1896 = metadata !{i32 425, i32 39, metadata !149, null}
!1897 = metadata !{i32 786689, metadata !149, metadata !"s", metadata !33, i32 33554857, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 425]
!1898 = metadata !{i32 425, i32 55, metadata !149, null}
!1899 = metadata !{i32 786689, metadata !149, metadata !"p", metadata !33, i32 50332073, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 425]
!1900 = metadata !{i32 425, i32 70, metadata !149, null}
!1901 = metadata !{i32 426, i32 7, metadata !1902, null}
!1902 = metadata !{i32 786443, metadata !4, metadata !149, i32 426, i32 7, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1903 = metadata !{i32 427, i32 5, metadata !1902, null}
!1904 = metadata !{i32 426, i32 27, metadata !1905, null}
!1905 = metadata !{i32 786443, metadata !4, metadata !1902, i32 426, i32 27, i32 1, i32 411} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1906 = metadata !{i32 429, i32 7, metadata !1907, null}
!1907 = metadata !{i32 786443, metadata !4, metadata !149, i32 429, i32 7, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1908 = metadata !{i32 430, i32 5, metadata !1909, null}
!1909 = metadata !{i32 786443, metadata !4, metadata !1907, i32 429, i32 23, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1910 = metadata !{i32 432, i32 13, metadata !1911, null}
!1911 = metadata !{i32 786443, metadata !4, metadata !1912, i32 432, i32 13, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1912 = metadata !{i32 786443, metadata !4, metadata !1913, i32 431, i32 17, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1913 = metadata !{i32 786443, metadata !4, metadata !1909, i32 430, i32 17, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1914 = metadata !{i32 433, i32 15, metadata !1911, null}
!1915 = metadata !{i32 435, i32 15, metadata !1911, null}
!1916 = metadata !{i32 436, i32 9, metadata !1912, null}
!1917 = metadata !{i32 439, i32 13, metadata !1918, null}
!1918 = metadata !{i32 786443, metadata !4, metadata !1913, i32 438, i32 17, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1919 = metadata !{i32 440, i32 9, metadata !1918, null}
!1920 = metadata !{i32 443, i32 13, metadata !1921, null}
!1921 = metadata !{i32 786443, metadata !4, metadata !1922, i32 443, i32 13, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1922 = metadata !{i32 786443, metadata !4, metadata !1913, i32 442, i32 17, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1923 = metadata !{i32 444, i32 11, metadata !1921, null}
!1924 = metadata !{i32 445, i32 9, metadata !1922, null}
!1925 = metadata !{i32 445, i32 9, metadata !1926, null}
!1926 = metadata !{i32 786443, metadata !4, metadata !1922, i32 445, i32 9, i32 1, i32 412} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1927 = metadata !{i32 445, i32 9, metadata !1928, null}
!1928 = metadata !{i32 786443, metadata !4, metadata !1922, i32 445, i32 9, i32 2, i32 413} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1929 = metadata !{i32 445, i32 9, metadata !1930, null}
!1930 = metadata !{i32 786443, metadata !4, metadata !1931, i32 445, i32 9, i32 4, i32 415} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1931 = metadata !{i32 786443, metadata !4, metadata !1922, i32 445, i32 9, i32 3, i32 414} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1932 = metadata !{i32 446, i32 9, metadata !1922, null}
!1933 = metadata !{i32 449, i32 9, metadata !1934, null}
!1934 = metadata !{i32 786443, metadata !4, metadata !1913, i32 448, i32 19, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1935 = metadata !{i32 451, i32 17, metadata !1936, null}
!1936 = metadata !{i32 786443, metadata !4, metadata !1937, i32 450, i32 21, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1937 = metadata !{i32 786443, metadata !4, metadata !1934, i32 449, i32 27, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1938 = metadata !{i32 452, i32 17, metadata !1939, null}
!1939 = metadata !{i32 786443, metadata !4, metadata !1936, i32 452, i32 17, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1940 = metadata !{i32 453, i32 15, metadata !1941, null}
!1941 = metadata !{i32 786443, metadata !4, metadata !1939, i32 452, i32 28, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1942 = metadata !{i32 453, i32 23, metadata !1941, null}
!1943 = metadata !{i32 455, i32 13, metadata !1936, null}
!1944 = metadata !{i32 786688, metadata !1945, metadata !"ep", metadata !33, i32 458, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ep] [line 458]
!1945 = metadata !{i32 786443, metadata !4, metadata !1937, i32 457, i32 21, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1946 = metadata !{i32 458, i32 25, metadata !1945, null}
!1947 = metadata !{i32 786688, metadata !1945, metadata !"previous", metadata !33, i32 458, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [previous] [line 458]
!1948 = metadata !{i32 458, i32 34, metadata !1945, null}
!1949 = metadata !{i32 459, i32 13, metadata !1945, null}
!1950 = metadata !{i32 460, i32 17, metadata !1951, null}
!1951 = metadata !{i32 786443, metadata !4, metadata !1945, i32 460, i32 17, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1952 = metadata !{i32 461, i32 15, metadata !1951, null}
!1953 = metadata !{i32 462, i32 18, metadata !1945, null}
!1954 = metadata !{i32 463, i32 13, metadata !1945, null}
!1955 = metadata !{i32 463, i32 13, metadata !1956, null}
!1956 = metadata !{i32 786443, metadata !4, metadata !1945, i32 463, i32 13, i32 1, i32 416} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1957 = metadata !{i32 463, i32 13, metadata !1958, null}
!1958 = metadata !{i32 786443, metadata !4, metadata !1945, i32 463, i32 13, i32 2, i32 417} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1959 = metadata !{i32 463, i32 13, metadata !1960, null}
!1960 = metadata !{i32 786443, metadata !4, metadata !1961, i32 463, i32 13, i32 4, i32 419} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1961 = metadata !{i32 786443, metadata !4, metadata !1945, i32 463, i32 13, i32 3, i32 418} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1962 = metadata !{i32 464, i32 18, metadata !1963, null}
!1963 = metadata !{i32 786443, metadata !4, metadata !1945, i32 464, i32 17, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1964 = metadata !{i32 465, i32 16, metadata !1963, null}
!1965 = metadata !{i32 466, i32 15, metadata !1966, null}
!1966 = metadata !{i32 786443, metadata !4, metadata !1963, i32 465, i32 57, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1967 = metadata !{i32 466, i32 23, metadata !1966, null}
!1968 = metadata !{i32 468, i32 13, metadata !1945, null}
!1969 = metadata !{i32 469, i32 13, metadata !1945, null}
!1970 = metadata !{i32 474, i32 17, metadata !1971, null}
!1971 = metadata !{i32 786443, metadata !4, metadata !1937, i32 473, i32 31, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1972 = metadata !{i32 475, i32 17, metadata !1973, null}
!1973 = metadata !{i32 786443, metadata !4, metadata !1971, i32 475, i32 17, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1974 = metadata !{i32 476, i32 15, metadata !1975, null}
!1975 = metadata !{i32 786443, metadata !4, metadata !1973, i32 475, i32 28, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1976 = metadata !{i32 476, i32 23, metadata !1975, null}
!1977 = metadata !{i32 478, i32 13, metadata !1971, null}
!1978 = metadata !{i32 480, i32 20, metadata !1937, null}
!1979 = metadata !{i32 482, i32 9, metadata !1934, null}
!1980 = metadata !{i32 483, i32 7, metadata !1934, null}
!1981 = metadata !{i32 786688, metadata !1982, metadata !"ep", metadata !33, i32 485, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ep] [line 485]
!1982 = metadata !{i32 786443, metadata !4, metadata !1913, i32 484, i32 22, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1983 = metadata !{i32 485, i32 21, metadata !1982, null}
!1984 = metadata !{i32 485, i32 26, metadata !1982, null}
!1985 = metadata !{i32 487, i32 14, metadata !1986, null}
!1986 = metadata !{i32 786443, metadata !4, metadata !1982, i32 487, i32 13, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1987 = metadata !{i32 488, i32 15, metadata !1988, null}
!1988 = metadata !{i32 786443, metadata !4, metadata !1989, i32 488, i32 15, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1989 = metadata !{i32 786443, metadata !4, metadata !1986, i32 487, i32 41, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1990 = metadata !{i32 488, i32 15, metadata !1991, null}
!1991 = metadata !{i32 786443, metadata !4, metadata !1988, i32 488, i32 15, i32 1, i32 420} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1992 = metadata !{i32 488, i32 15, metadata !1993, null}
!1993 = metadata !{i32 786443, metadata !4, metadata !1988, i32 488, i32 15, i32 2, i32 421} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1994 = metadata !{i32 489, i32 13, metadata !1995, null}
!1995 = metadata !{i32 786443, metadata !4, metadata !1988, i32 488, i32 55, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!1996 = metadata !{i32 489, i32 25, metadata !1995, null}
!1997 = metadata !{i32 492, i32 13, metadata !1988, null}
!1998 = metadata !{i32 493, i32 9, metadata !1989, null}
!1999 = metadata !{i32 495, i32 11, metadata !2000, null}
!2000 = metadata !{i32 786443, metadata !4, metadata !1986, i32 494, i32 14, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2001 = metadata !{i32 786688, metadata !2002, metadata !"res", metadata !33, i32 497, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 497]
!2002 = metadata !{i32 786443, metadata !4, metadata !2003, i32 496, i32 23, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2003 = metadata !{i32 786443, metadata !4, metadata !2000, i32 495, i32 24, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2004 = metadata !{i32 497, i32 27, metadata !2002, null}
!2005 = metadata !{i32 498, i32 26, metadata !2006, null}
!2006 = metadata !{i32 786443, metadata !4, metadata !2002, i32 498, i32 19, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2007 = metadata !{i32 499, i32 17, metadata !2006, null}
!2008 = metadata !{i32 501, i32 17, metadata !2009, null}
!2009 = metadata !{i32 786443, metadata !4, metadata !2006, i32 500, i32 20, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2010 = metadata !{i32 501, i32 29, metadata !2009, null}
!2011 = metadata !{i32 503, i32 15, metadata !2002, null}
!2012 = metadata !{i32 506, i32 15, metadata !2003, null}
!2013 = metadata !{i32 509, i32 19, metadata !2003, null}
!2014 = metadata !{i32 510, i32 15, metadata !2003, null}
!2015 = metadata !{i32 512, i32 19, metadata !2003, null}
!2016 = metadata !{i32 513, i32 15, metadata !2003, null}
!2017 = metadata !{i32 515, i32 15, metadata !2003, null}
!2018 = metadata !{i32 515, i32 20, metadata !2003, null}
!2019 = metadata !{i32 515, i32 28, metadata !2003, null}
!2020 = metadata !{i32 518, i32 9, metadata !1982, null}
!2021 = metadata !{i32 521, i32 3, metadata !1909, null}
!2022 = metadata !{i32 522, i32 3, metadata !149, null}
!2023 = metadata !{i32 523, i32 3, metadata !149, null}
!2024 = metadata !{i32 786689, metadata !123, metadata !"ms", metadata !33, i32 16777785, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ms] [line 569]
!2025 = metadata !{i32 569, i32 39, metadata !123, null}
!2026 = metadata !{i32 786689, metadata !123, metadata !"s", metadata !33, i32 33555001, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 569]
!2027 = metadata !{i32 569, i32 55, metadata !123, null}
!2028 = metadata !{i32 786689, metadata !123, metadata !"e", metadata !33, i32 50332217, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 569]
!2029 = metadata !{i32 569, i32 70, metadata !123, null}
!2030 = metadata !{i32 786688, metadata !123, metadata !"i", metadata !33, i32 570, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 570]
!2031 = metadata !{i32 570, i32 7, metadata !123, null}
!2032 = metadata !{i32 786688, metadata !123, metadata !"nlevels", metadata !33, i32 571, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nlevels] [line 571]
!2033 = metadata !{i32 571, i32 7, metadata !123, null}
!2034 = metadata !{i32 571, i32 3, metadata !123, null}
!2035 = metadata !{i32 571, i32 3, metadata !2036, null}
!2036 = metadata !{i32 786443, metadata !4, metadata !123, i32 571, i32 3, i32 1, i32 422} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2037 = metadata !{i32 571, i32 3, metadata !2038, null}
!2038 = metadata !{i32 786443, metadata !4, metadata !123, i32 571, i32 3, i32 3, i32 424} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2039 = metadata !{i32 571, i32 3, metadata !2040, null}
!2040 = metadata !{i32 786443, metadata !4, metadata !2041, i32 571, i32 3, i32 4, i32 425} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2041 = metadata !{i32 786443, metadata !4, metadata !123, i32 571, i32 3, i32 2, i32 423} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2042 = metadata !{i32 571, i32 3, metadata !2043, null}
!2043 = metadata !{i32 786443, metadata !4, metadata !2044, i32 571, i32 3, i32 6, i32 427} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2044 = metadata !{i32 786443, metadata !4, metadata !123, i32 571, i32 3, i32 5, i32 426} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2045 = metadata !{i32 572, i32 3, metadata !123, null}
!2046 = metadata !{i32 573, i32 8, metadata !2047, null}
!2047 = metadata !{i32 786443, metadata !4, metadata !123, i32 573, i32 3, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2048 = metadata !{i32 573, i32 8, metadata !2049, null}
!2049 = metadata !{i32 786443, metadata !4, metadata !2050, i32 573, i32 8, i32 2, i32 429} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2050 = metadata !{i32 786443, metadata !4, metadata !2047, i32 573, i32 8, i32 1, i32 428} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2051 = metadata !{i32 574, i32 5, metadata !2047, null}
!2052 = metadata !{i32 573, i32 28, metadata !2047, null}
!2053 = metadata !{i32 575, i32 3, metadata !123, null}
!2054 = metadata !{i32 786689, metadata !146, metadata !"ms", metadata !33, i32 16777766, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ms] [line 550]
!2055 = metadata !{i32 550, i32 42, metadata !146, null}
!2056 = metadata !{i32 786689, metadata !146, metadata !"i", metadata !33, i32 33554982, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 550]
!2057 = metadata !{i32 550, i32 50, metadata !146, null}
!2058 = metadata !{i32 786689, metadata !146, metadata !"s", metadata !33, i32 50332198, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 550]
!2059 = metadata !{i32 550, i32 65, metadata !146, null}
!2060 = metadata !{i32 786689, metadata !146, metadata !"e", metadata !33, i32 67109415, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 551]
!2061 = metadata !{i32 551, i32 65, metadata !146, null}
!2062 = metadata !{i32 552, i32 7, metadata !2063, null}
!2063 = metadata !{i32 786443, metadata !4, metadata !146, i32 552, i32 7, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2064 = metadata !{i32 553, i32 9, metadata !2065, null}
!2065 = metadata !{i32 786443, metadata !4, metadata !2066, i32 553, i32 9, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2066 = metadata !{i32 786443, metadata !4, metadata !2063, i32 552, i32 23, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2067 = metadata !{i32 554, i32 7, metadata !2065, null}
!2068 = metadata !{i32 556, i32 7, metadata !2065, null}
!2069 = metadata !{i32 557, i32 3, metadata !2066, null}
!2070 = metadata !{i32 786688, metadata !2071, metadata !"l", metadata !33, i32 559, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 559]
!2071 = metadata !{i32 786443, metadata !4, metadata !2063, i32 558, i32 8, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2072 = metadata !{i32 559, i32 15, metadata !2071, null}
!2073 = metadata !{i32 559, i32 5, metadata !2071, null}
!2074 = metadata !{i32 560, i32 9, metadata !2075, null}
!2075 = metadata !{i32 786443, metadata !4, metadata !2071, i32 560, i32 9, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2076 = metadata !{i32 560, i32 30, metadata !2077, null}
!2077 = metadata !{i32 786443, metadata !4, metadata !2075, i32 560, i32 30, i32 1, i32 430} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2078 = metadata !{i32 561, i32 9, metadata !2079, null}
!2079 = metadata !{i32 786443, metadata !4, metadata !2071, i32 561, i32 9, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2080 = metadata !{i32 562, i32 7, metadata !2079, null}
!2081 = metadata !{i32 564, i32 7, metadata !2079, null}
!2082 = metadata !{i32 566, i32 1, metadata !146, null}
!2083 = metadata !{i32 786689, metadata !179, metadata !"ms", metadata !33, i32 16777605, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ms] [line 389]
!2084 = metadata !{i32 389, i32 47, metadata !179, null}
!2085 = metadata !{i32 786689, metadata !179, metadata !"s", metadata !33, i32 33554821, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 389]
!2086 = metadata !{i32 389, i32 63, metadata !179, null}
!2087 = metadata !{i32 786689, metadata !179, metadata !"p", metadata !33, i32 50332038, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 390]
!2088 = metadata !{i32 390, i32 49, metadata !179, null}
!2089 = metadata !{i32 786689, metadata !179, metadata !"what", metadata !33, i32 67109254, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [what] [line 390]
!2090 = metadata !{i32 390, i32 56, metadata !179, null}
!2091 = metadata !{i32 786688, metadata !179, metadata !"res", metadata !33, i32 391, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 391]
!2092 = metadata !{i32 391, i32 15, metadata !179, null}
!2093 = metadata !{i32 786688, metadata !179, metadata !"level", metadata !33, i32 392, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 392]
!2094 = metadata !{i32 392, i32 7, metadata !179, null}
!2095 = metadata !{i32 392, i32 3, metadata !179, null}
!2096 = metadata !{i32 393, i32 7, metadata !2097, null}
!2097 = metadata !{i32 786443, metadata !4, metadata !179, i32 393, i32 7, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2098 = metadata !{i32 393, i32 33, metadata !2099, null}
!2099 = metadata !{i32 786443, metadata !4, metadata !2097, i32 393, i32 33, i32 1, i32 431} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2100 = metadata !{i32 394, i32 3, metadata !179, null}
!2101 = metadata !{i32 395, i32 3, metadata !179, null}
!2102 = metadata !{i32 396, i32 3, metadata !179, null}
!2103 = metadata !{i32 397, i32 12, metadata !2104, null}
!2104 = metadata !{i32 786443, metadata !4, metadata !179, i32 397, i32 7, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2105 = metadata !{i32 398, i32 5, metadata !2104, null}
!2106 = metadata !{i32 399, i32 3, metadata !179, null}
!2107 = metadata !{i32 786689, metadata !175, metadata !"ms", metadata !33, i32 16777619, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ms] [line 403]
!2108 = metadata !{i32 403, i32 45, metadata !175, null}
!2109 = metadata !{i32 786689, metadata !175, metadata !"s", metadata !33, i32 33554835, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 403]
!2110 = metadata !{i32 403, i32 61, metadata !175, null}
!2111 = metadata !{i32 786689, metadata !175, metadata !"p", metadata !33, i32 50332052, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 404]
!2112 = metadata !{i32 404, i32 47, metadata !175, null}
!2113 = metadata !{i32 786688, metadata !175, metadata !"l", metadata !33, i32 405, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 405]
!2114 = metadata !{i32 405, i32 7, metadata !175, null}
!2115 = metadata !{i32 405, i32 11, metadata !175, null}
!2116 = metadata !{i32 786688, metadata !175, metadata !"res", metadata !33, i32 406, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 406]
!2117 = metadata !{i32 406, i32 15, metadata !175, null}
!2118 = metadata !{i32 407, i32 3, metadata !175, null}
!2119 = metadata !{i32 408, i32 14, metadata !2120, null}
!2120 = metadata !{i32 786443, metadata !4, metadata !175, i32 408, i32 7, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2121 = metadata !{i32 409, i32 5, metadata !2120, null}
!2122 = metadata !{i32 410, i32 3, metadata !175, null}
!2123 = metadata !{i32 786689, metadata !174, metadata !"ms", metadata !33, i32 16777557, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ms] [line 341]
!2124 = metadata !{i32 341, i32 46, metadata !174, null}
!2125 = metadata !{i32 786689, metadata !174, metadata !"s", metadata !33, i32 33554773, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 341]
!2126 = metadata !{i32 341, i32 62, metadata !174, null}
!2127 = metadata !{i32 786689, metadata !174, metadata !"p", metadata !33, i32 50331990, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 342]
!2128 = metadata !{i32 342, i32 48, metadata !174, null}
!2129 = metadata !{i32 343, i32 7, metadata !2130, null}
!2130 = metadata !{i32 786443, metadata !4, metadata !174, i32 343, i32 7, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2131 = metadata !{i32 344, i32 5, metadata !2130, null}
!2132 = metadata !{i32 345, i32 7, metadata !2133, null}
!2133 = metadata !{i32 786443, metadata !4, metadata !174, i32 345, i32 7, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2134 = metadata !{i32 345, i32 17, metadata !2135, null}
!2135 = metadata !{i32 786443, metadata !4, metadata !2133, i32 345, i32 17, i32 1, i32 432} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2136 = metadata !{i32 786688, metadata !2137, metadata !"b", metadata !33, i32 347, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 347]
!2137 = metadata !{i32 786443, metadata !4, metadata !2133, i32 346, i32 8, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2138 = metadata !{i32 347, i32 9, metadata !2137, null}
!2139 = metadata !{i32 347, i32 5, metadata !2137, null}
!2140 = metadata !{i32 786688, metadata !2137, metadata !"e", metadata !33, i32 348, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 348]
!2141 = metadata !{i32 348, i32 9, metadata !2137, null}
!2142 = metadata !{i32 348, i32 5, metadata !2137, null}
!2143 = metadata !{i32 786688, metadata !2137, metadata !"cont", metadata !33, i32 349, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cont] [line 349]
!2144 = metadata !{i32 349, i32 9, metadata !2137, null}
!2145 = metadata !{i32 349, i32 5, metadata !2137, null}
!2146 = metadata !{i32 350, i32 5, metadata !2137, null}
!2147 = metadata !{i32 350, i32 5, metadata !2148, null}
!2148 = metadata !{i32 786443, metadata !4, metadata !2137, i32 350, i32 5, i32 1, i32 433} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2149 = metadata !{i32 351, i32 11, metadata !2150, null}
!2150 = metadata !{i32 786443, metadata !4, metadata !2151, i32 351, i32 11, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2151 = metadata !{i32 786443, metadata !4, metadata !2137, i32 350, i32 31, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2152 = metadata !{i32 352, i32 13, metadata !2153, null}
!2153 = metadata !{i32 786443, metadata !4, metadata !2154, i32 352, i32 13, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2154 = metadata !{i32 786443, metadata !4, metadata !2150, i32 351, i32 20, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2155 = metadata !{i32 352, i32 26, metadata !2156, null}
!2156 = metadata !{i32 786443, metadata !4, metadata !2153, i32 352, i32 26, i32 1, i32 434} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2157 = metadata !{i32 353, i32 7, metadata !2154, null}
!2158 = metadata !{i32 354, i32 16, metadata !2159, null}
!2159 = metadata !{i32 786443, metadata !4, metadata !2150, i32 354, i32 16, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2160 = metadata !{i32 354, i32 25, metadata !2161, null}
!2161 = metadata !{i32 786443, metadata !4, metadata !2159, i32 354, i32 25, i32 1, i32 435} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2162 = metadata !{i32 355, i32 5, metadata !2151, null}
!2163 = metadata !{i32 357, i32 3, metadata !174, null}
!2164 = metadata !{i32 358, i32 1, metadata !174, null}
!2165 = metadata !{i32 786689, metadata !171, metadata !"ms", metadata !33, i32 16777474, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ms] [line 258]
!2166 = metadata !{i32 258, i32 42, metadata !171, null}
!2167 = metadata !{i32 786689, metadata !171, metadata !"p", metadata !33, i32 33554690, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 258]
!2168 = metadata !{i32 258, i32 58, metadata !171, null}
!2169 = metadata !{i32 259, i32 3, metadata !171, null}
!2170 = metadata !{i32 261, i32 11, metadata !2171, null}
!2171 = metadata !{i32 786443, metadata !4, metadata !2172, i32 261, i32 11, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2172 = metadata !{i32 786443, metadata !4, metadata !2173, i32 260, i32 17, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2173 = metadata !{i32 786443, metadata !4, metadata !171, i32 259, i32 17, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2174 = metadata !{i32 262, i32 9, metadata !2171, null}
!2175 = metadata !{i32 263, i32 7, metadata !2172, null}
!2176 = metadata !{i32 266, i32 11, metadata !2177, null}
!2177 = metadata !{i32 786443, metadata !4, metadata !2178, i32 266, i32 11, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2178 = metadata !{i32 786443, metadata !4, metadata !2173, i32 265, i32 15, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2179 = metadata !{i32 266, i32 22, metadata !2180, null}
!2180 = metadata !{i32 786443, metadata !4, metadata !2177, i32 266, i32 22, i32 1, i32 436} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2181 = metadata !{i32 267, i32 7, metadata !2178, null}
!2182 = metadata !{i32 268, i32 13, metadata !2183, null}
!2183 = metadata !{i32 786443, metadata !4, metadata !2184, i32 268, i32 13, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2184 = metadata !{i32 786443, metadata !4, metadata !2178, i32 267, i32 10, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2185 = metadata !{i32 269, i32 11, metadata !2183, null}
!2186 = metadata !{i32 270, i32 13, metadata !2187, null}
!2187 = metadata !{i32 786443, metadata !4, metadata !2184, i32 270, i32 13, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2188 = metadata !{i32 270, i32 13, metadata !2189, null}
!2189 = metadata !{i32 786443, metadata !4, metadata !2187, i32 270, i32 13, i32 1, i32 437} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2190 = metadata !{i32 271, i32 11, metadata !2187, null}
!2191 = metadata !{i32 272, i32 7, metadata !2184, null}
!2192 = metadata !{i32 272, i32 7, metadata !2193, null}
!2193 = metadata !{i32 786443, metadata !4, metadata !2184, i32 272, i32 7, i32 1, i32 438} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2194 = metadata !{i32 273, i32 7, metadata !2178, null}
!2195 = metadata !{i32 276, i32 7, metadata !2196, null}
!2196 = metadata !{i32 786443, metadata !4, metadata !2173, i32 275, i32 14, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2197 = metadata !{i32 279, i32 1, metadata !171, null}
!2198 = metadata !{i32 786689, metadata !168, metadata !"c", metadata !33, i32 16777518, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 302]
!2199 = metadata !{i32 302, i32 35, metadata !168, null}
!2200 = metadata !{i32 786689, metadata !168, metadata !"p", metadata !33, i32 33554734, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 302]
!2201 = metadata !{i32 302, i32 50, metadata !168, null}
!2202 = metadata !{i32 786689, metadata !168, metadata !"ec", metadata !33, i32 50331950, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ec] [line 302]
!2203 = metadata !{i32 302, i32 65, metadata !168, null}
!2204 = metadata !{i32 786688, metadata !168, metadata !"sig", metadata !33, i32 303, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sig] [line 303]
!2205 = metadata !{i32 303, i32 7, metadata !168, null}
!2206 = metadata !{i32 303, i32 3, metadata !168, null}
!2207 = metadata !{i32 304, i32 7, metadata !2208, null}
!2208 = metadata !{i32 786443, metadata !4, metadata !168, i32 304, i32 7, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2209 = metadata !{i32 305, i32 5, metadata !2210, null}
!2210 = metadata !{i32 786443, metadata !4, metadata !2208, i32 304, i32 22, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2211 = metadata !{i32 306, i32 5, metadata !2210, null}
!2212 = metadata !{i32 307, i32 3, metadata !2210, null}
!2213 = metadata !{i32 308, i32 3, metadata !168, null}
!2214 = metadata !{i32 308, i32 3, metadata !2215, null}
!2215 = metadata !{i32 786443, metadata !4, metadata !168, i32 308, i32 3, i32 1, i32 439} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2216 = metadata !{i32 309, i32 9, metadata !2217, null}
!2217 = metadata !{i32 786443, metadata !4, metadata !2218, i32 309, i32 9, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2218 = metadata !{i32 786443, metadata !4, metadata !168, i32 308, i32 20, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2219 = metadata !{i32 310, i32 7, metadata !2220, null}
!2220 = metadata !{i32 786443, metadata !4, metadata !2217, i32 309, i32 22, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2221 = metadata !{i32 311, i32 11, metadata !2222, null}
!2222 = metadata !{i32 786443, metadata !4, metadata !2220, i32 311, i32 11, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2223 = metadata !{i32 312, i32 9, metadata !2222, null}
!2224 = metadata !{i32 313, i32 5, metadata !2220, null}
!2225 = metadata !{i32 314, i32 14, metadata !2226, null}
!2226 = metadata !{i32 786443, metadata !4, metadata !2217, i32 314, i32 14, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2227 = metadata !{i32 314, i32 14, metadata !2228, null}
!2228 = metadata !{i32 786443, metadata !4, metadata !2226, i32 314, i32 14, i32 1, i32 440} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2229 = metadata !{i32 315, i32 7, metadata !2230, null}
!2230 = metadata !{i32 786443, metadata !4, metadata !2226, i32 314, i32 45, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2231 = metadata !{i32 316, i32 11, metadata !2232, null}
!2232 = metadata !{i32 786443, metadata !4, metadata !2230, i32 316, i32 11, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2233 = metadata !{i32 316, i32 11, metadata !2234, null}
!2234 = metadata !{i32 786443, metadata !4, metadata !2232, i32 316, i32 11, i32 1, i32 441} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2235 = metadata !{i32 317, i32 9, metadata !2232, null}
!2236 = metadata !{i32 318, i32 5, metadata !2230, null}
!2237 = metadata !{i32 319, i32 14, metadata !2238, null}
!2238 = metadata !{i32 786443, metadata !4, metadata !2226, i32 319, i32 14, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2239 = metadata !{i32 319, i32 30, metadata !2240, null}
!2240 = metadata !{i32 786443, metadata !4, metadata !2238, i32 319, i32 30, i32 1, i32 442} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2241 = metadata !{i32 320, i32 3, metadata !2218, null}
!2242 = metadata !{i32 321, i32 3, metadata !168, null}
!2243 = metadata !{i32 322, i32 1, metadata !168, null}
!2244 = metadata !{i32 786689, metadata !162, metadata !"ms", metadata !33, i32 16777630, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ms] [line 414]
!2245 = metadata !{i32 414, i32 47, metadata !162, null}
!2246 = metadata !{i32 786689, metadata !162, metadata !"s", metadata !33, i32 33554846, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 414]
!2247 = metadata !{i32 414, i32 63, metadata !162, null}
!2248 = metadata !{i32 786689, metadata !162, metadata !"l", metadata !33, i32 50332062, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 414]
!2249 = metadata !{i32 414, i32 70, metadata !162, null}
!2250 = metadata !{i32 786688, metadata !162, metadata !"len", metadata !33, i32 415, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 415]
!2251 = metadata !{i32 415, i32 10, metadata !162, null}
!2252 = metadata !{i32 416, i32 7, metadata !162, null}
!2253 = metadata !{i32 417, i32 3, metadata !162, null}
!2254 = metadata !{i32 418, i32 7, metadata !2255, null}
!2255 = metadata !{i32 786443, metadata !4, metadata !162, i32 418, i32 7, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2256 = metadata !{i32 419, i32 7, metadata !2255, null}
!2257 = metadata !{i32 420, i32 5, metadata !2255, null}
!2258 = metadata !{i32 421, i32 8, metadata !2255, null}
!2259 = metadata !{i32 422, i32 1, metadata !162, null}
!2260 = metadata !{i32 786689, metadata !156, metadata !"ms", metadata !33, i32 16777541, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ms] [line 325]
!2261 = metadata !{i32 325, i32 37, metadata !156, null}
!2262 = metadata !{i32 786689, metadata !156, metadata !"s", metadata !33, i32 33554757, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 325]
!2263 = metadata !{i32 325, i32 53, metadata !156, null}
!2264 = metadata !{i32 786689, metadata !156, metadata !"p", metadata !33, i32 50331973, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 325]
!2265 = metadata !{i32 325, i32 68, metadata !156, null}
!2266 = metadata !{i32 786689, metadata !156, metadata !"ep", metadata !33, i32 67109190, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ep] [line 326]
!2267 = metadata !{i32 326, i32 37, metadata !156, null}
!2268 = metadata !{i32 327, i32 7, metadata !2269, null}
!2269 = metadata !{i32 786443, metadata !4, metadata !156, i32 327, i32 7, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2270 = metadata !{i32 328, i32 5, metadata !2269, null}
!2271 = metadata !{i32 786688, metadata !2272, metadata !"c", metadata !33, i32 330, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 330]
!2272 = metadata !{i32 786443, metadata !4, metadata !2269, i32 329, i32 8, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2273 = metadata !{i32 330, i32 9, metadata !2272, null}
!2274 = metadata !{i32 330, i32 5, metadata !2272, null}
!2275 = metadata !{i32 331, i32 5, metadata !2272, null}
!2276 = metadata !{i32 332, i32 17, metadata !2277, null}
!2277 = metadata !{i32 786443, metadata !4, metadata !2272, i32 331, i32 17, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2278 = metadata !{i32 333, i32 26, metadata !2277, null}
!2279 = metadata !{i32 334, i32 24, metadata !2277, null}
!2280 = metadata !{i32 335, i32 17, metadata !2277, null}
!2281 = metadata !{i32 338, i32 1, metadata !156, null}
!2282 = metadata !{i32 786689, metadata !155, metadata !"ms", metadata !33, i32 16777577, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ms] [line 361]
!2283 = metadata !{i32 361, i32 44, metadata !155, null}
!2284 = metadata !{i32 786689, metadata !155, metadata !"s", metadata !33, i32 33554793, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 361]
!2285 = metadata !{i32 361, i32 60, metadata !155, null}
!2286 = metadata !{i32 786689, metadata !155, metadata !"p", metadata !33, i32 50332010, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 362]
!2287 = metadata !{i32 362, i32 46, metadata !155, null}
!2288 = metadata !{i32 786689, metadata !155, metadata !"ep", metadata !33, i32 67109226, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ep] [line 362]
!2289 = metadata !{i32 362, i32 61, metadata !155, null}
!2290 = metadata !{i32 786688, metadata !155, metadata !"i", metadata !33, i32 363, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 363]
!2291 = metadata !{i32 363, i32 13, metadata !155, null}
!2292 = metadata !{i32 363, i32 3, metadata !155, null}
!2293 = metadata !{i32 364, i32 3, metadata !155, null}
!2294 = metadata !{i32 364, i32 10, metadata !2295, null}
!2295 = metadata !{i32 786443, metadata !4, metadata !155, i32 364, i32 10, i32 1, i32 443} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2296 = metadata !{i32 365, i32 5, metadata !155, null}
!2297 = metadata !{i32 367, i32 3, metadata !155, null}
!2298 = metadata !{i32 367, i32 3, metadata !2299, null}
!2299 = metadata !{i32 786443, metadata !4, metadata !155, i32 367, i32 3, i32 1, i32 444} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2300 = metadata !{i32 786688, metadata !2301, metadata !"res", metadata !33, i32 368, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 368]
!2301 = metadata !{i32 786443, metadata !4, metadata !155, i32 367, i32 16, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2302 = metadata !{i32 368, i32 17, metadata !2301, null}
!2303 = metadata !{i32 368, i32 23, metadata !2301, null}
!2304 = metadata !{i32 369, i32 9, metadata !2305, null}
!2305 = metadata !{i32 786443, metadata !4, metadata !2301, i32 369, i32 9, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2306 = metadata !{i32 369, i32 14, metadata !2307, null}
!2307 = metadata !{i32 786443, metadata !4, metadata !2305, i32 369, i32 14, i32 1, i32 445} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2308 = metadata !{i32 370, i32 5, metadata !2301, null}
!2309 = metadata !{i32 371, i32 3, metadata !2301, null}
!2310 = metadata !{i32 372, i32 3, metadata !155, null}
!2311 = metadata !{i32 373, i32 1, metadata !155, null}
!2312 = metadata !{i32 786689, metadata !152, metadata !"ms", metadata !33, i32 16777592, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ms] [line 376]
!2313 = metadata !{i32 376, i32 44, metadata !152, null}
!2314 = metadata !{i32 786689, metadata !152, metadata !"s", metadata !33, i32 33554808, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 376]
!2315 = metadata !{i32 376, i32 60, metadata !152, null}
!2316 = metadata !{i32 786689, metadata !152, metadata !"p", metadata !33, i32 50332025, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 377]
!2317 = metadata !{i32 377, i32 46, metadata !152, null}
!2318 = metadata !{i32 786689, metadata !152, metadata !"ep", metadata !33, i32 67109241, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ep] [line 377]
!2319 = metadata !{i32 377, i32 61, metadata !152, null}
!2320 = metadata !{i32 378, i32 3, metadata !2321, null}
!2321 = metadata !{i32 786443, metadata !4, metadata !152, i32 378, i32 3, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2322 = metadata !{i32 786688, metadata !2323, metadata !"res", metadata !33, i32 379, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 379]
!2323 = metadata !{i32 786443, metadata !4, metadata !2321, i32 378, i32 12, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2324 = metadata !{i32 379, i32 17, metadata !2323, null}
!2325 = metadata !{i32 379, i32 23, metadata !2323, null}
!2326 = metadata !{i32 380, i32 9, metadata !2327, null}
!2327 = metadata !{i32 786443, metadata !4, metadata !2323, i32 380, i32 9, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2328 = metadata !{i32 381, i32 7, metadata !2327, null}
!2329 = metadata !{i32 382, i32 14, metadata !2330, null}
!2330 = metadata !{i32 786443, metadata !4, metadata !2327, i32 382, i32 14, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2331 = metadata !{i32 383, i32 7, metadata !2330, null}
!2332 = metadata !{i32 384, i32 10, metadata !2330, null}
!2333 = metadata !{i32 385, i32 3, metadata !2323, null}
!2334 = metadata !{i32 386, i32 1, metadata !152, null}
!2335 = metadata !{i32 786689, metadata !159, metadata !"c", metadata !33, i32 16777498, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 282]
!2336 = metadata !{i32 282, i32 29, metadata !159, null}
!2337 = metadata !{i32 786689, metadata !159, metadata !"cl", metadata !33, i32 33554714, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cl] [line 282]
!2338 = metadata !{i32 282, i32 36, metadata !159, null}
!2339 = metadata !{i32 786688, metadata !159, metadata !"res", metadata !33, i32 283, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 283]
!2340 = metadata !{i32 283, i32 7, metadata !159, null}
!2341 = metadata !{i32 284, i32 11, metadata !159, null}
!2342 = metadata !{i32 285, i32 16, metadata !2343, null}
!2343 = metadata !{i32 786443, metadata !4, metadata !159, i32 284, i32 24, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2344 = metadata !{i32 285, i32 22, metadata !2343, null}
!2345 = metadata !{i32 285, i32 34, metadata !2343, null}
!2346 = metadata !{i32 286, i32 16, metadata !2343, null}
!2347 = metadata !{i32 286, i32 22, metadata !2343, null}
!2348 = metadata !{i32 286, i32 34, metadata !2343, null}
!2349 = metadata !{i32 287, i32 16, metadata !2343, null}
!2350 = metadata !{i32 287, i32 22, metadata !2343, null}
!2351 = metadata !{i32 287, i32 34, metadata !2343, null}
!2352 = metadata !{i32 288, i32 16, metadata !2343, null}
!2353 = metadata !{i32 288, i32 22, metadata !2343, null}
!2354 = metadata !{i32 288, i32 34, metadata !2343, null}
!2355 = metadata !{i32 289, i32 16, metadata !2343, null}
!2356 = metadata !{i32 289, i32 22, metadata !2343, null}
!2357 = metadata !{i32 289, i32 34, metadata !2343, null}
!2358 = metadata !{i32 290, i32 16, metadata !2343, null}
!2359 = metadata !{i32 290, i32 22, metadata !2343, null}
!2360 = metadata !{i32 290, i32 34, metadata !2343, null}
!2361 = metadata !{i32 291, i32 16, metadata !2343, null}
!2362 = metadata !{i32 291, i32 22, metadata !2343, null}
!2363 = metadata !{i32 291, i32 34, metadata !2343, null}
!2364 = metadata !{i32 292, i32 16, metadata !2343, null}
!2365 = metadata !{i32 292, i32 22, metadata !2343, null}
!2366 = metadata !{i32 292, i32 34, metadata !2343, null}
!2367 = metadata !{i32 293, i32 16, metadata !2343, null}
!2368 = metadata !{i32 293, i32 22, metadata !2343, null}
!2369 = metadata !{i32 293, i32 34, metadata !2343, null}
!2370 = metadata !{i32 294, i32 16, metadata !2343, null}
!2371 = metadata !{i32 294, i32 22, metadata !2343, null}
!2372 = metadata !{i32 294, i32 35, metadata !2343, null}
!2373 = metadata !{i32 295, i32 16, metadata !2343, null}
!2374 = metadata !{i32 295, i32 32, metadata !2343, null}
!2375 = metadata !{i32 296, i32 14, metadata !2343, null}
!2376 = metadata !{i32 298, i32 3, metadata !159, null}
!2377 = metadata !{i32 298, i32 11, metadata !159, null}
!2378 = metadata !{i32 298, i32 11, metadata !2379, null}
!2379 = metadata !{i32 786443, metadata !4, metadata !159, i32 298, i32 11, i32 1, i32 446} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2380 = metadata !{i32 298, i32 11, metadata !2381, null}
!2381 = metadata !{i32 786443, metadata !4, metadata !159, i32 298, i32 11, i32 2, i32 447} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2382 = metadata !{i32 298, i32 11, metadata !2383, null}
!2383 = metadata !{i32 786443, metadata !4, metadata !2384, i32 298, i32 11, i32 4, i32 449} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2384 = metadata !{i32 786443, metadata !4, metadata !159, i32 298, i32 11, i32 3, i32 448} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2385 = metadata !{i32 299, i32 1, metadata !159, null}
!2386 = metadata !{i32 786689, metadata !165, metadata !"ms", metadata !33, i32 16777458, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ms] [line 242]
!2387 = metadata !{i32 242, i32 39, metadata !165, null}
!2388 = metadata !{i32 786689, metadata !165, metadata !"l", metadata !33, i32 33554674, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 242]
!2389 = metadata !{i32 242, i32 47, metadata !165, null}
!2390 = metadata !{i32 243, i32 3, metadata !165, null}
!2391 = metadata !{i32 244, i32 7, metadata !2392, null}
!2392 = metadata !{i32 786443, metadata !4, metadata !165, i32 244, i32 7, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2393 = metadata !{i32 244, i32 7, metadata !2394, null}
!2394 = metadata !{i32 786443, metadata !4, metadata !2392, i32 244, i32 7, i32 1, i32 450} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2395 = metadata !{i32 244, i32 7, metadata !2396, null}
!2396 = metadata !{i32 786443, metadata !4, metadata !2392, i32 244, i32 7, i32 2, i32 451} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2397 = metadata !{i32 245, i32 12, metadata !2392, null}
!2398 = metadata !{i32 246, i32 3, metadata !165, null}
!2399 = metadata !{i32 247, i32 1, metadata !165, null}
!2400 = metadata !{i32 786689, metadata !176, metadata !"ms", metadata !33, i32 16777466, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ms] [line 250]
!2401 = metadata !{i32 250, i32 42, metadata !176, null}
!2402 = metadata !{i32 786688, metadata !176, metadata !"level", metadata !33, i32 251, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 251]
!2403 = metadata !{i32 251, i32 7, metadata !176, null}
!2404 = metadata !{i32 251, i32 3, metadata !176, null}
!2405 = metadata !{i32 252, i32 8, metadata !2406, null}
!2406 = metadata !{i32 786443, metadata !4, metadata !176, i32 252, i32 3, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2407 = metadata !{i32 252, i32 8, metadata !2408, null}
!2408 = metadata !{i32 786443, metadata !4, metadata !2409, i32 252, i32 8, i32 2, i32 455} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2409 = metadata !{i32 786443, metadata !4, metadata !2406, i32 252, i32 8, i32 1, i32 452} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2410 = metadata !{i32 253, i32 9, metadata !2411, null}
!2411 = metadata !{i32 786443, metadata !4, metadata !2406, i32 253, i32 9, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2412 = metadata !{i32 253, i32 51, metadata !2413, null}
!2413 = metadata !{i32 786443, metadata !4, metadata !2411, i32 253, i32 51, i32 1, i32 453} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2414 = metadata !{i32 253, i32 35, metadata !2415, null}
!2415 = metadata !{i32 786443, metadata !4, metadata !2411, i32 253, i32 35, i32 2, i32 454} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2416 = metadata !{i32 252, i32 27, metadata !2406, null}
!2417 = metadata !{i32 254, i32 10, metadata !176, null}
!2418 = metadata !{i32 255, i32 1, metadata !176, null}
!2419 = metadata !{i32 786689, metadata !197, metadata !"ms", metadata !33, i32 16777947, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ms] [line 731]
!2420 = metadata !{i32 731, i32 36, metadata !197, null}
!2421 = metadata !{i32 786689, metadata !197, metadata !"b", metadata !33, i32 33555163, metadata !99, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 731]
!2422 = metadata !{i32 731, i32 53, metadata !197, null}
!2423 = metadata !{i32 786689, metadata !197, metadata !"s", metadata !33, i32 50332379, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 731]
!2424 = metadata !{i32 731, i32 68, metadata !197, null}
!2425 = metadata !{i32 786689, metadata !197, metadata !"e", metadata !33, i32 67109596, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 732]
!2426 = metadata !{i32 732, i32 52, metadata !197, null}
!2427 = metadata !{i32 786689, metadata !197, metadata !"tr", metadata !33, i32 83886812, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tr] [line 732]
!2428 = metadata !{i32 732, i32 59, metadata !197, null}
!2429 = metadata !{i32 786688, metadata !197, metadata !"L", metadata !33, i32 733, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L] [line 733]
!2430 = metadata !{i32 733, i32 14, metadata !197, null}
!2431 = metadata !{i32 733, i32 3, metadata !197, null}
!2432 = metadata !{i32 734, i32 3, metadata !197, null}
!2433 = metadata !{i32 786688, metadata !2434, metadata !"n", metadata !33, i32 736, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 736]
!2434 = metadata !{i32 786443, metadata !4, metadata !2435, i32 735, i32 25, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2435 = metadata !{i32 786443, metadata !4, metadata !197, i32 734, i32 15, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2436 = metadata !{i32 736, i32 11, metadata !2434, null}
!2437 = metadata !{i32 737, i32 7, metadata !2434, null}
!2438 = metadata !{i32 738, i32 11, metadata !2434, null}
!2439 = metadata !{i32 739, i32 7, metadata !2434, null}
!2440 = metadata !{i32 740, i32 7, metadata !2434, null}
!2441 = metadata !{i32 743, i32 7, metadata !2442, null}
!2442 = metadata !{i32 786443, metadata !4, metadata !2435, i32 742, i32 22, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2443 = metadata !{i32 744, i32 7, metadata !2442, null}
!2444 = metadata !{i32 745, i32 7, metadata !2442, null}
!2445 = metadata !{i32 748, i32 7, metadata !2446, null}
!2446 = metadata !{i32 786443, metadata !4, metadata !2435, i32 747, i32 14, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2447 = metadata !{i32 749, i32 7, metadata !2446, null}
!2448 = metadata !{i32 752, i32 8, metadata !2449, null}
!2449 = metadata !{i32 786443, metadata !4, metadata !197, i32 752, i32 7, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2450 = metadata !{i32 753, i32 5, metadata !2451, null}
!2451 = metadata !{i32 786443, metadata !4, metadata !2449, i32 752, i32 30, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2452 = metadata !{i32 754, i32 5, metadata !2451, null}
!2453 = metadata !{i32 755, i32 3, metadata !2451, null}
!2454 = metadata !{i32 756, i32 13, metadata !2455, null}
!2455 = metadata !{i32 786443, metadata !4, metadata !2449, i32 756, i32 12, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2456 = metadata !{i32 757, i32 5, metadata !2455, null}
!2457 = metadata !{i32 757, i32 55, metadata !2455, null}
!2458 = metadata !{i32 758, i32 3, metadata !197, null}
!2459 = metadata !{i32 759, i32 1, metadata !197, null}
!2460 = metadata !{i32 759, i32 1, metadata !2461, null}
!2461 = metadata !{i32 786443, metadata !4, metadata !197, i32 759, i32 1, i32 1, i32 456} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2462 = metadata !{i32 786689, metadata !200, metadata !"ms", metadata !33, i32 16777919, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ms] [line 703]
!2463 = metadata !{i32 703, i32 32, metadata !200, null}
!2464 = metadata !{i32 786689, metadata !200, metadata !"b", metadata !33, i32 33555135, metadata !99, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 703]
!2465 = metadata !{i32 703, i32 49, metadata !200, null}
!2466 = metadata !{i32 786689, metadata !200, metadata !"s", metadata !33, i32 50332351, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 703]
!2467 = metadata !{i32 703, i32 64, metadata !200, null}
!2468 = metadata !{i32 786689, metadata !200, metadata !"e", metadata !33, i32 67109568, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 704]
!2469 = metadata !{i32 704, i32 64, metadata !200, null}
!2470 = metadata !{i32 786688, metadata !200, metadata !"l", metadata !33, i32 705, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 705]
!2471 = metadata !{i32 705, i32 10, metadata !200, null}
!2472 = metadata !{i32 786688, metadata !200, metadata !"i", metadata !33, i32 705, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 705]
!2473 = metadata !{i32 705, i32 13, metadata !200, null}
!2474 = metadata !{i32 786688, metadata !200, metadata !"L", metadata !33, i32 706, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L] [line 706]
!2475 = metadata !{i32 706, i32 14, metadata !200, null}
!2476 = metadata !{i32 706, i32 3, metadata !200, null}
!2477 = metadata !{i32 786688, metadata !200, metadata !"news", metadata !33, i32 707, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [news] [line 707]
!2478 = metadata !{i32 707, i32 15, metadata !200, null}
!2479 = metadata !{i32 707, i32 22, metadata !200, null}
!2480 = metadata !{i32 708, i32 8, metadata !2481, null}
!2481 = metadata !{i32 786443, metadata !4, metadata !200, i32 708, i32 3, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2482 = metadata !{i32 708, i32 8, metadata !2483, null}
!2483 = metadata !{i32 786443, metadata !4, metadata !2484, i32 708, i32 8, i32 2, i32 464} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2484 = metadata !{i32 786443, metadata !4, metadata !2481, i32 708, i32 8, i32 1, i32 457} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2485 = metadata !{i32 709, i32 9, metadata !2486, null}
!2486 = metadata !{i32 786443, metadata !4, metadata !2487, i32 709, i32 9, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2487 = metadata !{i32 786443, metadata !4, metadata !2481, i32 708, i32 27, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2488 = metadata !{i32 710, i32 7, metadata !2486, null}
!2489 = metadata !{i32 710, i32 7, metadata !2490, null}
!2490 = metadata !{i32 786443, metadata !4, metadata !2486, i32 710, i32 7, i32 2, i32 459} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2491 = metadata !{i32 710, i32 7, metadata !2492, null}
!2492 = metadata !{i32 786443, metadata !4, metadata !2493, i32 710, i32 7, i32 3, i32 460} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2493 = metadata !{i32 786443, metadata !4, metadata !2486, i32 710, i32 7, i32 1, i32 458} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2494 = metadata !{i32 712, i32 7, metadata !2495, null}
!2495 = metadata !{i32 786443, metadata !4, metadata !2486, i32 711, i32 10, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2496 = metadata !{i32 713, i32 11, metadata !2497, null}
!2497 = metadata !{i32 786443, metadata !4, metadata !2495, i32 713, i32 11, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2498 = metadata !{i32 713, i32 12, metadata !2497, null}
!2499 = metadata !{i32 714, i32 13, metadata !2500, null}
!2500 = metadata !{i32 786443, metadata !4, metadata !2501, i32 714, i32 13, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2501 = metadata !{i32 786443, metadata !4, metadata !2497, i32 713, i32 37, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2502 = metadata !{i32 715, i32 11, metadata !2500, null}
!2503 = metadata !{i32 716, i32 9, metadata !2501, null}
!2504 = metadata !{i32 716, i32 9, metadata !2505, null}
!2505 = metadata !{i32 786443, metadata !4, metadata !2501, i32 716, i32 9, i32 2, i32 462} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2506 = metadata !{i32 716, i32 9, metadata !2507, null}
!2507 = metadata !{i32 786443, metadata !4, metadata !2508, i32 716, i32 9, i32 3, i32 463} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2508 = metadata !{i32 786443, metadata !4, metadata !2501, i32 716, i32 9, i32 1, i32 461} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2509 = metadata !{i32 717, i32 7, metadata !2501, null}
!2510 = metadata !{i32 718, i32 16, metadata !2511, null}
!2511 = metadata !{i32 786443, metadata !4, metadata !2497, i32 718, i32 16, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2512 = metadata !{i32 719, i32 11, metadata !2511, null}
!2513 = metadata !{i32 721, i32 9, metadata !2514, null}
!2514 = metadata !{i32 786443, metadata !4, metadata !2511, i32 720, i32 12, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2515 = metadata !{i32 722, i32 9, metadata !2514, null}
!2516 = metadata !{i32 723, i32 9, metadata !2514, null}
!2517 = metadata !{i32 724, i32 9, metadata !2514, null}
!2518 = metadata !{i32 727, i32 3, metadata !2487, null}
!2519 = metadata !{i32 708, i32 22, metadata !2481, null}
!2520 = metadata !{i32 728, i32 1, metadata !200, null}
!2521 = metadata !{i32 786689, metadata !204, metadata !"L", metadata !33, i32 16777889, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 673]
!2522 = metadata !{i32 673, i32 35, metadata !204, null}
!2523 = metadata !{i32 786688, metadata !204, metadata !"gm", metadata !33, i32 674, metadata !804, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gm] [line 674]
!2524 = metadata !{i32 674, i32 16, metadata !204, null}
!2525 = metadata !{i32 674, i32 36, metadata !204, null}
!2526 = metadata !{i32 786688, metadata !204, metadata !"src", metadata !33, i32 675, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 675]
!2527 = metadata !{i32 675, i32 15, metadata !204, null}
!2528 = metadata !{i32 676, i32 3, metadata !204, null}
!2529 = metadata !{i32 677, i32 8, metadata !2530, null}
!2530 = metadata !{i32 786443, metadata !4, metadata !204, i32 677, i32 3, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2531 = metadata !{i32 677, i32 8, metadata !2532, null}
!2532 = metadata !{i32 786443, metadata !4, metadata !2533, i32 677, i32 8, i32 2, i32 467} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2533 = metadata !{i32 786443, metadata !4, metadata !2530, i32 677, i32 8, i32 1, i32 465} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2534 = metadata !{i32 786688, metadata !2535, metadata !"e", metadata !33, i32 678, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 678]
!2535 = metadata !{i32 786443, metadata !4, metadata !2530, i32 677, i32 53, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2536 = metadata !{i32 678, i32 17, metadata !2535, null}
!2537 = metadata !{i32 679, i32 5, metadata !2535, null}
!2538 = metadata !{i32 680, i32 14, metadata !2539, null}
!2539 = metadata !{i32 786443, metadata !4, metadata !2535, i32 680, i32 9, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2540 = metadata !{i32 680, i32 14, metadata !2541, null}
!2541 = metadata !{i32 786443, metadata !4, metadata !2539, i32 680, i32 14, i32 1, i32 466} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2542 = metadata !{i32 681, i32 7, metadata !2543, null}
!2543 = metadata !{i32 786443, metadata !4, metadata !2539, i32 680, i32 73, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2544 = metadata !{i32 682, i32 14, metadata !2543, null}
!2545 = metadata !{i32 684, i32 3, metadata !2535, null}
!2546 = metadata !{i32 677, i32 46, metadata !2530, null}
!2547 = metadata !{i32 685, i32 3, metadata !204, null}
!2548 = metadata !{i32 686, i32 1, metadata !204, null}
!2549 = metadata !{i32 786689, metadata !218, metadata !"L", metadata !33, i32 16778196, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 980]
!2550 = metadata !{i32 980, i32 43, metadata !218, null}
!2551 = metadata !{i32 786689, metadata !218, metadata !"strfrmt", metadata !33, i32 33555412, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [strfrmt] [line 980]
!2552 = metadata !{i32 980, i32 58, metadata !218, null}
!2553 = metadata !{i32 786689, metadata !218, metadata !"form", metadata !33, i32 50332628, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [form] [line 980]
!2554 = metadata !{i32 980, i32 73, metadata !218, null}
!2555 = metadata !{i32 786688, metadata !218, metadata !"p", metadata !33, i32 981, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 981]
!2556 = metadata !{i32 981, i32 15, metadata !218, null}
!2557 = metadata !{i32 981, i32 3, metadata !218, null}
!2558 = metadata !{i32 982, i32 3, metadata !218, null}
!2559 = metadata !{i32 982, i32 3, metadata !2560, null}
!2560 = metadata !{i32 786443, metadata !4, metadata !2561, i32 982, i32 3, i32 5, i32 472} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2561 = metadata !{i32 786443, metadata !4, metadata !218, i32 982, i32 3, i32 1, i32 468} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2562 = metadata !{i32 982, i32 24, metadata !2563, null}
!2563 = metadata !{i32 786443, metadata !4, metadata !218, i32 982, i32 24, i32 2, i32 469} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2564 = metadata !{i32 982, i32 24, metadata !2565, null}
!2565 = metadata !{i32 786443, metadata !4, metadata !218, i32 982, i32 24, i32 3, i32 470} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2566 = metadata !{i32 982, i32 51, metadata !2567, null}
!2567 = metadata !{i32 786443, metadata !4, metadata !218, i32 982, i32 51, i32 4, i32 471} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2568 = metadata !{i32 983, i32 7, metadata !2569, null}
!2569 = metadata !{i32 786443, metadata !4, metadata !218, i32 983, i32 7, i32 0, i32 237} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2570 = metadata !{i32 984, i32 5, metadata !2569, null}
!2571 = metadata !{i32 985, i32 7, metadata !2572, null}
!2572 = metadata !{i32 786443, metadata !4, metadata !218, i32 985, i32 7, i32 0, i32 238} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2573 = metadata !{i32 985, i32 27, metadata !2574, null}
!2574 = metadata !{i32 786443, metadata !4, metadata !2572, i32 985, i32 27, i32 1, i32 473} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2575 = metadata !{i32 986, i32 7, metadata !2576, null}
!2576 = metadata !{i32 786443, metadata !4, metadata !218, i32 986, i32 7, i32 0, i32 239} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2577 = metadata !{i32 986, i32 27, metadata !2578, null}
!2578 = metadata !{i32 786443, metadata !4, metadata !2576, i32 986, i32 27, i32 1, i32 474} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2579 = metadata !{i32 987, i32 7, metadata !2580, null}
!2580 = metadata !{i32 786443, metadata !4, metadata !218, i32 987, i32 7, i32 0, i32 240} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2581 = metadata !{i32 988, i32 5, metadata !2582, null}
!2582 = metadata !{i32 786443, metadata !4, metadata !2580, i32 987, i32 18, i32 0, i32 241} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2583 = metadata !{i32 989, i32 9, metadata !2584, null}
!2584 = metadata !{i32 786443, metadata !4, metadata !2582, i32 989, i32 9, i32 0, i32 242} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2585 = metadata !{i32 989, i32 29, metadata !2586, null}
!2586 = metadata !{i32 786443, metadata !4, metadata !2584, i32 989, i32 29, i32 1, i32 475} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2587 = metadata !{i32 990, i32 9, metadata !2588, null}
!2588 = metadata !{i32 786443, metadata !4, metadata !2582, i32 990, i32 9, i32 0, i32 243} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2589 = metadata !{i32 990, i32 29, metadata !2590, null}
!2590 = metadata !{i32 786443, metadata !4, metadata !2588, i32 990, i32 29, i32 1, i32 476} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2591 = metadata !{i32 991, i32 3, metadata !2582, null}
!2592 = metadata !{i32 992, i32 7, metadata !2593, null}
!2593 = metadata !{i32 786443, metadata !4, metadata !218, i32 992, i32 7, i32 0, i32 244} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2594 = metadata !{i32 993, i32 5, metadata !2593, null}
!2595 = metadata !{i32 994, i32 3, metadata !218, null}
!2596 = metadata !{i32 995, i32 3, metadata !218, null}
!2597 = metadata !{i32 996, i32 3, metadata !218, null}
!2598 = metadata !{i32 997, i32 3, metadata !218, null}
!2599 = metadata !{i32 998, i32 3, metadata !218, null}
!2600 = metadata !{i32 786689, metadata !215, metadata !"form", metadata !33, i32 16778221, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [form] [line 1005]
!2601 = metadata !{i32 1005, i32 30, metadata !215, null}
!2602 = metadata !{i32 786689, metadata !215, metadata !"lenmod", metadata !33, i32 33555437, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lenmod] [line 1005]
!2603 = metadata !{i32 1005, i32 48, metadata !215, null}
!2604 = metadata !{i32 786688, metadata !215, metadata !"l", metadata !33, i32 1006, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 1006]
!2605 = metadata !{i32 1006, i32 10, metadata !215, null}
!2606 = metadata !{i32 1006, i32 14, metadata !215, null}
!2607 = metadata !{i32 786688, metadata !215, metadata !"lm", metadata !33, i32 1007, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lm] [line 1007]
!2608 = metadata !{i32 1007, i32 10, metadata !215, null}
!2609 = metadata !{i32 1007, i32 15, metadata !215, null}
!2610 = metadata !{i32 786688, metadata !215, metadata !"spec", metadata !33, i32 1008, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [spec] [line 1008]
!2611 = metadata !{i32 1008, i32 8, metadata !215, null}
!2612 = metadata !{i32 1008, i32 3, metadata !215, null}
!2613 = metadata !{i32 1009, i32 3, metadata !215, null}
!2614 = metadata !{i32 1010, i32 3, metadata !215, null}
!2615 = metadata !{i32 1011, i32 3, metadata !215, null}
!2616 = metadata !{i32 1012, i32 1, metadata !215, null}
!2617 = metadata !{i32 786689, metadata !206, metadata !"L", metadata !33, i32 16778158, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 942]
!2618 = metadata !{i32 942, i32 36, metadata !206, null}
!2619 = metadata !{i32 786689, metadata !206, metadata !"b", metadata !33, i32 33555374, metadata !99, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 942]
!2620 = metadata !{i32 942, i32 52, metadata !206, null}
!2621 = metadata !{i32 786689, metadata !206, metadata !"arg", metadata !33, i32 50332590, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 942]
!2622 = metadata !{i32 942, i32 59, metadata !206, null}
!2623 = metadata !{i32 943, i32 11, metadata !206, null}
!2624 = metadata !{i32 786688, metadata !2625, metadata !"len", metadata !33, i32 945, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 945]
!2625 = metadata !{i32 786443, metadata !4, metadata !2626, i32 944, i32 23, i32 0, i32 221} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2626 = metadata !{i32 786443, metadata !4, metadata !206, i32 943, i32 29, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2627 = metadata !{i32 945, i32 14, metadata !2625, null}
!2628 = metadata !{i32 786688, metadata !2625, metadata !"s", metadata !33, i32 946, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 946]
!2629 = metadata !{i32 946, i32 19, metadata !2625, null}
!2630 = metadata !{i32 946, i32 23, metadata !2625, null}
!2631 = metadata !{i32 947, i32 7, metadata !2625, null}
!2632 = metadata !{i32 948, i32 7, metadata !2625, null}
!2633 = metadata !{i32 786688, metadata !2634, metadata !"buff", metadata !33, i32 951, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 951]
!2634 = metadata !{i32 786443, metadata !4, metadata !2626, i32 950, i32 23, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2635 = metadata !{i32 951, i32 13, metadata !2634, null}
!2636 = metadata !{i32 951, i32 20, metadata !2634, null}
!2637 = metadata !{i32 786688, metadata !2634, metadata !"nb", metadata !33, i32 952, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nb] [line 952]
!2638 = metadata !{i32 952, i32 11, metadata !2634, null}
!2639 = metadata !{i32 953, i32 12, metadata !2640, null}
!2640 = metadata !{i32 786443, metadata !4, metadata !2634, i32 953, i32 11, i32 0, i32 223} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2641 = metadata !{i32 786688, metadata !2642, metadata !"n", metadata !33, i32 954, metadata !1155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 954]
!2642 = metadata !{i32 786443, metadata !4, metadata !2640, i32 953, i32 35, i32 0, i32 224} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2643 = metadata !{i32 954, i32 20, metadata !2642, null}
!2644 = metadata !{i32 954, i32 24, metadata !2642, null}
!2645 = metadata !{i32 955, i32 9, metadata !2642, null}
!2646 = metadata !{i32 955, i32 14, metadata !2642, null}
!2647 = metadata !{i32 956, i32 9, metadata !2642, null}
!2648 = metadata !{i32 957, i32 7, metadata !2642, null}
!2649 = metadata !{i32 786688, metadata !2650, metadata !"n", metadata !33, i32 959, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 959]
!2650 = metadata !{i32 786443, metadata !4, metadata !2640, i32 958, i32 12, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2651 = metadata !{i32 959, i32 21, metadata !2650, null}
!2652 = metadata !{i32 959, i32 25, metadata !2650, null}
!2653 = metadata !{i32 786688, metadata !2650, metadata !"format", metadata !33, i32 960, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [format] [line 960]
!2654 = metadata !{i32 960, i32 21, metadata !2650, null}
!2655 = metadata !{i32 960, i32 9, metadata !2650, null}
!2656 = metadata !{i32 963, i32 14, metadata !2650, null}
!2657 = metadata !{i32 965, i32 7, metadata !2634, null}
!2658 = metadata !{i32 966, i32 7, metadata !2634, null}
!2659 = metadata !{i32 969, i32 7, metadata !2660, null}
!2660 = metadata !{i32 786443, metadata !4, metadata !2626, i32 968, i32 39, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2661 = metadata !{i32 970, i32 7, metadata !2660, null}
!2662 = metadata !{i32 971, i32 7, metadata !2660, null}
!2663 = metadata !{i32 974, i32 7, metadata !2664, null}
!2664 = metadata !{i32 786443, metadata !4, metadata !2626, i32 973, i32 14, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2665 = metadata !{i32 976, i32 3, metadata !2626, null}
!2666 = metadata !{i32 977, i32 1, metadata !206, null}
!2667 = metadata !{i32 786689, metadata !212, metadata !"b", metadata !33, i32 16778123, metadata !99, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 907]
!2668 = metadata !{i32 907, i32 37, metadata !212, null}
!2669 = metadata !{i32 786689, metadata !212, metadata !"s", metadata !33, i32 33555339, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 907]
!2670 = metadata !{i32 907, i32 52, metadata !212, null}
!2671 = metadata !{i32 786689, metadata !212, metadata !"len", metadata !33, i32 50332555, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 907]
!2672 = metadata !{i32 907, i32 62, metadata !212, null}
!2673 = metadata !{i32 908, i32 3, metadata !212, null}
!2674 = metadata !{i32 908, i32 3, metadata !2675, null}
!2675 = metadata !{i32 786443, metadata !4, metadata !212, i32 908, i32 3, i32 2, i32 478} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2676 = metadata !{i32 908, i32 3, metadata !2677, null}
!2677 = metadata !{i32 786443, metadata !4, metadata !2678, i32 908, i32 3, i32 3, i32 479} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2678 = metadata !{i32 786443, metadata !4, metadata !212, i32 908, i32 3, i32 1, i32 477} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2679 = metadata !{i32 909, i32 3, metadata !212, null}
!2680 = metadata !{i32 909, i32 3, metadata !2681, null}
!2681 = metadata !{i32 786443, metadata !4, metadata !212, i32 909, i32 3, i32 1, i32 480} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2682 = metadata !{i32 910, i32 9, metadata !2683, null}
!2683 = metadata !{i32 786443, metadata !4, metadata !2684, i32 910, i32 9, i32 0, i32 232} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2684 = metadata !{i32 786443, metadata !4, metadata !212, i32 909, i32 17, i32 0, i32 231} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2685 = metadata !{i32 910, i32 9, metadata !2686, null}
!2686 = metadata !{i32 786443, metadata !4, metadata !2683, i32 910, i32 9, i32 1, i32 481} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2687 = metadata !{i32 910, i32 9, metadata !2688, null}
!2688 = metadata !{i32 786443, metadata !4, metadata !2683, i32 910, i32 9, i32 2, i32 482} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2689 = metadata !{i32 911, i32 7, metadata !2690, null}
!2690 = metadata !{i32 786443, metadata !4, metadata !2683, i32 910, i32 48, i32 0, i32 233} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2691 = metadata !{i32 911, i32 7, metadata !2692, null}
!2692 = metadata !{i32 786443, metadata !4, metadata !2690, i32 911, i32 7, i32 2, i32 484} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2693 = metadata !{i32 911, i32 7, metadata !2694, null}
!2694 = metadata !{i32 786443, metadata !4, metadata !2695, i32 911, i32 7, i32 3, i32 485} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2695 = metadata !{i32 786443, metadata !4, metadata !2690, i32 911, i32 7, i32 1, i32 483} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2696 = metadata !{i32 912, i32 7, metadata !2690, null}
!2697 = metadata !{i32 912, i32 7, metadata !2698, null}
!2698 = metadata !{i32 786443, metadata !4, metadata !2690, i32 912, i32 7, i32 2, i32 487} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2699 = metadata !{i32 912, i32 7, metadata !2700, null}
!2700 = metadata !{i32 786443, metadata !4, metadata !2701, i32 912, i32 7, i32 3, i32 488} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2701 = metadata !{i32 786443, metadata !4, metadata !2690, i32 912, i32 7, i32 1, i32 486} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2702 = metadata !{i32 913, i32 5, metadata !2690, null}
!2703 = metadata !{i32 914, i32 14, metadata !2704, null}
!2704 = metadata !{i32 786443, metadata !4, metadata !2683, i32 914, i32 14, i32 0, i32 234} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2705 = metadata !{i32 786688, metadata !2706, metadata !"buff", metadata !33, i32 915, metadata !2707, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 915]
!2706 = metadata !{i32 786443, metadata !4, metadata !2704, i32 914, i32 34, i32 0, i32 235} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2707 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 80, i64 8, i32 0, i32 0, metadata !50, metadata !2708, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 80, align 8, offset 0] [from char]
!2708 = metadata !{metadata !2709}
!2709 = metadata !{i32 786465, i64 0, i64 10}     ; [ DW_TAG_subrange_type ] [0, 9]
!2710 = metadata !{i32 915, i32 12, metadata !2706, null}
!2711 = metadata !{i32 916, i32 11, metadata !2712, null}
!2712 = metadata !{i32 786443, metadata !4, metadata !2706, i32 916, i32 11, i32 0, i32 236} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2713 = metadata !{i32 916, i32 12, metadata !2712, null}
!2714 = metadata !{i32 917, i32 9, metadata !2712, null}
!2715 = metadata !{i32 919, i32 9, metadata !2712, null}
!2716 = metadata !{i32 920, i32 7, metadata !2706, null}
!2717 = metadata !{i32 921, i32 5, metadata !2706, null}
!2718 = metadata !{i32 923, i32 7, metadata !2704, null}
!2719 = metadata !{i32 923, i32 7, metadata !2720, null}
!2720 = metadata !{i32 786443, metadata !4, metadata !2704, i32 923, i32 7, i32 2, i32 490} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2721 = metadata !{i32 923, i32 7, metadata !2722, null}
!2722 = metadata !{i32 786443, metadata !4, metadata !2723, i32 923, i32 7, i32 3, i32 491} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2723 = metadata !{i32 786443, metadata !4, metadata !2704, i32 923, i32 7, i32 1, i32 489} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2724 = metadata !{i32 924, i32 5, metadata !2684, null}
!2725 = metadata !{i32 925, i32 3, metadata !2684, null}
!2726 = metadata !{i32 926, i32 3, metadata !212, null}
!2727 = metadata !{i32 926, i32 3, metadata !2728, null}
!2728 = metadata !{i32 786443, metadata !4, metadata !212, i32 926, i32 3, i32 2, i32 493} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2729 = metadata !{i32 926, i32 3, metadata !2730, null}
!2730 = metadata !{i32 786443, metadata !4, metadata !2731, i32 926, i32 3, i32 3, i32 494} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2731 = metadata !{i32 786443, metadata !4, metadata !212, i32 926, i32 3, i32 1, i32 492} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2732 = metadata !{i32 927, i32 1, metadata !212, null}
!2733 = metadata !{i32 786689, metadata !209, metadata !"buff", metadata !33, i32 16778149, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buff] [line 933]
!2734 = metadata !{i32 933, i32 28, metadata !209, null}
!2735 = metadata !{i32 786689, metadata !209, metadata !"nb", metadata !33, i32 33555365, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nb] [line 933]
!2736 = metadata !{i32 933, i32 38, metadata !209, null}
!2737 = metadata !{i32 934, i32 7, metadata !2738, null}
!2738 = metadata !{i32 786443, metadata !4, metadata !209, i32 934, i32 7, i32 0, i32 228} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2739 = metadata !{i32 786688, metadata !2740, metadata !"point", metadata !33, i32 935, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [point] [line 935]
!2740 = metadata !{i32 786443, metadata !4, metadata !2738, i32 934, i32 38, i32 0, i32 229} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2741 = metadata !{i32 935, i32 10, metadata !2740, null}
!2742 = metadata !{i32 935, i32 18, metadata !2740, null}
!2743 = metadata !{i32 786688, metadata !2740, metadata !"ppoint", metadata !33, i32 936, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ppoint] [line 936]
!2744 = metadata !{i32 936, i32 11, metadata !2740, null}
!2745 = metadata !{i32 936, i32 20, metadata !2740, null}
!2746 = metadata !{i32 937, i32 9, metadata !2747, null}
!2747 = metadata !{i32 786443, metadata !4, metadata !2740, i32 937, i32 9, i32 0, i32 230} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2748 = metadata !{i32 937, i32 17, metadata !2749, null}
!2749 = metadata !{i32 786443, metadata !4, metadata !2747, i32 937, i32 17, i32 1, i32 495} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstrlib.c]
!2750 = metadata !{i32 938, i32 3, metadata !2740, null}
!2751 = metadata !{i32 939, i32 1, metadata !209, null}
!2752 = metadata !{i32 786689, metadata !223, metadata !"L", metadata !33, i32 16777398, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 182]
!2753 = metadata !{i32 182, i32 31, metadata !223, null}
!2754 = metadata !{i32 786689, metadata !223, metadata !"b", metadata !33, i32 33554614, metadata !226, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 182]
!2755 = metadata !{i32 182, i32 46, metadata !223, null}
!2756 = metadata !{i32 786689, metadata !223, metadata !"size", metadata !33, i32 50331830, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 182]
!2757 = metadata !{i32 182, i32 56, metadata !223, null}
!2758 = metadata !{i32 786689, metadata !223, metadata !"B", metadata !33, i32 67109046, metadata !228, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 182]
!2759 = metadata !{i32 182, i32 68, metadata !223, null}
!2760 = metadata !{i32 183, i32 3, metadata !223, null}
!2761 = metadata !{i32 184, i32 3, metadata !223, null}
!2762 = metadata !{i32 185, i32 3, metadata !223, null}
