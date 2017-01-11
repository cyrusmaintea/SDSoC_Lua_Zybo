; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lauxlib.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lua_State = type opaque
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.CallInfo = type opaque
%struct.__va_list = type { i8* }
%struct.luaL_Buffer = type { i8*, i32, i32, %struct.lua_State*, [8192 x i8] }
%struct.UBox = type { i8*, i32 }
%struct.LoadF = type { i32, %struct._IO_FILE*, [8192 x i8] }
%struct.LoadS = type { i8*, i32 }
%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str1 = private unnamed_addr constant [17 x i8] c"stack traceback:\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"\0A\09...\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"Slnt\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"\0A\09%s:\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c" in \00", align 1
@.str7 = private unnamed_addr constant [21 x i8] c"\0A\09(...tail calls...)\00", align 1
@.str8 = private unnamed_addr constant [22 x i8] c"bad argument #%d (%s)\00", align 1
@.str9 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str10 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str11 = private unnamed_addr constant [30 x i8] c"calling '%s' on bad self (%s)\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str13 = private unnamed_addr constant [30 x i8] c"bad argument #%d to '%s' (%s)\00", align 1
@.str14 = private unnamed_addr constant [3 x i8] c"Sl\00", align 1
@.str15 = private unnamed_addr constant [8 x i8] c"%s:%d: \00", align 1
@.str16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str17 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str18 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str19 = private unnamed_addr constant [7 x i8] c"__name\00", align 1
@.str20 = private unnamed_addr constant [20 x i8] c"invalid option '%s'\00", align 1
@.str21 = private unnamed_addr constant [20 x i8] c"stack overflow (%s)\00", align 1
@.str22 = private unnamed_addr constant [15 x i8] c"stack overflow\00", align 1
@.str23 = private unnamed_addr constant [15 x i8] c"value expected\00", align 1
@.str24 = private unnamed_addr constant [17 x i8] c"buffer too large\00", align 1
@.str25 = private unnamed_addr constant [7 x i8] c"=stdin\00", align 1
@stdin = external global %struct._IO_FILE*
@.str26 = private unnamed_addr constant [4 x i8] c"@%s\00", align 1
@.str27 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str29 = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str30 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str31 = private unnamed_addr constant [7 x i8] c"reopen\00", align 1
@.str32 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str33 = private unnamed_addr constant [32 x i8] c"object length is not an integer\00", align 1
@.str34 = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@.str35 = private unnamed_addr constant [3 x i8] c"%I\00", align 1
@.str36 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str37 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str38 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str39 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str40 = private unnamed_addr constant [7 x i8] c"%s: %p\00", align 1
@.str41 = private unnamed_addr constant [18 x i8] c"too many upvalues\00", align 1
@.str42 = private unnamed_addr constant [8 x i8] c"_LOADED\00", align 1
@.str43 = private unnamed_addr constant [49 x i8] c"core and library have incompatible numeric types\00", align 1
@.str44 = private unnamed_addr constant [26 x i8] c"multiple Lua VMs detected\00", align 1
@.str45 = private unnamed_addr constant [54 x i8] c"version mismatch: app. needs %f, Lua core provides %f\00", align 1
@stderr = external global %struct._IO_FILE*
@.str46 = private unnamed_addr constant [50 x i8] c"PANIC: unprotected error in call to Lua API (%s)\0A\00", align 1
@.str47 = private unnamed_addr constant [4 x i8] c"\EF\BB\BF\00", align 1
@.str48 = private unnamed_addr constant [17 x i8] c"cannot %s %s: %s\00", align 1
@.str49 = private unnamed_addr constant [7 x i8] c"LUABOX\00", align 1
@.str50 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str51 = private unnamed_addr constant [40 x i8] c"not enough memory for buffer allocation\00", align 1
@.str52 = private unnamed_addr constant [37 x i8] c"number has no integer representation\00", align 1
@.str53 = private unnamed_addr constant [15 x i8] c"light userdata\00", align 1
@.str54 = private unnamed_addr constant [20 x i8] c"%s expected, got %s\00", align 1
@.str55 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str56 = private unnamed_addr constant [4 x i8] c"_G.\00", align 1
@.str57 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str58 = private unnamed_addr constant [14 x i8] c"function '%s'\00", align 1
@.str59 = private unnamed_addr constant [8 x i8] c"%s '%s'\00", align 1
@.str60 = private unnamed_addr constant [11 x i8] c"main chunk\00", align 1
@.str61 = private unnamed_addr constant [17 x i8] c"function <%s:%d>\00", align 1

; Function Attrs: nounwind
define void @luaL_traceback(%struct.lua_State* %L, %struct.lua_State* %L1, i8* %msg, i32 %level) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %ar = alloca %struct.lua_Debug, align 4
  %top = alloca i32, align 4
  %last = alloca i32, align 4
  %n1 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !624), !dbg !625
  store %struct.lua_State* %L1, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !626), !dbg !627
  store i8* %msg, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !628), !dbg !629
  store i32 %level, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !630), !dbg !631
  call void @llvm.dbg.declare(metadata !{%struct.lua_Debug* %ar}, metadata !632), !dbg !633
  call void @llvm.dbg.declare(metadata !{i32* %top}, metadata !634), !dbg !635
  %5 = load %struct.lua_State** %1, align 4, !dbg !636
  %6 = call i32 @lua_gettop(%struct.lua_State* %5), !dbg !636
  store i32 %6, i32* %top, align 4, !dbg !636
  call void @llvm.dbg.declare(metadata !{i32* %last}, metadata !637), !dbg !638
  %7 = load %struct.lua_State** %2, align 4, !dbg !639
  %8 = call i32 @lastlevel(%struct.lua_State* %7), !dbg !639
  store i32 %8, i32* %last, align 4, !dbg !639
  call void @llvm.dbg.declare(metadata !{i32* %n1}, metadata !640), !dbg !641
  %9 = load i32* %last, align 4, !dbg !642
  %10 = load i32* %4, align 4, !dbg !642
  %11 = sub nsw i32 %9, %10, !dbg !642
  %12 = icmp sgt i32 %11, 21, !dbg !642
  %13 = select i1 %12, i32 10, i32 -1, !dbg !642
  store i32 %13, i32* %n1, align 4, !dbg !642
  %14 = load i8** %3, align 4, !dbg !643
  %15 = icmp ne i8* %14, null, !dbg !643
  br i1 %15, label %16, label %20, !dbg !643

; <label>:16                                      ; preds = %0
  %17 = load %struct.lua_State** %1, align 4, !dbg !645
  %18 = load i8** %3, align 4, !dbg !645
  %19 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %17, i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i8* %18), !dbg !645
  br label %20, !dbg !645

; <label>:20                                      ; preds = %16, %0
  %21 = load %struct.lua_State** %1, align 4, !dbg !646
  call void @luaL_checkstack(%struct.lua_State* %21, i32 10, i8* null), !dbg !646
  %22 = load %struct.lua_State** %1, align 4, !dbg !647
  %23 = call i8* @lua_pushstring(%struct.lua_State* %22, i8* getelementptr inbounds ([17 x i8]* @.str1, i32 0, i32 0)), !dbg !647
  br label %24, !dbg !648

; <label>:24                                      ; preds = %71, %20
  %25 = load %struct.lua_State** %2, align 4, !dbg !649
  %26 = load i32* %4, align 4, !dbg !649
  %27 = add nsw i32 %26, 1, !dbg !649
  store i32 %27, i32* %4, align 4, !dbg !649
  %28 = call i32 @lua_getstack(%struct.lua_State* %25, i32 %26, %struct.lua_Debug* %ar), !dbg !649
  %29 = icmp ne i32 %28, 0, !dbg !649
  br i1 %29, label %30, label %72, !dbg !649

; <label>:30                                      ; preds = %24
  %31 = load i32* %n1, align 4, !dbg !651
  %32 = add nsw i32 %31, -1, !dbg !651
  store i32 %32, i32* %n1, align 4, !dbg !651
  %33 = icmp eq i32 %31, 0, !dbg !651
  br i1 %33, label %34, label %40, !dbg !651

; <label>:34                                      ; preds = %30
  %35 = load %struct.lua_State** %1, align 4, !dbg !654
  %36 = call i8* @lua_pushstring(%struct.lua_State* %35, i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0)), !dbg !654
  %37 = load i32* %last, align 4, !dbg !656
  %38 = sub nsw i32 %37, 11, !dbg !656
  %39 = add nsw i32 %38, 1, !dbg !656
  store i32 %39, i32* %4, align 4, !dbg !656
  br label %71, !dbg !657

; <label>:40                                      ; preds = %30
  %41 = load %struct.lua_State** %2, align 4, !dbg !658
  %42 = call i32 @lua_getinfo(%struct.lua_State* %41, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), %struct.lua_Debug* %ar), !dbg !658
  %43 = load %struct.lua_State** %1, align 4, !dbg !660
  %44 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 12, !dbg !660
  %45 = getelementptr inbounds [60 x i8]* %44, i32 0, i32 0, !dbg !660
  %46 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %43, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i8* %45), !dbg !660
  %47 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 5, !dbg !661
  %48 = load i32* %47, align 4, !dbg !661
  %49 = icmp sgt i32 %48, 0, !dbg !661
  br i1 %49, label %50, label %55, !dbg !661

; <label>:50                                      ; preds = %40
  %51 = load %struct.lua_State** %1, align 4, !dbg !663
  %52 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 5, !dbg !663
  %53 = load i32* %52, align 4, !dbg !663
  %54 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %51, i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0), i32 %53), !dbg !663
  br label %55, !dbg !663

; <label>:55                                      ; preds = %50, %40
  %56 = load %struct.lua_State** %1, align 4, !dbg !664
  %57 = call i8* @lua_pushstring(%struct.lua_State* %56, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0)), !dbg !664
  %58 = load %struct.lua_State** %1, align 4, !dbg !665
  call void @pushfuncname(%struct.lua_State* %58, %struct.lua_Debug* %ar), !dbg !665
  %59 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 11, !dbg !666
  %60 = load i8* %59, align 1, !dbg !666
  %61 = icmp ne i8 %60, 0, !dbg !666
  br i1 %61, label %62, label %65, !dbg !666

; <label>:62                                      ; preds = %55
  %63 = load %struct.lua_State** %1, align 4, !dbg !668
  %64 = call i8* @lua_pushstring(%struct.lua_State* %63, i8* getelementptr inbounds ([21 x i8]* @.str7, i32 0, i32 0)), !dbg !668
  br label %65, !dbg !668

; <label>:65                                      ; preds = %62, %55
  %66 = load %struct.lua_State** %1, align 4, !dbg !669
  %67 = load %struct.lua_State** %1, align 4, !dbg !670
  %68 = call i32 @lua_gettop(%struct.lua_State* %67), !dbg !670
  %69 = load i32* %top, align 4, !dbg !670
  %70 = sub nsw i32 %68, %69, !dbg !670
  call void @lua_concat(%struct.lua_State* %66, i32 %70), !dbg !669
  br label %71

; <label>:71                                      ; preds = %65, %34
  br label %24, !dbg !671

; <label>:72                                      ; preds = %24
  %73 = load %struct.lua_State** %1, align 4, !dbg !672
  %74 = load %struct.lua_State** %1, align 4, !dbg !673
  %75 = call i32 @lua_gettop(%struct.lua_State* %74), !dbg !673
  %76 = load i32* %top, align 4, !dbg !673
  %77 = sub nsw i32 %75, %76, !dbg !673
  call void @lua_concat(%struct.lua_State* %73, i32 %77), !dbg !672
  ret void, !dbg !674
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @lua_gettop(%struct.lua_State*) #2

; Function Attrs: nounwind
define internal i32 @lastlevel(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %ar = alloca %struct.lua_Debug, align 4
  %li = alloca i32, align 4
  %le = alloca i32, align 4
  %m = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !675), !dbg !676
  call void @llvm.dbg.declare(metadata !{%struct.lua_Debug* %ar}, metadata !677), !dbg !678
  call void @llvm.dbg.declare(metadata !{i32* %li}, metadata !679), !dbg !680
  store i32 1, i32* %li, align 4, !dbg !681
  call void @llvm.dbg.declare(metadata !{i32* %le}, metadata !682), !dbg !683
  store i32 1, i32* %le, align 4, !dbg !681
  br label %2, !dbg !684

; <label>:2                                       ; preds = %7, %0
  %3 = load %struct.lua_State** %1, align 4, !dbg !685
  %4 = load i32* %le, align 4, !dbg !685
  %5 = call i32 @lua_getstack(%struct.lua_State* %3, i32 %4, %struct.lua_Debug* %ar), !dbg !685
  %6 = icmp ne i32 %5, 0, !dbg !685
  br i1 %6, label %7, label %11, !dbg !685

; <label>:7                                       ; preds = %2
  %8 = load i32* %le, align 4, !dbg !688
  store i32 %8, i32* %li, align 4, !dbg !688
  %9 = load i32* %le, align 4, !dbg !691
  %10 = mul nsw i32 %9, 2, !dbg !691
  store i32 %10, i32* %le, align 4, !dbg !691
  br label %2, !dbg !692

; <label>:11                                      ; preds = %2
  br label %12, !dbg !693

; <label>:12                                      ; preds = %30, %11
  %13 = load i32* %li, align 4, !dbg !694
  %14 = load i32* %le, align 4, !dbg !694
  %15 = icmp slt i32 %13, %14, !dbg !694
  br i1 %15, label %16, label %31, !dbg !694

; <label>:16                                      ; preds = %12
  call void @llvm.dbg.declare(metadata !{i32* %m}, metadata !696), !dbg !698
  %17 = load i32* %li, align 4, !dbg !699
  %18 = load i32* %le, align 4, !dbg !699
  %19 = add nsw i32 %17, %18, !dbg !699
  %20 = sdiv i32 %19, 2, !dbg !699
  store i32 %20, i32* %m, align 4, !dbg !699
  %21 = load %struct.lua_State** %1, align 4, !dbg !700
  %22 = load i32* %m, align 4, !dbg !700
  %23 = call i32 @lua_getstack(%struct.lua_State* %21, i32 %22, %struct.lua_Debug* %ar), !dbg !700
  %24 = icmp ne i32 %23, 0, !dbg !700
  br i1 %24, label %25, label %28, !dbg !700

; <label>:25                                      ; preds = %16
  %26 = load i32* %m, align 4, !dbg !702
  %27 = add nsw i32 %26, 1, !dbg !702
  store i32 %27, i32* %li, align 4, !dbg !702
  br label %30, !dbg !702

; <label>:28                                      ; preds = %16
  %29 = load i32* %m, align 4, !dbg !704
  store i32 %29, i32* %le, align 4, !dbg !704
  br label %30

; <label>:30                                      ; preds = %28, %25
  br label %12, !dbg !705

; <label>:31                                      ; preds = %12
  %32 = load i32* %le, align 4, !dbg !706
  %33 = sub nsw i32 %32, 1, !dbg !706
  ret i32 %33, !dbg !706
}

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #2

; Function Attrs: nounwind
define void @luaL_checkstack(%struct.lua_State* %L, i32 %space, i8* %msg) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !707), !dbg !708
  store i32 %space, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !709), !dbg !710
  store i8* %msg, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !711), !dbg !712
  %4 = load %struct.lua_State** %1, align 4, !dbg !713
  %5 = load i32* %2, align 4, !dbg !713
  %6 = call i32 @lua_checkstack(%struct.lua_State* %4, i32 %5), !dbg !713
  %7 = icmp ne i32 %6, 0, !dbg !713
  br i1 %7, label %19, label %8, !dbg !713

; <label>:8                                       ; preds = %0
  %9 = load i8** %3, align 4, !dbg !715
  %10 = icmp ne i8* %9, null, !dbg !715
  br i1 %10, label %11, label %15, !dbg !715

; <label>:11                                      ; preds = %8
  %12 = load %struct.lua_State** %1, align 4, !dbg !718
  %13 = load i8** %3, align 4, !dbg !718
  %14 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %12, i8* getelementptr inbounds ([20 x i8]* @.str21, i32 0, i32 0), i8* %13), !dbg !718
  br label %18, !dbg !718

; <label>:15                                      ; preds = %8
  %16 = load %struct.lua_State** %1, align 4, !dbg !719
  %17 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %16, i8* getelementptr inbounds ([15 x i8]* @.str22, i32 0, i32 0)), !dbg !719
  br label %18

; <label>:18                                      ; preds = %15, %11
  br label %19, !dbg !720

; <label>:19                                      ; preds = %18, %0
  ret void, !dbg !721
}

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #2

declare i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) #2

declare i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) #2

; Function Attrs: nounwind
define internal void @pushfuncname(%struct.lua_State* %L, %struct.lua_Debug* %ar) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_Debug*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !722), !dbg !723
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_Debug** %2}, metadata !724), !dbg !725
  %3 = load %struct.lua_State** %1, align 4, !dbg !726
  %4 = load %struct.lua_Debug** %2, align 4, !dbg !726
  %5 = call i32 @pushglobalfuncname(%struct.lua_State* %3, %struct.lua_Debug* %4), !dbg !726
  %6 = icmp ne i32 %5, 0, !dbg !726
  br i1 %6, label %7, label %14, !dbg !726

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %1, align 4, !dbg !728
  %9 = load %struct.lua_State** %1, align 4, !dbg !730
  %10 = call i8* @lua_tolstring(%struct.lua_State* %9, i32 -1, i32* null), !dbg !730
  %11 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %8, i8* getelementptr inbounds ([14 x i8]* @.str58, i32 0, i32 0), i8* %10), !dbg !728
  %12 = load %struct.lua_State** %1, align 4, !dbg !731
  call void @lua_rotate(%struct.lua_State* %12, i32 -2, i32 -1), !dbg !731
  %13 = load %struct.lua_State** %1, align 4, !dbg !731
  call void @lua_settop(%struct.lua_State* %13, i32 -2), !dbg !731
  br label %62, !dbg !732

; <label>:14                                      ; preds = %0
  %15 = load %struct.lua_Debug** %2, align 4, !dbg !733
  %16 = getelementptr inbounds %struct.lua_Debug* %15, i32 0, i32 2, !dbg !733
  %17 = load i8** %16, align 4, !dbg !733
  %18 = load i8* %17, align 1, !dbg !733
  %19 = zext i8 %18 to i32, !dbg !733
  %20 = icmp ne i32 %19, 0, !dbg !733
  br i1 %20, label %21, label %30, !dbg !733

; <label>:21                                      ; preds = %14
  %22 = load %struct.lua_State** %1, align 4, !dbg !735
  %23 = load %struct.lua_Debug** %2, align 4, !dbg !735
  %24 = getelementptr inbounds %struct.lua_Debug* %23, i32 0, i32 2, !dbg !735
  %25 = load i8** %24, align 4, !dbg !735
  %26 = load %struct.lua_Debug** %2, align 4, !dbg !735
  %27 = getelementptr inbounds %struct.lua_Debug* %26, i32 0, i32 1, !dbg !735
  %28 = load i8** %27, align 4, !dbg !735
  %29 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %22, i8* getelementptr inbounds ([8 x i8]* @.str59, i32 0, i32 0), i8* %25, i8* %28), !dbg !735
  br label %61, !dbg !735

; <label>:30                                      ; preds = %14
  %31 = load %struct.lua_Debug** %2, align 4, !dbg !736
  %32 = getelementptr inbounds %struct.lua_Debug* %31, i32 0, i32 3, !dbg !736
  %33 = load i8** %32, align 4, !dbg !736
  %34 = load i8* %33, align 1, !dbg !736
  %35 = zext i8 %34 to i32, !dbg !736
  %36 = icmp eq i32 %35, 109, !dbg !736
  br i1 %36, label %37, label %40, !dbg !736

; <label>:37                                      ; preds = %30
  %38 = load %struct.lua_State** %1, align 4, !dbg !738
  %39 = call i8* @lua_pushstring(%struct.lua_State* %38, i8* getelementptr inbounds ([11 x i8]* @.str60, i32 0, i32 0)), !dbg !738
  br label %60, !dbg !738

; <label>:40                                      ; preds = %30
  %41 = load %struct.lua_Debug** %2, align 4, !dbg !739
  %42 = getelementptr inbounds %struct.lua_Debug* %41, i32 0, i32 3, !dbg !739
  %43 = load i8** %42, align 4, !dbg !739
  %44 = load i8* %43, align 1, !dbg !739
  %45 = zext i8 %44 to i32, !dbg !739
  %46 = icmp ne i32 %45, 67, !dbg !739
  br i1 %46, label %47, label %56, !dbg !739

; <label>:47                                      ; preds = %40
  %48 = load %struct.lua_State** %1, align 4, !dbg !741
  %49 = load %struct.lua_Debug** %2, align 4, !dbg !741
  %50 = getelementptr inbounds %struct.lua_Debug* %49, i32 0, i32 12, !dbg !741
  %51 = getelementptr inbounds [60 x i8]* %50, i32 0, i32 0, !dbg !741
  %52 = load %struct.lua_Debug** %2, align 4, !dbg !741
  %53 = getelementptr inbounds %struct.lua_Debug* %52, i32 0, i32 6, !dbg !741
  %54 = load i32* %53, align 4, !dbg !741
  %55 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %48, i8* getelementptr inbounds ([17 x i8]* @.str61, i32 0, i32 0), i8* %51, i32 %54), !dbg !741
  br label %59, !dbg !741

; <label>:56                                      ; preds = %40
  %57 = load %struct.lua_State** %1, align 4, !dbg !742
  %58 = call i8* @lua_pushstring(%struct.lua_State* %57, i8* getelementptr inbounds ([2 x i8]* @.str12, i32 0, i32 0)), !dbg !742
  br label %59

; <label>:59                                      ; preds = %56, %47
  br label %60

; <label>:60                                      ; preds = %59, %37
  br label %61

; <label>:61                                      ; preds = %60, %21
  br label %62

; <label>:62                                      ; preds = %61, %7
  ret void, !dbg !743
}

declare void @lua_concat(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define i32 @luaL_argerror(%struct.lua_State* %L, i32 %arg, i8* %extramsg) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %ar = alloca %struct.lua_Debug, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !744), !dbg !745
  store i32 %arg, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !746), !dbg !747
  store i8* %extramsg, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !748), !dbg !749
  call void @llvm.dbg.declare(metadata !{%struct.lua_Debug* %ar}, metadata !750), !dbg !751
  %5 = load %struct.lua_State** %2, align 4, !dbg !752
  %6 = call i32 @lua_getstack(%struct.lua_State* %5, i32 0, %struct.lua_Debug* %ar), !dbg !752
  %7 = icmp ne i32 %6, 0, !dbg !752
  br i1 %7, label %13, label %8, !dbg !752

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_State** %2, align 4, !dbg !754
  %10 = load i32* %3, align 4, !dbg !754
  %11 = load i8** %4, align 4, !dbg !754
  %12 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %9, i8* getelementptr inbounds ([22 x i8]* @.str8, i32 0, i32 0), i32 %10, i8* %11), !dbg !754
  store i32 %12, i32* %1, !dbg !754
  br label %54, !dbg !754

; <label>:13                                      ; preds = %0
  %14 = load %struct.lua_State** %2, align 4, !dbg !755
  %15 = call i32 @lua_getinfo(%struct.lua_State* %14, i8* getelementptr inbounds ([2 x i8]* @.str9, i32 0, i32 0), %struct.lua_Debug* %ar), !dbg !755
  %16 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 2, !dbg !756
  %17 = load i8** %16, align 4, !dbg !756
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0)) #6, !dbg !756
  %19 = icmp eq i32 %18, 0, !dbg !756
  br i1 %19, label %20, label %32, !dbg !756

; <label>:20                                      ; preds = %13
  %21 = load i32* %3, align 4, !dbg !758
  %22 = add nsw i32 %21, -1, !dbg !758
  store i32 %22, i32* %3, align 4, !dbg !758
  %23 = load i32* %3, align 4, !dbg !760
  %24 = icmp eq i32 %23, 0, !dbg !760
  br i1 %24, label %25, label %31, !dbg !760

; <label>:25                                      ; preds = %20
  %26 = load %struct.lua_State** %2, align 4, !dbg !762
  %27 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 1, !dbg !762
  %28 = load i8** %27, align 4, !dbg !762
  %29 = load i8** %4, align 4, !dbg !762
  %30 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %26, i8* getelementptr inbounds ([30 x i8]* @.str11, i32 0, i32 0), i8* %28, i8* %29), !dbg !762
  store i32 %30, i32* %1, !dbg !762
  br label %54, !dbg !762

; <label>:31                                      ; preds = %20
  br label %32, !dbg !763

; <label>:32                                      ; preds = %31, %13
  %33 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 1, !dbg !764
  %34 = load i8** %33, align 4, !dbg !764
  %35 = icmp eq i8* %34, null, !dbg !764
  br i1 %35, label %36, label %47, !dbg !764

; <label>:36                                      ; preds = %32
  %37 = load %struct.lua_State** %2, align 4, !dbg !766
  %38 = call i32 @pushglobalfuncname(%struct.lua_State* %37, %struct.lua_Debug* %ar), !dbg !766
  %39 = icmp ne i32 %38, 0, !dbg !766
  br i1 %39, label %40, label %43, !dbg !766

; <label>:40                                      ; preds = %36
  %41 = load %struct.lua_State** %2, align 4, !dbg !767
  %42 = call i8* @lua_tolstring(%struct.lua_State* %41, i32 -1, i32* null), !dbg !767
  br label %44, !dbg !767

; <label>:43                                      ; preds = %36
  br label %44, !dbg !769

; <label>:44                                      ; preds = %43, %40
  %45 = phi i8* [ %42, %40 ], [ getelementptr inbounds ([2 x i8]* @.str12, i32 0, i32 0), %43 ], !dbg !771
  %46 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 1, !dbg !772
  store i8* %45, i8** %46, align 4, !dbg !772
  br label %47, !dbg !772

; <label>:47                                      ; preds = %44, %32
  %48 = load %struct.lua_State** %2, align 4, !dbg !775
  %49 = load i32* %3, align 4, !dbg !775
  %50 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 1, !dbg !775
  %51 = load i8** %50, align 4, !dbg !775
  %52 = load i8** %4, align 4, !dbg !775
  %53 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %48, i8* getelementptr inbounds ([30 x i8]* @.str13, i32 0, i32 0), i32 %49, i8* %51, i8* %52), !dbg !775
  store i32 %53, i32* %1, !dbg !775
  br label %54, !dbg !775

; <label>:54                                      ; preds = %47, %25, %8
  %55 = load i32* %1, !dbg !776
  ret i32 %55, !dbg !776
}

; Function Attrs: nounwind
define i32 @luaL_error(%struct.lua_State* %L, i8* %fmt, ...) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %argp = alloca %struct.__va_list, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !777), !dbg !778
  store i8* %fmt, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !779), !dbg !780
  call void @llvm.dbg.declare(metadata !{%struct.__va_list* %argp}, metadata !781), !dbg !789
  %3 = bitcast %struct.__va_list* %argp to i8*, !dbg !790
  call void @llvm.va_start(i8* %3), !dbg !790
  %4 = load %struct.lua_State** %1, align 4, !dbg !791
  call void @luaL_where(%struct.lua_State* %4, i32 1), !dbg !791
  %5 = load %struct.lua_State** %1, align 4, !dbg !792
  %6 = load i8** %2, align 4, !dbg !792
  %7 = getelementptr %struct.__va_list* %argp, i32 0, i32 0, !dbg !792
  %8 = bitcast i8** %7 to { [1 x i32] }*, !dbg !792
  %9 = load { [1 x i32] }* %8, align 1, !dbg !792
  %10 = call i8* @lua_pushvfstring(%struct.lua_State* %5, i8* %6, { [1 x i32] } %9), !dbg !792
  %11 = bitcast %struct.__va_list* %argp to i8*, !dbg !793
  call void @llvm.va_end(i8* %11), !dbg !793
  %12 = load %struct.lua_State** %1, align 4, !dbg !794
  call void @lua_concat(%struct.lua_State* %12, i32 2), !dbg !794
  %13 = load %struct.lua_State** %1, align 4, !dbg !795
  %14 = call i32 @lua_error(%struct.lua_State* %13), !dbg !795
  ret i32 %14, !dbg !795
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
define internal i32 @pushglobalfuncname(%struct.lua_State* %L, %struct.lua_Debug* %ar) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct.lua_Debug*, align 4
  %top = alloca i32, align 4
  %name = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !796), !dbg !797
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_Debug** %3}, metadata !798), !dbg !799
  call void @llvm.dbg.declare(metadata !{i32* %top}, metadata !800), !dbg !801
  %4 = load %struct.lua_State** %2, align 4, !dbg !802
  %5 = call i32 @lua_gettop(%struct.lua_State* %4), !dbg !802
  store i32 %5, i32* %top, align 4, !dbg !802
  %6 = load %struct.lua_State** %2, align 4, !dbg !803
  %7 = load %struct.lua_Debug** %3, align 4, !dbg !803
  %8 = call i32 @lua_getinfo(%struct.lua_State* %6, i8* getelementptr inbounds ([2 x i8]* @.str55, i32 0, i32 0), %struct.lua_Debug* %7), !dbg !803
  %9 = load %struct.lua_State** %2, align 4, !dbg !804
  %10 = call i32 @lua_getfield(%struct.lua_State* %9, i32 -1001000, i8* getelementptr inbounds ([8 x i8]* @.str42, i32 0, i32 0)), !dbg !804
  %11 = load %struct.lua_State** %2, align 4, !dbg !805
  %12 = load i32* %top, align 4, !dbg !805
  %13 = add nsw i32 %12, 1, !dbg !805
  %14 = call i32 @findfield(%struct.lua_State* %11, i32 %13, i32 2), !dbg !805
  %15 = icmp ne i32 %14, 0, !dbg !805
  br i1 %15, label %16, label %34, !dbg !805

; <label>:16                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i8** %name}, metadata !807), !dbg !809
  %17 = load %struct.lua_State** %2, align 4, !dbg !810
  %18 = call i8* @lua_tolstring(%struct.lua_State* %17, i32 -1, i32* null), !dbg !810
  store i8* %18, i8** %name, align 4, !dbg !810
  %19 = load i8** %name, align 4, !dbg !811
  %20 = call i32 @strncmp(i8* %19, i8* getelementptr inbounds ([4 x i8]* @.str56, i32 0, i32 0), i32 3) #6, !dbg !811
  %21 = icmp eq i32 %20, 0, !dbg !811
  br i1 %21, label %22, label %29, !dbg !811

; <label>:22                                      ; preds = %16
  %23 = load %struct.lua_State** %2, align 4, !dbg !813
  %24 = load i8** %name, align 4, !dbg !813
  %25 = getelementptr inbounds i8* %24, i32 3, !dbg !813
  %26 = call i8* @lua_pushstring(%struct.lua_State* %23, i8* %25), !dbg !813
  %27 = load %struct.lua_State** %2, align 4, !dbg !815
  call void @lua_rotate(%struct.lua_State* %27, i32 -2, i32 -1), !dbg !815
  %28 = load %struct.lua_State** %2, align 4, !dbg !815
  call void @lua_settop(%struct.lua_State* %28, i32 -2), !dbg !815
  br label %29, !dbg !816

; <label>:29                                      ; preds = %22, %16
  %30 = load %struct.lua_State** %2, align 4, !dbg !817
  %31 = load i32* %top, align 4, !dbg !817
  %32 = add nsw i32 %31, 1, !dbg !817
  call void @lua_copy(%struct.lua_State* %30, i32 -1, i32 %32), !dbg !817
  %33 = load %struct.lua_State** %2, align 4, !dbg !818
  call void @lua_settop(%struct.lua_State* %33, i32 -3), !dbg !818
  store i32 1, i32* %1, !dbg !819
  br label %37, !dbg !819

; <label>:34                                      ; preds = %0
  %35 = load %struct.lua_State** %2, align 4, !dbg !820
  %36 = load i32* %top, align 4, !dbg !820
  call void @lua_settop(%struct.lua_State* %35, i32 %36), !dbg !820
  store i32 0, i32* %1, !dbg !822
  br label %37, !dbg !822

; <label>:37                                      ; preds = %34, %29
  %38 = load i32* %1, !dbg !823
  ret i32 %38, !dbg !823
}

declare i8* @lua_tolstring(%struct.lua_State*, i32, i32*) #2

; Function Attrs: nounwind
define void @luaL_where(%struct.lua_State* %L, i32 %level) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %ar = alloca %struct.lua_Debug, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !824), !dbg !825
  store i32 %level, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !826), !dbg !827
  call void @llvm.dbg.declare(metadata !{%struct.lua_Debug* %ar}, metadata !828), !dbg !829
  %3 = load %struct.lua_State** %1, align 4, !dbg !830
  %4 = load i32* %2, align 4, !dbg !830
  %5 = call i32 @lua_getstack(%struct.lua_State* %3, i32 %4, %struct.lua_Debug* %ar), !dbg !830
  %6 = icmp ne i32 %5, 0, !dbg !830
  br i1 %6, label %7, label %21, !dbg !830

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %1, align 4, !dbg !832
  %9 = call i32 @lua_getinfo(%struct.lua_State* %8, i8* getelementptr inbounds ([3 x i8]* @.str14, i32 0, i32 0), %struct.lua_Debug* %ar), !dbg !832
  %10 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 5, !dbg !834
  %11 = load i32* %10, align 4, !dbg !834
  %12 = icmp sgt i32 %11, 0, !dbg !834
  br i1 %12, label %13, label %20, !dbg !834

; <label>:13                                      ; preds = %7
  %14 = load %struct.lua_State** %1, align 4, !dbg !836
  %15 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 12, !dbg !836
  %16 = getelementptr inbounds [60 x i8]* %15, i32 0, i32 0, !dbg !836
  %17 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 5, !dbg !836
  %18 = load i32* %17, align 4, !dbg !836
  %19 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %14, i8* getelementptr inbounds ([8 x i8]* @.str15, i32 0, i32 0), i8* %16, i32 %18), !dbg !836
  br label %24, !dbg !838

; <label>:20                                      ; preds = %7
  br label %21, !dbg !839

; <label>:21                                      ; preds = %20, %0
  %22 = load %struct.lua_State** %1, align 4, !dbg !840
  %23 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %22, i8* getelementptr inbounds ([1 x i8]* @.str16, i32 0, i32 0)), !dbg !840
  br label %24, !dbg !841

; <label>:24                                      ; preds = %21, %13
  ret void, !dbg !842
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare i8* @lua_pushvfstring(%struct.lua_State*, i8*, { [1 x i32] }) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare i32 @lua_error(%struct.lua_State*) #2

; Function Attrs: nounwind
define i32 @luaL_fileresult(%struct.lua_State* %L, i32 %stat, i8* %fname) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %en = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !844), !dbg !845
  store i32 %stat, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !846), !dbg !847
  store i8* %fname, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !848), !dbg !849
  call void @llvm.dbg.declare(metadata !{i32* %en}, metadata !850), !dbg !851
  %5 = call i32* @__errno_location() #1, !dbg !852
  %6 = load i32* %5, align 4, !dbg !852
  store i32 %6, i32* %en, align 4, !dbg !852
  %7 = load i32* %3, align 4, !dbg !853
  %8 = icmp ne i32 %7, 0, !dbg !853
  br i1 %8, label %9, label %11, !dbg !853

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %2, align 4, !dbg !855
  call void @lua_pushboolean(%struct.lua_State* %10, i32 1), !dbg !855
  store i32 1, i32* %1, !dbg !857
  br label %30, !dbg !857

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_State** %2, align 4, !dbg !858
  call void @lua_pushnil(%struct.lua_State* %12), !dbg !858
  %13 = load i8** %4, align 4, !dbg !860
  %14 = icmp ne i8* %13, null, !dbg !860
  br i1 %14, label %15, label %21, !dbg !860

; <label>:15                                      ; preds = %11
  %16 = load %struct.lua_State** %2, align 4, !dbg !862
  %17 = load i8** %4, align 4, !dbg !862
  %18 = load i32* %en, align 4, !dbg !863
  %19 = call i8* @strerror(i32 %18) #4, !dbg !863
  %20 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %16, i8* getelementptr inbounds ([7 x i8]* @.str17, i32 0, i32 0), i8* %17, i8* %19), !dbg !862
  br label %26, !dbg !862

; <label>:21                                      ; preds = %11
  %22 = load %struct.lua_State** %2, align 4, !dbg !864
  %23 = load i32* %en, align 4, !dbg !865
  %24 = call i8* @strerror(i32 %23) #4, !dbg !865
  %25 = call i8* @lua_pushstring(%struct.lua_State* %22, i8* %24), !dbg !864
  br label %26

; <label>:26                                      ; preds = %21, %15
  %27 = load %struct.lua_State** %2, align 4, !dbg !866
  %28 = load i32* %en, align 4, !dbg !866
  %29 = sext i32 %28 to i64, !dbg !866
  call void @lua_pushinteger(%struct.lua_State* %27, i64 %29), !dbg !866
  store i32 3, i32* %1, !dbg !867
  br label %30, !dbg !867

; <label>:30                                      ; preds = %26, %9
  %31 = load i32* %1, !dbg !868
  ret i32 %31, !dbg !868
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare void @lua_pushboolean(%struct.lua_State*, i32) #2

declare void @lua_pushnil(%struct.lua_State*) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #0

declare void @lua_pushinteger(%struct.lua_State*, i64) #2

; Function Attrs: nounwind
define i32 @luaL_execresult(%struct.lua_State* %L, i32 %stat) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %what = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !869), !dbg !870
  store i32 %stat, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !871), !dbg !872
  call void @llvm.dbg.declare(metadata !{i8** %what}, metadata !873), !dbg !874
  store i8* getelementptr inbounds ([5 x i8]* @.str18, i32 0, i32 0), i8** %what, align 4, !dbg !875
  %4 = load i32* %3, align 4, !dbg !876
  %5 = icmp eq i32 %4, -1, !dbg !876
  br i1 %5, label %6, label %9, !dbg !876

; <label>:6                                       ; preds = %0
  %7 = load %struct.lua_State** %2, align 4, !dbg !878
  %8 = call i32 @luaL_fileresult(%struct.lua_State* %7, i32 0, i8* null), !dbg !878
  store i32 %8, i32* %1, !dbg !878
  br label %28, !dbg !878

; <label>:9                                       ; preds = %0
  %10 = load i8** %what, align 4, !dbg !879
  %11 = load i8* %10, align 1, !dbg !879
  %12 = zext i8 %11 to i32, !dbg !879
  %13 = icmp eq i32 %12, 101, !dbg !879
  br i1 %13, label %14, label %19, !dbg !879

; <label>:14                                      ; preds = %9
  %15 = load i32* %3, align 4, !dbg !882
  %16 = icmp eq i32 %15, 0, !dbg !882
  br i1 %16, label %17, label %19, !dbg !882

; <label>:17                                      ; preds = %14
  %18 = load %struct.lua_State** %2, align 4, !dbg !884
  call void @lua_pushboolean(%struct.lua_State* %18, i32 1), !dbg !884
  br label %21, !dbg !884

; <label>:19                                      ; preds = %14, %9
  %20 = load %struct.lua_State** %2, align 4, !dbg !885
  call void @lua_pushnil(%struct.lua_State* %20), !dbg !885
  br label %21

; <label>:21                                      ; preds = %19, %17
  %22 = load %struct.lua_State** %2, align 4, !dbg !886
  %23 = load i8** %what, align 4, !dbg !886
  %24 = call i8* @lua_pushstring(%struct.lua_State* %22, i8* %23), !dbg !886
  %25 = load %struct.lua_State** %2, align 4, !dbg !887
  %26 = load i32* %3, align 4, !dbg !887
  %27 = sext i32 %26 to i64, !dbg !887
  call void @lua_pushinteger(%struct.lua_State* %25, i64 %27), !dbg !887
  store i32 3, i32* %1, !dbg !888
  br label %28, !dbg !888

; <label>:28                                      ; preds = %21, %6
  %29 = load i32* %1, !dbg !889
  ret i32 %29, !dbg !889
}

; Function Attrs: nounwind
define i32 @luaL_newmetatable(%struct.lua_State* %L, i8* %tname) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !890), !dbg !891
  store i8* %tname, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !892), !dbg !893
  %4 = load %struct.lua_State** %2, align 4, !dbg !894
  %5 = load i8** %3, align 4, !dbg !894
  %6 = call i32 @lua_getfield(%struct.lua_State* %4, i32 -1001000, i8* %5), !dbg !894
  %7 = icmp ne i32 %6, 0, !dbg !894
  br i1 %7, label %8, label %9, !dbg !894

; <label>:8                                       ; preds = %0
  store i32 0, i32* %1, !dbg !896
  br label %19, !dbg !896

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %2, align 4, !dbg !897
  call void @lua_settop(%struct.lua_State* %10, i32 -2), !dbg !897
  %11 = load %struct.lua_State** %2, align 4, !dbg !898
  call void @lua_createtable(%struct.lua_State* %11, i32 0, i32 2), !dbg !898
  %12 = load %struct.lua_State** %2, align 4, !dbg !899
  %13 = load i8** %3, align 4, !dbg !899
  %14 = call i8* @lua_pushstring(%struct.lua_State* %12, i8* %13), !dbg !899
  %15 = load %struct.lua_State** %2, align 4, !dbg !900
  call void @lua_setfield(%struct.lua_State* %15, i32 -2, i8* getelementptr inbounds ([7 x i8]* @.str19, i32 0, i32 0)), !dbg !900
  %16 = load %struct.lua_State** %2, align 4, !dbg !901
  call void @lua_pushvalue(%struct.lua_State* %16, i32 -1), !dbg !901
  %17 = load %struct.lua_State** %2, align 4, !dbg !902
  %18 = load i8** %3, align 4, !dbg !902
  call void @lua_setfield(%struct.lua_State* %17, i32 -1001000, i8* %18), !dbg !902
  store i32 1, i32* %1, !dbg !903
  br label %19, !dbg !903

; <label>:19                                      ; preds = %9, %8
  %20 = load i32* %1, !dbg !904
  ret i32 %20, !dbg !904
}

declare i32 @lua_getfield(%struct.lua_State*, i32, i8*) #2

declare void @lua_settop(%struct.lua_State*, i32) #2

declare void @lua_createtable(%struct.lua_State*, i32, i32) #2

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #2

declare void @lua_pushvalue(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define void @luaL_setmetatable(%struct.lua_State* %L, i8* %tname) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !905), !dbg !906
  store i8* %tname, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !907), !dbg !908
  %3 = load %struct.lua_State** %1, align 4, !dbg !909
  %4 = load i8** %2, align 4, !dbg !909
  %5 = call i32 @lua_getfield(%struct.lua_State* %3, i32 -1001000, i8* %4), !dbg !909
  %6 = load %struct.lua_State** %1, align 4, !dbg !910
  %7 = call i32 @lua_setmetatable(%struct.lua_State* %6, i32 -2), !dbg !910
  ret void, !dbg !911
}

declare i32 @lua_setmetatable(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define i8* @luaL_testudata(%struct.lua_State* %L, i32 %ud, i8* %tname) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %p = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !912), !dbg !913
  store i32 %ud, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !914), !dbg !915
  store i8* %tname, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !916), !dbg !917
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !918), !dbg !919
  %5 = load %struct.lua_State** %2, align 4, !dbg !920
  %6 = load i32* %3, align 4, !dbg !920
  %7 = call i8* @lua_touserdata(%struct.lua_State* %5, i32 %6), !dbg !920
  store i8* %7, i8** %p, align 4, !dbg !920
  %8 = load i8** %p, align 4, !dbg !921
  %9 = icmp ne i8* %8, null, !dbg !921
  br i1 %9, label %10, label %27, !dbg !921

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_State** %2, align 4, !dbg !923
  %12 = load i32* %3, align 4, !dbg !923
  %13 = call i32 @lua_getmetatable(%struct.lua_State* %11, i32 %12), !dbg !923
  %14 = icmp ne i32 %13, 0, !dbg !923
  br i1 %14, label %15, label %26, !dbg !923

; <label>:15                                      ; preds = %10
  %16 = load %struct.lua_State** %2, align 4, !dbg !926
  %17 = load i8** %4, align 4, !dbg !926
  %18 = call i32 @lua_getfield(%struct.lua_State* %16, i32 -1001000, i8* %17), !dbg !926
  %19 = load %struct.lua_State** %2, align 4, !dbg !928
  %20 = call i32 @lua_rawequal(%struct.lua_State* %19, i32 -1, i32 -2), !dbg !928
  %21 = icmp ne i32 %20, 0, !dbg !928
  br i1 %21, label %23, label %22, !dbg !928

; <label>:22                                      ; preds = %15
  store i8* null, i8** %p, align 4, !dbg !930
  br label %23, !dbg !930

; <label>:23                                      ; preds = %22, %15
  %24 = load %struct.lua_State** %2, align 4, !dbg !931
  call void @lua_settop(%struct.lua_State* %24, i32 -3), !dbg !931
  %25 = load i8** %p, align 4, !dbg !932
  store i8* %25, i8** %1, !dbg !932
  br label %28, !dbg !932

; <label>:26                                      ; preds = %10
  br label %27, !dbg !933

; <label>:27                                      ; preds = %26, %0
  store i8* null, i8** %1, !dbg !934
  br label %28, !dbg !934

; <label>:28                                      ; preds = %27, %23
  %29 = load i8** %1, !dbg !935
  ret i8* %29, !dbg !935
}

declare i8* @lua_touserdata(%struct.lua_State*, i32) #2

declare i32 @lua_getmetatable(%struct.lua_State*, i32) #2

declare i32 @lua_rawequal(%struct.lua_State*, i32, i32) #2

; Function Attrs: nounwind
define i8* @luaL_checkudata(%struct.lua_State* %L, i32 %ud, i8* %tname) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %p = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !936), !dbg !937
  store i32 %ud, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !938), !dbg !939
  store i8* %tname, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !940), !dbg !941
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !942), !dbg !943
  %4 = load %struct.lua_State** %1, align 4, !dbg !944
  %5 = load i32* %2, align 4, !dbg !944
  %6 = load i8** %3, align 4, !dbg !944
  %7 = call i8* @luaL_testudata(%struct.lua_State* %4, i32 %5, i8* %6), !dbg !944
  store i8* %7, i8** %p, align 4, !dbg !944
  %8 = load i8** %p, align 4, !dbg !945
  %9 = icmp eq i8* %8, null, !dbg !945
  br i1 %9, label %10, label %15, !dbg !945

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_State** %1, align 4, !dbg !947
  %12 = load i32* %2, align 4, !dbg !947
  %13 = load i8** %3, align 4, !dbg !947
  %14 = call i32 @typeerror(%struct.lua_State* %11, i32 %12, i8* %13), !dbg !947
  br label %15, !dbg !947

; <label>:15                                      ; preds = %10, %0
  %16 = load i8** %p, align 4, !dbg !949
  ret i8* %16, !dbg !949
}

; Function Attrs: nounwind
define internal i32 @typeerror(%struct.lua_State* %L, i32 %arg, i8* %tname) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %msg = alloca i8*, align 4
  %typearg = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !950), !dbg !951
  store i32 %arg, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !952), !dbg !953
  store i8* %tname, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !954), !dbg !955
  call void @llvm.dbg.declare(metadata !{i8** %msg}, metadata !956), !dbg !957
  call void @llvm.dbg.declare(metadata !{i8** %typearg}, metadata !958), !dbg !959
  %4 = load %struct.lua_State** %1, align 4, !dbg !960
  %5 = load i32* %2, align 4, !dbg !960
  %6 = call i32 @luaL_getmetafield(%struct.lua_State* %4, i32 %5, i8* getelementptr inbounds ([7 x i8]* @.str19, i32 0, i32 0)), !dbg !960
  %7 = icmp eq i32 %6, 4, !dbg !960
  br i1 %7, label %8, label %11, !dbg !960

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_State** %1, align 4, !dbg !962
  %10 = call i8* @lua_tolstring(%struct.lua_State* %9, i32 -1, i32* null), !dbg !962
  store i8* %10, i8** %typearg, align 4, !dbg !962
  br label %24, !dbg !962

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_State** %1, align 4, !dbg !963
  %13 = load i32* %2, align 4, !dbg !963
  %14 = call i32 @lua_type(%struct.lua_State* %12, i32 %13), !dbg !963
  %15 = icmp eq i32 %14, 2, !dbg !963
  br i1 %15, label %16, label %17, !dbg !963

; <label>:16                                      ; preds = %11
  store i8* getelementptr inbounds ([15 x i8]* @.str53, i32 0, i32 0), i8** %typearg, align 4, !dbg !965
  br label %23, !dbg !965

; <label>:17                                      ; preds = %11
  %18 = load %struct.lua_State** %1, align 4, !dbg !966
  %19 = load %struct.lua_State** %1, align 4, !dbg !966
  %20 = load i32* %2, align 4, !dbg !966
  %21 = call i32 @lua_type(%struct.lua_State* %19, i32 %20), !dbg !966
  %22 = call i8* @lua_typename(%struct.lua_State* %18, i32 %21), !dbg !966
  store i8* %22, i8** %typearg, align 4, !dbg !966
  br label %23

; <label>:23                                      ; preds = %17, %16
  br label %24

; <label>:24                                      ; preds = %23, %8
  %25 = load %struct.lua_State** %1, align 4, !dbg !967
  %26 = load i8** %3, align 4, !dbg !967
  %27 = load i8** %typearg, align 4, !dbg !967
  %28 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %25, i8* getelementptr inbounds ([20 x i8]* @.str54, i32 0, i32 0), i8* %26, i8* %27), !dbg !967
  store i8* %28, i8** %msg, align 4, !dbg !967
  %29 = load %struct.lua_State** %1, align 4, !dbg !968
  %30 = load i32* %2, align 4, !dbg !968
  %31 = load i8** %msg, align 4, !dbg !968
  %32 = call i32 @luaL_argerror(%struct.lua_State* %29, i32 %30, i8* %31), !dbg !968
  ret i32 %32, !dbg !968
}

; Function Attrs: nounwind
define i32 @luaL_checkoption(%struct.lua_State* %L, i32 %arg, i8* %def, i8** %lst) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i8**, align 4
  %name = alloca i8*, align 4
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !969), !dbg !970
  store i32 %arg, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !971), !dbg !972
  store i8* %def, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !973), !dbg !974
  store i8** %lst, i8*** %5, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %5}, metadata !975), !dbg !976
  call void @llvm.dbg.declare(metadata !{i8** %name}, metadata !977), !dbg !978
  %6 = load i8** %4, align 4, !dbg !979
  %7 = icmp ne i8* %6, null, !dbg !979
  br i1 %7, label %8, label %13, !dbg !979

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_State** %2, align 4, !dbg !980
  %10 = load i32* %3, align 4, !dbg !980
  %11 = load i8** %4, align 4, !dbg !980
  %12 = call i8* @luaL_optlstring(%struct.lua_State* %9, i32 %10, i8* %11, i32* null), !dbg !980
  br label %17, !dbg !980

; <label>:13                                      ; preds = %0
  %14 = load %struct.lua_State** %2, align 4, !dbg !982
  %15 = load i32* %3, align 4, !dbg !982
  %16 = call i8* @luaL_checklstring(%struct.lua_State* %14, i32 %15, i32* null), !dbg !982
  br label %17, !dbg !982

; <label>:17                                      ; preds = %13, %8
  %18 = phi i8* [ %12, %8 ], [ %16, %13 ], !dbg !982
  store i8* %18, i8** %name, align 4, !dbg !983
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !985), !dbg !986
  store i32 0, i32* %i, align 4, !dbg !987
  br label %19, !dbg !987

; <label>:19                                      ; preds = %36, %17
  %20 = load i32* %i, align 4, !dbg !989
  %21 = load i8*** %5, align 4, !dbg !989
  %22 = getelementptr inbounds i8** %21, i32 %20, !dbg !989
  %23 = load i8** %22, align 4, !dbg !989
  %24 = icmp ne i8* %23, null, !dbg !989
  br i1 %24, label %25, label %39, !dbg !989

; <label>:25                                      ; preds = %19
  %26 = load i32* %i, align 4, !dbg !992
  %27 = load i8*** %5, align 4, !dbg !992
  %28 = getelementptr inbounds i8** %27, i32 %26, !dbg !992
  %29 = load i8** %28, align 4, !dbg !992
  %30 = load i8** %name, align 4, !dbg !992
  %31 = call i32 @strcmp(i8* %29, i8* %30) #6, !dbg !992
  %32 = icmp eq i32 %31, 0, !dbg !992
  br i1 %32, label %33, label %35, !dbg !992

; <label>:33                                      ; preds = %25
  %34 = load i32* %i, align 4, !dbg !994
  store i32 %34, i32* %1, !dbg !994
  br label %46, !dbg !994

; <label>:35                                      ; preds = %25
  br label %36, !dbg !995

; <label>:36                                      ; preds = %35
  %37 = load i32* %i, align 4, !dbg !997
  %38 = add nsw i32 %37, 1, !dbg !997
  store i32 %38, i32* %i, align 4, !dbg !997
  br label %19, !dbg !997

; <label>:39                                      ; preds = %19
  %40 = load %struct.lua_State** %2, align 4, !dbg !998
  %41 = load i32* %3, align 4, !dbg !998
  %42 = load %struct.lua_State** %2, align 4, !dbg !999
  %43 = load i8** %name, align 4, !dbg !999
  %44 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %42, i8* getelementptr inbounds ([20 x i8]* @.str20, i32 0, i32 0), i8* %43), !dbg !999
  %45 = call i32 @luaL_argerror(%struct.lua_State* %40, i32 %41, i8* %44), !dbg !998
  store i32 %45, i32* %1, !dbg !998
  br label %46, !dbg !998

; <label>:46                                      ; preds = %39, %33
  %47 = load i32* %1, !dbg !1000
  ret i32 %47, !dbg !1000
}

; Function Attrs: nounwind
define i8* @luaL_optlstring(%struct.lua_State* %L, i32 %arg, i8* %def, i32* %len) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1001), !dbg !1002
  store i32 %arg, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1003), !dbg !1004
  store i8* %def, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !1005), !dbg !1006
  store i32* %len, i32** %5, align 4
  call void @llvm.dbg.declare(metadata !{i32** %5}, metadata !1007), !dbg !1008
  %6 = load %struct.lua_State** %2, align 4, !dbg !1009
  %7 = load i32* %3, align 4, !dbg !1009
  %8 = call i32 @lua_type(%struct.lua_State* %6, i32 %7), !dbg !1009
  %9 = icmp sle i32 %8, 0, !dbg !1009
  br i1 %9, label %10, label %25, !dbg !1009

; <label>:10                                      ; preds = %0
  %11 = load i32** %5, align 4, !dbg !1011
  %12 = icmp ne i32* %11, null, !dbg !1011
  br i1 %12, label %13, label %23, !dbg !1011

; <label>:13                                      ; preds = %10
  %14 = load i8** %4, align 4, !dbg !1014
  %15 = icmp ne i8* %14, null, !dbg !1014
  br i1 %15, label %16, label %19, !dbg !1014

; <label>:16                                      ; preds = %13
  %17 = load i8** %4, align 4, !dbg !1015
  %18 = call i32 @strlen(i8* %17) #6, !dbg !1015
  br label %20, !dbg !1015

; <label>:19                                      ; preds = %13
  br label %20, !dbg !1017

; <label>:20                                      ; preds = %19, %16
  %21 = phi i32 [ %18, %16 ], [ 0, %19 ], !dbg !1019
  %22 = load i32** %5, align 4, !dbg !1020
  store i32 %21, i32* %22, align 4, !dbg !1020
  br label %23, !dbg !1020

; <label>:23                                      ; preds = %20, %10
  %24 = load i8** %4, align 4, !dbg !1023
  store i8* %24, i8** %1, !dbg !1023
  br label %30, !dbg !1023

; <label>:25                                      ; preds = %0
  %26 = load %struct.lua_State** %2, align 4, !dbg !1024
  %27 = load i32* %3, align 4, !dbg !1024
  %28 = load i32** %5, align 4, !dbg !1024
  %29 = call i8* @luaL_checklstring(%struct.lua_State* %26, i32 %27, i32* %28), !dbg !1024
  store i8* %29, i8** %1, !dbg !1024
  br label %30, !dbg !1024

; <label>:30                                      ; preds = %25, %23
  %31 = load i8** %1, !dbg !1025
  ret i8* %31, !dbg !1025
}

; Function Attrs: nounwind
define i8* @luaL_checklstring(%struct.lua_State* %L, i32 %arg, i32* %len) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 4
  %s = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1026), !dbg !1027
  store i32 %arg, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1028), !dbg !1029
  store i32* %len, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !1030), !dbg !1031
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !1032), !dbg !1033
  %4 = load %struct.lua_State** %1, align 4, !dbg !1034
  %5 = load i32* %2, align 4, !dbg !1034
  %6 = load i32** %3, align 4, !dbg !1034
  %7 = call i8* @lua_tolstring(%struct.lua_State* %4, i32 %5, i32* %6), !dbg !1034
  store i8* %7, i8** %s, align 4, !dbg !1034
  %8 = load i8** %s, align 4, !dbg !1035
  %9 = icmp ne i8* %8, null, !dbg !1035
  br i1 %9, label %13, label %10, !dbg !1035

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_State** %1, align 4, !dbg !1037
  %12 = load i32* %2, align 4, !dbg !1037
  call void @tag_error(%struct.lua_State* %11, i32 %12, i32 4), !dbg !1037
  br label %13, !dbg !1037

; <label>:13                                      ; preds = %10, %0
  %14 = load i8** %s, align 4, !dbg !1039
  ret i8* %14, !dbg !1039
}

declare i32 @lua_checkstack(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define void @luaL_checktype(%struct.lua_State* %L, i32 %arg, i32 %t) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1040), !dbg !1041
  store i32 %arg, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1042), !dbg !1043
  store i32 %t, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1044), !dbg !1045
  %4 = load %struct.lua_State** %1, align 4, !dbg !1046
  %5 = load i32* %2, align 4, !dbg !1046
  %6 = call i32 @lua_type(%struct.lua_State* %4, i32 %5), !dbg !1046
  %7 = load i32* %3, align 4, !dbg !1046
  %8 = icmp ne i32 %6, %7, !dbg !1046
  br i1 %8, label %9, label %13, !dbg !1046

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %1, align 4, !dbg !1048
  %11 = load i32* %2, align 4, !dbg !1048
  %12 = load i32* %3, align 4, !dbg !1048
  call void @tag_error(%struct.lua_State* %10, i32 %11, i32 %12), !dbg !1048
  br label %13, !dbg !1048

; <label>:13                                      ; preds = %9, %0
  ret void, !dbg !1049
}

declare i32 @lua_type(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal void @tag_error(%struct.lua_State* %L, i32 %arg, i32 %tag) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1050), !dbg !1051
  store i32 %arg, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1052), !dbg !1053
  store i32 %tag, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1054), !dbg !1055
  %4 = load %struct.lua_State** %1, align 4, !dbg !1056
  %5 = load i32* %2, align 4, !dbg !1056
  %6 = load %struct.lua_State** %1, align 4, !dbg !1057
  %7 = load i32* %3, align 4, !dbg !1057
  %8 = call i8* @lua_typename(%struct.lua_State* %6, i32 %7), !dbg !1057
  %9 = call i32 @typeerror(%struct.lua_State* %4, i32 %5, i8* %8), !dbg !1056
  ret void, !dbg !1058
}

; Function Attrs: nounwind
define void @luaL_checkany(%struct.lua_State* %L, i32 %arg) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1059), !dbg !1060
  store i32 %arg, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1061), !dbg !1062
  %3 = load %struct.lua_State** %1, align 4, !dbg !1063
  %4 = load i32* %2, align 4, !dbg !1063
  %5 = call i32 @lua_type(%struct.lua_State* %3, i32 %4), !dbg !1063
  %6 = icmp eq i32 %5, -1, !dbg !1063
  br i1 %6, label %7, label %11, !dbg !1063

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %1, align 4, !dbg !1065
  %9 = load i32* %2, align 4, !dbg !1065
  %10 = call i32 @luaL_argerror(%struct.lua_State* %8, i32 %9, i8* getelementptr inbounds ([15 x i8]* @.str23, i32 0, i32 0)), !dbg !1065
  br label %11, !dbg !1065

; <label>:11                                      ; preds = %7, %0
  ret void, !dbg !1066
}

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #3

; Function Attrs: nounwind
define double @luaL_checknumber(%struct.lua_State* %L, i32 %arg) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %isnum = alloca i32, align 4
  %d = alloca double, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1067), !dbg !1068
  store i32 %arg, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1069), !dbg !1070
  call void @llvm.dbg.declare(metadata !{i32* %isnum}, metadata !1071), !dbg !1072
  call void @llvm.dbg.declare(metadata !{double* %d}, metadata !1073), !dbg !1074
  %3 = load %struct.lua_State** %1, align 4, !dbg !1075
  %4 = load i32* %2, align 4, !dbg !1075
  %5 = call double @lua_tonumberx(%struct.lua_State* %3, i32 %4, i32* %isnum), !dbg !1075
  store double %5, double* %d, align 8, !dbg !1075
  %6 = load i32* %isnum, align 4, !dbg !1076
  %7 = icmp ne i32 %6, 0, !dbg !1076
  br i1 %7, label %11, label %8, !dbg !1076

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_State** %1, align 4, !dbg !1078
  %10 = load i32* %2, align 4, !dbg !1078
  call void @tag_error(%struct.lua_State* %9, i32 %10, i32 3), !dbg !1078
  br label %11, !dbg !1078

; <label>:11                                      ; preds = %8, %0
  %12 = load double* %d, align 8, !dbg !1079
  ret double %12, !dbg !1079
}

declare double @lua_tonumberx(%struct.lua_State*, i32, i32*) #2

; Function Attrs: nounwind
define double @luaL_optnumber(%struct.lua_State* %L, i32 %arg, double %def) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1080), !dbg !1081
  store i32 %arg, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1082), !dbg !1083
  store double %def, double* %3, align 8
  call void @llvm.dbg.declare(metadata !{double* %3}, metadata !1084), !dbg !1085
  %4 = load %struct.lua_State** %1, align 4, !dbg !1086
  %5 = load i32* %2, align 4, !dbg !1086
  %6 = call i32 @lua_type(%struct.lua_State* %4, i32 %5), !dbg !1086
  %7 = icmp sle i32 %6, 0, !dbg !1086
  br i1 %7, label %8, label %10, !dbg !1086

; <label>:8                                       ; preds = %0
  %9 = load double* %3, align 8, !dbg !1087
  br label %14, !dbg !1087

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_State** %1, align 4, !dbg !1089
  %12 = load i32* %2, align 4, !dbg !1089
  %13 = call double @luaL_checknumber(%struct.lua_State* %11, i32 %12), !dbg !1089
  br label %14, !dbg !1089

; <label>:14                                      ; preds = %10, %8
  %15 = phi double [ %9, %8 ], [ %13, %10 ], !dbg !1086
  ret double %15, !dbg !1091
}

; Function Attrs: nounwind
define i64 @luaL_checkinteger(%struct.lua_State* %L, i32 %arg) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %isnum = alloca i32, align 4
  %d = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1094), !dbg !1095
  store i32 %arg, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1096), !dbg !1097
  call void @llvm.dbg.declare(metadata !{i32* %isnum}, metadata !1098), !dbg !1099
  call void @llvm.dbg.declare(metadata !{i64* %d}, metadata !1100), !dbg !1101
  %3 = load %struct.lua_State** %1, align 4, !dbg !1102
  %4 = load i32* %2, align 4, !dbg !1102
  %5 = call i64 @lua_tointegerx(%struct.lua_State* %3, i32 %4, i32* %isnum), !dbg !1102
  store i64 %5, i64* %d, align 8, !dbg !1102
  %6 = load i32* %isnum, align 4, !dbg !1103
  %7 = icmp ne i32 %6, 0, !dbg !1103
  br i1 %7, label %11, label %8, !dbg !1103

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_State** %1, align 4, !dbg !1105
  %10 = load i32* %2, align 4, !dbg !1105
  call void @interror(%struct.lua_State* %9, i32 %10), !dbg !1105
  br label %11, !dbg !1107

; <label>:11                                      ; preds = %8, %0
  %12 = load i64* %d, align 8, !dbg !1108
  ret i64 %12, !dbg !1108
}

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) #2

; Function Attrs: nounwind
define internal void @interror(%struct.lua_State* %L, i32 %arg) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1109), !dbg !1110
  store i32 %arg, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1111), !dbg !1112
  %3 = load %struct.lua_State** %1, align 4, !dbg !1113
  %4 = load i32* %2, align 4, !dbg !1113
  %5 = call i32 @lua_isnumber(%struct.lua_State* %3, i32 %4), !dbg !1113
  %6 = icmp ne i32 %5, 0, !dbg !1113
  br i1 %6, label %7, label %11, !dbg !1113

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %1, align 4, !dbg !1115
  %9 = load i32* %2, align 4, !dbg !1115
  %10 = call i32 @luaL_argerror(%struct.lua_State* %8, i32 %9, i8* getelementptr inbounds ([37 x i8]* @.str52, i32 0, i32 0)), !dbg !1115
  br label %14, !dbg !1115

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_State** %1, align 4, !dbg !1116
  %13 = load i32* %2, align 4, !dbg !1116
  call void @tag_error(%struct.lua_State* %12, i32 %13, i32 3), !dbg !1116
  br label %14

; <label>:14                                      ; preds = %11, %7
  ret void, !dbg !1117
}

; Function Attrs: nounwind
define i64 @luaL_optinteger(%struct.lua_State* %L, i32 %arg, i64 %def) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1118), !dbg !1119
  store i32 %arg, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1120), !dbg !1121
  store i64 %def, i64* %3, align 8
  call void @llvm.dbg.declare(metadata !{i64* %3}, metadata !1122), !dbg !1123
  %4 = load %struct.lua_State** %1, align 4, !dbg !1124
  %5 = load i32* %2, align 4, !dbg !1124
  %6 = call i32 @lua_type(%struct.lua_State* %4, i32 %5), !dbg !1124
  %7 = icmp sle i32 %6, 0, !dbg !1124
  br i1 %7, label %8, label %10, !dbg !1124

; <label>:8                                       ; preds = %0
  %9 = load i64* %3, align 8, !dbg !1125
  br label %14, !dbg !1125

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_State** %1, align 4, !dbg !1127
  %12 = load i32* %2, align 4, !dbg !1127
  %13 = call i64 @luaL_checkinteger(%struct.lua_State* %11, i32 %12), !dbg !1127
  br label %14, !dbg !1127

; <label>:14                                      ; preds = %10, %8
  %15 = phi i64 [ %9, %8 ], [ %13, %10 ], !dbg !1124
  ret i64 %15, !dbg !1129
}

; Function Attrs: nounwind
define i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %B, i32 %sz) #0 {
  %1 = alloca %struct.luaL_Buffer*, align 4
  %2 = alloca i32, align 4
  %L = alloca %struct.lua_State*, align 4
  %newbuff = alloca i8*, align 4
  %newsize = alloca i32, align 4
  store %struct.luaL_Buffer* %B, %struct.luaL_Buffer** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer** %1}, metadata !1132), !dbg !1133
  store i32 %sz, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1134), !dbg !1135
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L}, metadata !1136), !dbg !1137
  %3 = load %struct.luaL_Buffer** %1, align 4, !dbg !1138
  %4 = getelementptr inbounds %struct.luaL_Buffer* %3, i32 0, i32 3, !dbg !1138
  %5 = load %struct.lua_State** %4, align 4, !dbg !1138
  store %struct.lua_State* %5, %struct.lua_State** %L, align 4, !dbg !1138
  %6 = load %struct.luaL_Buffer** %1, align 4, !dbg !1139
  %7 = getelementptr inbounds %struct.luaL_Buffer* %6, i32 0, i32 1, !dbg !1139
  %8 = load i32* %7, align 4, !dbg !1139
  %9 = load %struct.luaL_Buffer** %1, align 4, !dbg !1139
  %10 = getelementptr inbounds %struct.luaL_Buffer* %9, i32 0, i32 2, !dbg !1139
  %11 = load i32* %10, align 4, !dbg !1139
  %12 = sub i32 %8, %11, !dbg !1139
  %13 = load i32* %2, align 4, !dbg !1139
  %14 = icmp ult i32 %12, %13, !dbg !1139
  br i1 %14, label %15, label %81, !dbg !1139

; <label>:15                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i8** %newbuff}, metadata !1141), !dbg !1143
  call void @llvm.dbg.declare(metadata !{i32* %newsize}, metadata !1144), !dbg !1145
  %16 = load %struct.luaL_Buffer** %1, align 4, !dbg !1146
  %17 = getelementptr inbounds %struct.luaL_Buffer* %16, i32 0, i32 1, !dbg !1146
  %18 = load i32* %17, align 4, !dbg !1146
  %19 = mul i32 %18, 2, !dbg !1146
  store i32 %19, i32* %newsize, align 4, !dbg !1146
  %20 = load i32* %newsize, align 4, !dbg !1147
  %21 = load %struct.luaL_Buffer** %1, align 4, !dbg !1147
  %22 = getelementptr inbounds %struct.luaL_Buffer* %21, i32 0, i32 2, !dbg !1147
  %23 = load i32* %22, align 4, !dbg !1147
  %24 = sub i32 %20, %23, !dbg !1147
  %25 = load i32* %2, align 4, !dbg !1147
  %26 = icmp ult i32 %24, %25, !dbg !1147
  br i1 %26, label %27, label %33, !dbg !1147

; <label>:27                                      ; preds = %15
  %28 = load %struct.luaL_Buffer** %1, align 4, !dbg !1149
  %29 = getelementptr inbounds %struct.luaL_Buffer* %28, i32 0, i32 2, !dbg !1149
  %30 = load i32* %29, align 4, !dbg !1149
  %31 = load i32* %2, align 4, !dbg !1149
  %32 = add i32 %30, %31, !dbg !1149
  store i32 %32, i32* %newsize, align 4, !dbg !1149
  br label %33, !dbg !1149

; <label>:33                                      ; preds = %27, %15
  %34 = load i32* %newsize, align 4, !dbg !1150
  %35 = load %struct.luaL_Buffer** %1, align 4, !dbg !1150
  %36 = getelementptr inbounds %struct.luaL_Buffer* %35, i32 0, i32 2, !dbg !1150
  %37 = load i32* %36, align 4, !dbg !1150
  %38 = icmp ult i32 %34, %37, !dbg !1150
  br i1 %38, label %47, label %39, !dbg !1150

; <label>:39                                      ; preds = %33
  %40 = load i32* %newsize, align 4, !dbg !1152
  %41 = load %struct.luaL_Buffer** %1, align 4, !dbg !1152
  %42 = getelementptr inbounds %struct.luaL_Buffer* %41, i32 0, i32 2, !dbg !1152
  %43 = load i32* %42, align 4, !dbg !1152
  %44 = sub i32 %40, %43, !dbg !1152
  %45 = load i32* %2, align 4, !dbg !1152
  %46 = icmp ult i32 %44, %45, !dbg !1152
  br i1 %46, label %47, label %50, !dbg !1152

; <label>:47                                      ; preds = %39, %33
  %48 = load %struct.lua_State** %L, align 4, !dbg !1154
  %49 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %48, i8* getelementptr inbounds ([17 x i8]* @.str24, i32 0, i32 0)), !dbg !1154
  br label %50, !dbg !1154

; <label>:50                                      ; preds = %47, %39
  %51 = load %struct.luaL_Buffer** %1, align 4, !dbg !1155
  %52 = getelementptr inbounds %struct.luaL_Buffer* %51, i32 0, i32 0, !dbg !1155
  %53 = load i8** %52, align 4, !dbg !1155
  %54 = load %struct.luaL_Buffer** %1, align 4, !dbg !1155
  %55 = getelementptr inbounds %struct.luaL_Buffer* %54, i32 0, i32 4, !dbg !1155
  %56 = getelementptr inbounds [8192 x i8]* %55, i32 0, i32 0, !dbg !1155
  %57 = icmp ne i8* %53, %56, !dbg !1155
  br i1 %57, label %58, label %62, !dbg !1155

; <label>:58                                      ; preds = %50
  %59 = load %struct.lua_State** %L, align 4, !dbg !1157
  %60 = load i32* %newsize, align 4, !dbg !1157
  %61 = call i8* @resizebox(%struct.lua_State* %59, i32 -1, i32 %60), !dbg !1157
  store i8* %61, i8** %newbuff, align 4, !dbg !1157
  br label %74, !dbg !1157

; <label>:62                                      ; preds = %50
  %63 = load %struct.lua_State** %L, align 4, !dbg !1158
  %64 = load i32* %newsize, align 4, !dbg !1158
  %65 = call i8* @newbox(%struct.lua_State* %63, i32 %64), !dbg !1158
  store i8* %65, i8** %newbuff, align 4, !dbg !1158
  %66 = load i8** %newbuff, align 4, !dbg !1160
  %67 = load %struct.luaL_Buffer** %1, align 4, !dbg !1160
  %68 = getelementptr inbounds %struct.luaL_Buffer* %67, i32 0, i32 0, !dbg !1160
  %69 = load i8** %68, align 4, !dbg !1160
  %70 = load %struct.luaL_Buffer** %1, align 4, !dbg !1160
  %71 = getelementptr inbounds %struct.luaL_Buffer* %70, i32 0, i32 2, !dbg !1160
  %72 = load i32* %71, align 4, !dbg !1160
  %73 = mul i32 %72, 1, !dbg !1160
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %66, i8* %69, i32 %73, i32 1, i1 false), !dbg !1160
  br label %74

; <label>:74                                      ; preds = %62, %58
  %75 = load i8** %newbuff, align 4, !dbg !1161
  %76 = load %struct.luaL_Buffer** %1, align 4, !dbg !1161
  %77 = getelementptr inbounds %struct.luaL_Buffer* %76, i32 0, i32 0, !dbg !1161
  store i8* %75, i8** %77, align 4, !dbg !1161
  %78 = load i32* %newsize, align 4, !dbg !1162
  %79 = load %struct.luaL_Buffer** %1, align 4, !dbg !1162
  %80 = getelementptr inbounds %struct.luaL_Buffer* %79, i32 0, i32 1, !dbg !1162
  store i32 %78, i32* %80, align 4, !dbg !1162
  br label %81, !dbg !1163

; <label>:81                                      ; preds = %74, %0
  %82 = load %struct.luaL_Buffer** %1, align 4, !dbg !1164
  %83 = getelementptr inbounds %struct.luaL_Buffer* %82, i32 0, i32 2, !dbg !1164
  %84 = load i32* %83, align 4, !dbg !1164
  %85 = load %struct.luaL_Buffer** %1, align 4, !dbg !1164
  %86 = getelementptr inbounds %struct.luaL_Buffer* %85, i32 0, i32 0, !dbg !1164
  %87 = load i8** %86, align 4, !dbg !1164
  %88 = getelementptr inbounds i8* %87, i32 %84, !dbg !1164
  ret i8* %88, !dbg !1164
}

; Function Attrs: nounwind
define internal i8* @resizebox(%struct.lua_State* %L, i32 %idx, i32 %newsize) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %ud = alloca i8*, align 4
  %allocf = alloca i8* (i8*, i8*, i32, i32)*, align 4
  %box = alloca %struct.UBox*, align 4
  %temp = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1165), !dbg !1166
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1167), !dbg !1168
  store i32 %newsize, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1169), !dbg !1170
  call void @llvm.dbg.declare(metadata !{i8** %ud}, metadata !1171), !dbg !1172
  call void @llvm.dbg.declare(metadata !{i8* (i8*, i8*, i32, i32)** %allocf}, metadata !1173), !dbg !1176
  %4 = load %struct.lua_State** %1, align 4, !dbg !1177
  %5 = call i8* (i8*, i8*, i32, i32)* (%struct.lua_State*, i8**)* @lua_getallocf(%struct.lua_State* %4, i8** %ud), !dbg !1177
  store i8* (i8*, i8*, i32, i32)* %5, i8* (i8*, i8*, i32, i32)** %allocf, align 4, !dbg !1177
  call void @llvm.dbg.declare(metadata !{%struct.UBox** %box}, metadata !1178), !dbg !1185
  %6 = load %struct.lua_State** %1, align 4, !dbg !1186
  %7 = load i32* %2, align 4, !dbg !1186
  %8 = call i8* @lua_touserdata(%struct.lua_State* %6, i32 %7), !dbg !1186
  %9 = bitcast i8* %8 to %struct.UBox*, !dbg !1186
  store %struct.UBox* %9, %struct.UBox** %box, align 4, !dbg !1186
  call void @llvm.dbg.declare(metadata !{i8** %temp}, metadata !1187), !dbg !1188
  %10 = load i8* (i8*, i8*, i32, i32)** %allocf, align 4, !dbg !1189
  %11 = load i8** %ud, align 4, !dbg !1189
  %12 = load %struct.UBox** %box, align 4, !dbg !1189
  %13 = getelementptr inbounds %struct.UBox* %12, i32 0, i32 0, !dbg !1189
  %14 = load i8** %13, align 4, !dbg !1189
  %15 = load %struct.UBox** %box, align 4, !dbg !1189
  %16 = getelementptr inbounds %struct.UBox* %15, i32 0, i32 1, !dbg !1189
  %17 = load i32* %16, align 4, !dbg !1189
  %18 = load i32* %3, align 4, !dbg !1189
  %19 = call i8* %10(i8* %11, i8* %14, i32 %17, i32 %18), !dbg !1189
  store i8* %19, i8** %temp, align 4, !dbg !1189
  %20 = load i8** %temp, align 4, !dbg !1190
  %21 = icmp eq i8* %20, null, !dbg !1190
  br i1 %21, label %22, label %31, !dbg !1190

; <label>:22                                      ; preds = %0
  %23 = load i32* %3, align 4, !dbg !1192
  %24 = icmp ugt i32 %23, 0, !dbg !1192
  br i1 %24, label %25, label %31, !dbg !1192

; <label>:25                                      ; preds = %22
  %26 = load %struct.lua_State** %1, align 4, !dbg !1194
  %27 = load i32* %2, align 4, !dbg !1194
  %28 = call i8* @resizebox(%struct.lua_State* %26, i32 %27, i32 0), !dbg !1194
  %29 = load %struct.lua_State** %1, align 4, !dbg !1196
  %30 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %29, i8* getelementptr inbounds ([40 x i8]* @.str51, i32 0, i32 0)), !dbg !1196
  br label %31, !dbg !1197

; <label>:31                                      ; preds = %25, %22, %0
  %32 = load i8** %temp, align 4, !dbg !1198
  %33 = load %struct.UBox** %box, align 4, !dbg !1198
  %34 = getelementptr inbounds %struct.UBox* %33, i32 0, i32 0, !dbg !1198
  store i8* %32, i8** %34, align 4, !dbg !1198
  %35 = load i32* %3, align 4, !dbg !1199
  %36 = load %struct.UBox** %box, align 4, !dbg !1199
  %37 = getelementptr inbounds %struct.UBox* %36, i32 0, i32 1, !dbg !1199
  store i32 %35, i32* %37, align 4, !dbg !1199
  %38 = load i8** %temp, align 4, !dbg !1200
  ret i8* %38, !dbg !1200
}

; Function Attrs: nounwind
define internal i8* @newbox(%struct.lua_State* %L, i32 %newsize) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %box = alloca %struct.UBox*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1201), !dbg !1202
  store i32 %newsize, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1203), !dbg !1204
  call void @llvm.dbg.declare(metadata !{%struct.UBox** %box}, metadata !1205), !dbg !1206
  %3 = load %struct.lua_State** %1, align 4, !dbg !1207
  %4 = call i8* @lua_newuserdata(%struct.lua_State* %3, i32 8), !dbg !1207
  %5 = bitcast i8* %4 to %struct.UBox*, !dbg !1207
  store %struct.UBox* %5, %struct.UBox** %box, align 4, !dbg !1207
  %6 = load %struct.UBox** %box, align 4, !dbg !1208
  %7 = getelementptr inbounds %struct.UBox* %6, i32 0, i32 0, !dbg !1208
  store i8* null, i8** %7, align 4, !dbg !1208
  %8 = load %struct.UBox** %box, align 4, !dbg !1209
  %9 = getelementptr inbounds %struct.UBox* %8, i32 0, i32 1, !dbg !1209
  store i32 0, i32* %9, align 4, !dbg !1209
  %10 = load %struct.lua_State** %1, align 4, !dbg !1210
  %11 = call i32 @luaL_newmetatable(%struct.lua_State* %10, i8* getelementptr inbounds ([7 x i8]* @.str49, i32 0, i32 0)), !dbg !1210
  %12 = icmp ne i32 %11, 0, !dbg !1210
  br i1 %12, label %13, label %16, !dbg !1210

; <label>:13                                      ; preds = %0
  %14 = load %struct.lua_State** %1, align 4, !dbg !1212
  call void @lua_pushcclosure(%struct.lua_State* %14, i32 (%struct.lua_State*)* @boxgc, i32 0), !dbg !1212
  %15 = load %struct.lua_State** %1, align 4, !dbg !1214
  call void @lua_setfield(%struct.lua_State* %15, i32 -2, i8* getelementptr inbounds ([5 x i8]* @.str50, i32 0, i32 0)), !dbg !1214
  br label %16, !dbg !1215

; <label>:16                                      ; preds = %13, %0
  %17 = load %struct.lua_State** %1, align 4, !dbg !1216
  %18 = call i32 @lua_setmetatable(%struct.lua_State* %17, i32 -2), !dbg !1216
  %19 = load %struct.lua_State** %1, align 4, !dbg !1217
  %20 = load i32* %2, align 4, !dbg !1217
  %21 = call i8* @resizebox(%struct.lua_State* %19, i32 -1, i32 %20), !dbg !1217
  ret i8* %21, !dbg !1217
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #4

; Function Attrs: nounwind
define void @luaL_addlstring(%struct.luaL_Buffer* %B, i8* %s, i32 %l) #0 {
  %1 = alloca %struct.luaL_Buffer*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %b = alloca i8*, align 4
  store %struct.luaL_Buffer* %B, %struct.luaL_Buffer** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer** %1}, metadata !1218), !dbg !1219
  store i8* %s, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1220), !dbg !1221
  store i32 %l, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1222), !dbg !1223
  %4 = load i32* %3, align 4, !dbg !1224
  %5 = icmp ugt i32 %4, 0, !dbg !1224
  br i1 %5, label %6, label %19, !dbg !1224

; <label>:6                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i8** %b}, metadata !1226), !dbg !1228
  %7 = load %struct.luaL_Buffer** %1, align 4, !dbg !1229
  %8 = load i32* %3, align 4, !dbg !1229
  %9 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %7, i32 %8), !dbg !1229
  store i8* %9, i8** %b, align 4, !dbg !1229
  %10 = load i8** %b, align 4, !dbg !1230
  %11 = load i8** %2, align 4, !dbg !1230
  %12 = load i32* %3, align 4, !dbg !1230
  %13 = mul i32 %12, 1, !dbg !1230
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 %13, i32 1, i1 false), !dbg !1230
  %14 = load i32* %3, align 4, !dbg !1231
  %15 = load %struct.luaL_Buffer** %1, align 4, !dbg !1231
  %16 = getelementptr inbounds %struct.luaL_Buffer* %15, i32 0, i32 2, !dbg !1231
  %17 = load i32* %16, align 4, !dbg !1231
  %18 = add i32 %17, %14, !dbg !1231
  store i32 %18, i32* %16, align 4, !dbg !1231
  br label %19, !dbg !1232

; <label>:19                                      ; preds = %6, %0
  ret void, !dbg !1233
}

; Function Attrs: nounwind
define void @luaL_addstring(%struct.luaL_Buffer* %B, i8* %s) #0 {
  %1 = alloca %struct.luaL_Buffer*, align 4
  %2 = alloca i8*, align 4
  store %struct.luaL_Buffer* %B, %struct.luaL_Buffer** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer** %1}, metadata !1234), !dbg !1235
  store i8* %s, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1236), !dbg !1237
  %3 = load %struct.luaL_Buffer** %1, align 4, !dbg !1238
  %4 = load i8** %2, align 4, !dbg !1238
  %5 = load i8** %2, align 4, !dbg !1239
  %6 = call i32 @strlen(i8* %5) #6, !dbg !1239
  call void @luaL_addlstring(%struct.luaL_Buffer* %3, i8* %4, i32 %6), !dbg !1238
  ret void, !dbg !1240
}

; Function Attrs: nounwind
define void @luaL_pushresult(%struct.luaL_Buffer* %B) #0 {
  %1 = alloca %struct.luaL_Buffer*, align 4
  %L = alloca %struct.lua_State*, align 4
  store %struct.luaL_Buffer* %B, %struct.luaL_Buffer** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer** %1}, metadata !1241), !dbg !1242
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L}, metadata !1243), !dbg !1244
  %2 = load %struct.luaL_Buffer** %1, align 4, !dbg !1245
  %3 = getelementptr inbounds %struct.luaL_Buffer* %2, i32 0, i32 3, !dbg !1245
  %4 = load %struct.lua_State** %3, align 4, !dbg !1245
  store %struct.lua_State* %4, %struct.lua_State** %L, align 4, !dbg !1245
  %5 = load %struct.lua_State** %L, align 4, !dbg !1246
  %6 = load %struct.luaL_Buffer** %1, align 4, !dbg !1246
  %7 = getelementptr inbounds %struct.luaL_Buffer* %6, i32 0, i32 0, !dbg !1246
  %8 = load i8** %7, align 4, !dbg !1246
  %9 = load %struct.luaL_Buffer** %1, align 4, !dbg !1246
  %10 = getelementptr inbounds %struct.luaL_Buffer* %9, i32 0, i32 2, !dbg !1246
  %11 = load i32* %10, align 4, !dbg !1246
  %12 = call i8* @lua_pushlstring(%struct.lua_State* %5, i8* %8, i32 %11), !dbg !1246
  %13 = load %struct.luaL_Buffer** %1, align 4, !dbg !1247
  %14 = getelementptr inbounds %struct.luaL_Buffer* %13, i32 0, i32 0, !dbg !1247
  %15 = load i8** %14, align 4, !dbg !1247
  %16 = load %struct.luaL_Buffer** %1, align 4, !dbg !1247
  %17 = getelementptr inbounds %struct.luaL_Buffer* %16, i32 0, i32 4, !dbg !1247
  %18 = getelementptr inbounds [8192 x i8]* %17, i32 0, i32 0, !dbg !1247
  %19 = icmp ne i8* %15, %18, !dbg !1247
  br i1 %19, label %20, label %25, !dbg !1247

; <label>:20                                      ; preds = %0
  %21 = load %struct.lua_State** %L, align 4, !dbg !1249
  %22 = call i8* @resizebox(%struct.lua_State* %21, i32 -2, i32 0), !dbg !1249
  %23 = load %struct.lua_State** %L, align 4, !dbg !1251
  call void @lua_rotate(%struct.lua_State* %23, i32 -2, i32 -1), !dbg !1251
  %24 = load %struct.lua_State** %L, align 4, !dbg !1251
  call void @lua_settop(%struct.lua_State* %24, i32 -2), !dbg !1251
  br label %25, !dbg !1252

; <label>:25                                      ; preds = %20, %0
  ret void, !dbg !1253
}

declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i32) #2

declare void @lua_rotate(%struct.lua_State*, i32, i32) #2

; Function Attrs: nounwind
define void @luaL_pushresultsize(%struct.luaL_Buffer* %B, i32 %sz) #0 {
  %1 = alloca %struct.luaL_Buffer*, align 4
  %2 = alloca i32, align 4
  store %struct.luaL_Buffer* %B, %struct.luaL_Buffer** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer** %1}, metadata !1254), !dbg !1255
  store i32 %sz, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1256), !dbg !1257
  %3 = load i32* %2, align 4, !dbg !1258
  %4 = load %struct.luaL_Buffer** %1, align 4, !dbg !1258
  %5 = getelementptr inbounds %struct.luaL_Buffer* %4, i32 0, i32 2, !dbg !1258
  %6 = load i32* %5, align 4, !dbg !1258
  %7 = add i32 %6, %3, !dbg !1258
  store i32 %7, i32* %5, align 4, !dbg !1258
  %8 = load %struct.luaL_Buffer** %1, align 4, !dbg !1259
  call void @luaL_pushresult(%struct.luaL_Buffer* %8), !dbg !1259
  ret void, !dbg !1260
}

; Function Attrs: nounwind
define void @luaL_addvalue(%struct.luaL_Buffer* %B) #0 {
  %1 = alloca %struct.luaL_Buffer*, align 4
  %L = alloca %struct.lua_State*, align 4
  %l = alloca i32, align 4
  %s = alloca i8*, align 4
  store %struct.luaL_Buffer* %B, %struct.luaL_Buffer** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer** %1}, metadata !1261), !dbg !1262
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L}, metadata !1263), !dbg !1264
  %2 = load %struct.luaL_Buffer** %1, align 4, !dbg !1265
  %3 = getelementptr inbounds %struct.luaL_Buffer* %2, i32 0, i32 3, !dbg !1265
  %4 = load %struct.lua_State** %3, align 4, !dbg !1265
  store %struct.lua_State* %4, %struct.lua_State** %L, align 4, !dbg !1265
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !1266), !dbg !1267
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !1268), !dbg !1269
  %5 = load %struct.lua_State** %L, align 4, !dbg !1270
  %6 = call i8* @lua_tolstring(%struct.lua_State* %5, i32 -1, i32* %l), !dbg !1270
  store i8* %6, i8** %s, align 4, !dbg !1270
  %7 = load %struct.luaL_Buffer** %1, align 4, !dbg !1271
  %8 = getelementptr inbounds %struct.luaL_Buffer* %7, i32 0, i32 0, !dbg !1271
  %9 = load i8** %8, align 4, !dbg !1271
  %10 = load %struct.luaL_Buffer** %1, align 4, !dbg !1271
  %11 = getelementptr inbounds %struct.luaL_Buffer* %10, i32 0, i32 4, !dbg !1271
  %12 = getelementptr inbounds [8192 x i8]* %11, i32 0, i32 0, !dbg !1271
  %13 = icmp ne i8* %9, %12, !dbg !1271
  br i1 %13, label %14, label %16, !dbg !1271

; <label>:14                                      ; preds = %0
  %15 = load %struct.lua_State** %L, align 4, !dbg !1273
  call void @lua_rotate(%struct.lua_State* %15, i32 -2, i32 1), !dbg !1273
  br label %16, !dbg !1273

; <label>:16                                      ; preds = %14, %0
  %17 = load %struct.luaL_Buffer** %1, align 4, !dbg !1274
  %18 = load i8** %s, align 4, !dbg !1274
  %19 = load i32* %l, align 4, !dbg !1274
  call void @luaL_addlstring(%struct.luaL_Buffer* %17, i8* %18, i32 %19), !dbg !1274
  %20 = load %struct.lua_State** %L, align 4, !dbg !1275
  %21 = load %struct.luaL_Buffer** %1, align 4, !dbg !1275
  %22 = getelementptr inbounds %struct.luaL_Buffer* %21, i32 0, i32 0, !dbg !1275
  %23 = load i8** %22, align 4, !dbg !1275
  %24 = load %struct.luaL_Buffer** %1, align 4, !dbg !1275
  %25 = getelementptr inbounds %struct.luaL_Buffer* %24, i32 0, i32 4, !dbg !1275
  %26 = getelementptr inbounds [8192 x i8]* %25, i32 0, i32 0, !dbg !1275
  %27 = icmp ne i8* %23, %26, !dbg !1275
  %28 = select i1 %27, i32 -2, i32 -1, !dbg !1275
  call void @lua_rotate(%struct.lua_State* %20, i32 %28, i32 -1), !dbg !1275
  %29 = load %struct.lua_State** %L, align 4, !dbg !1275
  call void @lua_settop(%struct.lua_State* %29, i32 -2), !dbg !1275
  ret void, !dbg !1276
}

; Function Attrs: nounwind
define void @luaL_buffinit(%struct.lua_State* %L, %struct.luaL_Buffer* %B) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.luaL_Buffer*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1277), !dbg !1278
  store %struct.luaL_Buffer* %B, %struct.luaL_Buffer** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer** %2}, metadata !1279), !dbg !1280
  %3 = load %struct.lua_State** %1, align 4, !dbg !1281
  %4 = load %struct.luaL_Buffer** %2, align 4, !dbg !1281
  %5 = getelementptr inbounds %struct.luaL_Buffer* %4, i32 0, i32 3, !dbg !1281
  store %struct.lua_State* %3, %struct.lua_State** %5, align 4, !dbg !1281
  %6 = load %struct.luaL_Buffer** %2, align 4, !dbg !1282
  %7 = getelementptr inbounds %struct.luaL_Buffer* %6, i32 0, i32 4, !dbg !1282
  %8 = getelementptr inbounds [8192 x i8]* %7, i32 0, i32 0, !dbg !1282
  %9 = load %struct.luaL_Buffer** %2, align 4, !dbg !1282
  %10 = getelementptr inbounds %struct.luaL_Buffer* %9, i32 0, i32 0, !dbg !1282
  store i8* %8, i8** %10, align 4, !dbg !1282
  %11 = load %struct.luaL_Buffer** %2, align 4, !dbg !1283
  %12 = getelementptr inbounds %struct.luaL_Buffer* %11, i32 0, i32 2, !dbg !1283
  store i32 0, i32* %12, align 4, !dbg !1283
  %13 = load %struct.luaL_Buffer** %2, align 4, !dbg !1284
  %14 = getelementptr inbounds %struct.luaL_Buffer* %13, i32 0, i32 1, !dbg !1284
  store i32 8192, i32* %14, align 4, !dbg !1284
  ret void, !dbg !1285
}

; Function Attrs: nounwind
define i8* @luaL_buffinitsize(%struct.lua_State* %L, %struct.luaL_Buffer* %B, i32 %sz) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.luaL_Buffer*, align 4
  %3 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1286), !dbg !1287
  store %struct.luaL_Buffer* %B, %struct.luaL_Buffer** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer** %2}, metadata !1288), !dbg !1289
  store i32 %sz, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1290), !dbg !1291
  %4 = load %struct.lua_State** %1, align 4, !dbg !1292
  %5 = load %struct.luaL_Buffer** %2, align 4, !dbg !1292
  call void @luaL_buffinit(%struct.lua_State* %4, %struct.luaL_Buffer* %5), !dbg !1292
  %6 = load %struct.luaL_Buffer** %2, align 4, !dbg !1293
  %7 = load i32* %3, align 4, !dbg !1293
  %8 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %6, i32 %7), !dbg !1293
  ret i8* %8, !dbg !1293
}

; Function Attrs: nounwind
define i32 @luaL_ref(%struct.lua_State* %L, i32 %t) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %ref = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1294), !dbg !1295
  store i32 %t, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1296), !dbg !1297
  call void @llvm.dbg.declare(metadata !{i32* %ref}, metadata !1298), !dbg !1299
  %4 = load %struct.lua_State** %2, align 4, !dbg !1300
  %5 = call i32 @lua_type(%struct.lua_State* %4, i32 -1), !dbg !1300
  %6 = icmp eq i32 %5, 0, !dbg !1300
  br i1 %6, label %7, label %9, !dbg !1300

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %2, align 4, !dbg !1302
  call void @lua_settop(%struct.lua_State* %8, i32 -2), !dbg !1302
  store i32 -1, i32* %1, !dbg !1304
  br label %41, !dbg !1304

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %2, align 4, !dbg !1305
  %11 = load i32* %3, align 4, !dbg !1305
  %12 = call i32 @lua_absindex(%struct.lua_State* %10, i32 %11), !dbg !1305
  store i32 %12, i32* %3, align 4, !dbg !1305
  %13 = load %struct.lua_State** %2, align 4, !dbg !1306
  %14 = load i32* %3, align 4, !dbg !1306
  %15 = call i32 @lua_rawgeti(%struct.lua_State* %13, i32 %14, i64 0), !dbg !1306
  %16 = load %struct.lua_State** %2, align 4, !dbg !1307
  %17 = call i64 @lua_tointegerx(%struct.lua_State* %16, i32 -1, i32* null), !dbg !1307
  %18 = trunc i64 %17 to i32, !dbg !1307
  store i32 %18, i32* %ref, align 4, !dbg !1307
  %19 = load %struct.lua_State** %2, align 4, !dbg !1308
  call void @lua_settop(%struct.lua_State* %19, i32 -2), !dbg !1308
  %20 = load i32* %ref, align 4, !dbg !1309
  %21 = icmp ne i32 %20, 0, !dbg !1309
  br i1 %21, label %22, label %30, !dbg !1309

; <label>:22                                      ; preds = %9
  %23 = load %struct.lua_State** %2, align 4, !dbg !1311
  %24 = load i32* %3, align 4, !dbg !1311
  %25 = load i32* %ref, align 4, !dbg !1311
  %26 = sext i32 %25 to i64, !dbg !1311
  %27 = call i32 @lua_rawgeti(%struct.lua_State* %23, i32 %24, i64 %26), !dbg !1311
  %28 = load %struct.lua_State** %2, align 4, !dbg !1313
  %29 = load i32* %3, align 4, !dbg !1313
  call void @lua_rawseti(%struct.lua_State* %28, i32 %29, i64 0), !dbg !1313
  br label %35, !dbg !1314

; <label>:30                                      ; preds = %9
  %31 = load %struct.lua_State** %2, align 4, !dbg !1315
  %32 = load i32* %3, align 4, !dbg !1315
  %33 = call i32 @lua_rawlen(%struct.lua_State* %31, i32 %32), !dbg !1315
  %34 = add nsw i32 %33, 1, !dbg !1315
  store i32 %34, i32* %ref, align 4, !dbg !1315
  br label %35

; <label>:35                                      ; preds = %30, %22
  %36 = load %struct.lua_State** %2, align 4, !dbg !1316
  %37 = load i32* %3, align 4, !dbg !1316
  %38 = load i32* %ref, align 4, !dbg !1316
  %39 = sext i32 %38 to i64, !dbg !1316
  call void @lua_rawseti(%struct.lua_State* %36, i32 %37, i64 %39), !dbg !1316
  %40 = load i32* %ref, align 4, !dbg !1317
  store i32 %40, i32* %1, !dbg !1317
  br label %41, !dbg !1317

; <label>:41                                      ; preds = %35, %7
  %42 = load i32* %1, !dbg !1318
  ret i32 %42, !dbg !1318
}

declare i32 @lua_absindex(%struct.lua_State*, i32) #2

declare i32 @lua_rawgeti(%struct.lua_State*, i32, i64) #2

declare void @lua_rawseti(%struct.lua_State*, i32, i64) #2

declare i32 @lua_rawlen(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define void @luaL_unref(%struct.lua_State* %L, i32 %t, i32 %ref) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1319), !dbg !1320
  store i32 %t, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1321), !dbg !1322
  store i32 %ref, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1323), !dbg !1324
  %4 = load i32* %3, align 4, !dbg !1325
  %5 = icmp sge i32 %4, 0, !dbg !1325
  br i1 %5, label %6, label %22, !dbg !1325

; <label>:6                                       ; preds = %0
  %7 = load %struct.lua_State** %1, align 4, !dbg !1327
  %8 = load i32* %2, align 4, !dbg !1327
  %9 = call i32 @lua_absindex(%struct.lua_State* %7, i32 %8), !dbg !1327
  store i32 %9, i32* %2, align 4, !dbg !1327
  %10 = load %struct.lua_State** %1, align 4, !dbg !1329
  %11 = load i32* %2, align 4, !dbg !1329
  %12 = call i32 @lua_rawgeti(%struct.lua_State* %10, i32 %11, i64 0), !dbg !1329
  %13 = load %struct.lua_State** %1, align 4, !dbg !1330
  %14 = load i32* %2, align 4, !dbg !1330
  %15 = load i32* %3, align 4, !dbg !1330
  %16 = sext i32 %15 to i64, !dbg !1330
  call void @lua_rawseti(%struct.lua_State* %13, i32 %14, i64 %16), !dbg !1330
  %17 = load %struct.lua_State** %1, align 4, !dbg !1331
  %18 = load i32* %3, align 4, !dbg !1331
  %19 = sext i32 %18 to i64, !dbg !1331
  call void @lua_pushinteger(%struct.lua_State* %17, i64 %19), !dbg !1331
  %20 = load %struct.lua_State** %1, align 4, !dbg !1332
  %21 = load i32* %2, align 4, !dbg !1332
  call void @lua_rawseti(%struct.lua_State* %20, i32 %21, i64 0), !dbg !1332
  br label %22, !dbg !1333

; <label>:22                                      ; preds = %6, %0
  ret void, !dbg !1334
}

; Function Attrs: nounwind
define i32 @luaL_loadfilex(%struct.lua_State* %L, i8* %filename, i8* %mode) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %lf = alloca %struct.LoadF, align 4
  %status = alloca i32, align 4
  %readstatus = alloca i32, align 4
  %c = alloca i32, align 4
  %fnameindex = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1335), !dbg !1336
  store i8* %filename, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1337), !dbg !1338
  store i8* %mode, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !1339), !dbg !1340
  call void @llvm.dbg.declare(metadata !{%struct.LoadF* %lf}, metadata !1341), !dbg !1342
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !1343), !dbg !1344
  call void @llvm.dbg.declare(metadata !{i32* %readstatus}, metadata !1345), !dbg !1346
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !1347), !dbg !1348
  call void @llvm.dbg.declare(metadata !{i32* %fnameindex}, metadata !1349), !dbg !1350
  %5 = load %struct.lua_State** %2, align 4, !dbg !1351
  %6 = call i32 @lua_gettop(%struct.lua_State* %5), !dbg !1351
  %7 = add nsw i32 %6, 1, !dbg !1351
  store i32 %7, i32* %fnameindex, align 4, !dbg !1351
  %8 = load i8** %3, align 4, !dbg !1352
  %9 = icmp eq i8* %8, null, !dbg !1352
  br i1 %9, label %10, label %15, !dbg !1352

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_State** %2, align 4, !dbg !1354
  %12 = call i8* @lua_pushstring(%struct.lua_State* %11, i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0)), !dbg !1354
  %13 = load %struct._IO_FILE** @stdin, align 4, !dbg !1356
  %14 = getelementptr inbounds %struct.LoadF* %lf, i32 0, i32 1, !dbg !1356
  store %struct._IO_FILE* %13, %struct._IO_FILE** %14, align 4, !dbg !1356
  br label %30, !dbg !1357

; <label>:15                                      ; preds = %0
  %16 = load %struct.lua_State** %2, align 4, !dbg !1358
  %17 = load i8** %3, align 4, !dbg !1358
  %18 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %16, i8* getelementptr inbounds ([4 x i8]* @.str26, i32 0, i32 0), i8* %17), !dbg !1358
  %19 = load i8** %3, align 4, !dbg !1360
  %20 = call %struct._IO_FILE* @fopen64(i8* %19, i8* getelementptr inbounds ([2 x i8]* @.str27, i32 0, i32 0)), !dbg !1360
  %21 = getelementptr inbounds %struct.LoadF* %lf, i32 0, i32 1, !dbg !1360
  store %struct._IO_FILE* %20, %struct._IO_FILE** %21, align 4, !dbg !1360
  %22 = getelementptr inbounds %struct.LoadF* %lf, i32 0, i32 1, !dbg !1361
  %23 = load %struct._IO_FILE** %22, align 4, !dbg !1361
  %24 = icmp eq %struct._IO_FILE* %23, null, !dbg !1361
  br i1 %24, label %25, label %29, !dbg !1361

; <label>:25                                      ; preds = %15
  %26 = load %struct.lua_State** %2, align 4, !dbg !1363
  %27 = load i32* %fnameindex, align 4, !dbg !1363
  %28 = call i32 @errfile(%struct.lua_State* %26, i8* getelementptr inbounds ([5 x i8]* @.str28, i32 0, i32 0), i32 %27), !dbg !1363
  store i32 %28, i32* %1, !dbg !1363
  br label %103, !dbg !1363

; <label>:29                                      ; preds = %15
  br label %30

; <label>:30                                      ; preds = %29, %10
  %31 = call i32 @skipcomment(%struct.LoadF* %lf, i32* %c), !dbg !1365
  %32 = icmp ne i32 %31, 0, !dbg !1365
  br i1 %32, label %33, label %39, !dbg !1365

; <label>:33                                      ; preds = %30
  %34 = getelementptr inbounds %struct.LoadF* %lf, i32 0, i32 0, !dbg !1367
  %35 = load i32* %34, align 4, !dbg !1367
  %36 = add nsw i32 %35, 1, !dbg !1367
  store i32 %36, i32* %34, align 4, !dbg !1367
  %37 = getelementptr inbounds %struct.LoadF* %lf, i32 0, i32 2, !dbg !1367
  %38 = getelementptr inbounds [8192 x i8]* %37, i32 0, i32 %35, !dbg !1367
  store i8 10, i8* %38, align 1, !dbg !1367
  br label %39, !dbg !1367

; <label>:39                                      ; preds = %33, %30
  %40 = load i32* %c, align 4, !dbg !1368
  %41 = load i8* getelementptr inbounds ([5 x i8]* @.str29, i32 0, i32 0), align 1, !dbg !1368
  %42 = zext i8 %41 to i32, !dbg !1368
  %43 = icmp eq i32 %40, %42, !dbg !1368
  br i1 %43, label %44, label %62, !dbg !1368

; <label>:44                                      ; preds = %39
  %45 = load i8** %3, align 4, !dbg !1370
  %46 = icmp ne i8* %45, null, !dbg !1370
  br i1 %46, label %47, label %62, !dbg !1370

; <label>:47                                      ; preds = %44
  %48 = load i8** %3, align 4, !dbg !1372
  %49 = getelementptr inbounds %struct.LoadF* %lf, i32 0, i32 1, !dbg !1372
  %50 = load %struct._IO_FILE** %49, align 4, !dbg !1372
  %51 = call %struct._IO_FILE* @freopen64(i8* %48, i8* getelementptr inbounds ([3 x i8]* @.str30, i32 0, i32 0), %struct._IO_FILE* %50), !dbg !1372
  %52 = getelementptr inbounds %struct.LoadF* %lf, i32 0, i32 1, !dbg !1372
  store %struct._IO_FILE* %51, %struct._IO_FILE** %52, align 4, !dbg !1372
  %53 = getelementptr inbounds %struct.LoadF* %lf, i32 0, i32 1, !dbg !1374
  %54 = load %struct._IO_FILE** %53, align 4, !dbg !1374
  %55 = icmp eq %struct._IO_FILE* %54, null, !dbg !1374
  br i1 %55, label %56, label %60, !dbg !1374

; <label>:56                                      ; preds = %47
  %57 = load %struct.lua_State** %2, align 4, !dbg !1376
  %58 = load i32* %fnameindex, align 4, !dbg !1376
  %59 = call i32 @errfile(%struct.lua_State* %57, i8* getelementptr inbounds ([7 x i8]* @.str31, i32 0, i32 0), i32 %58), !dbg !1376
  store i32 %59, i32* %1, !dbg !1376
  br label %103, !dbg !1376

; <label>:60                                      ; preds = %47
  %61 = call i32 @skipcomment(%struct.LoadF* %lf, i32* %c), !dbg !1378
  br label %62, !dbg !1379

; <label>:62                                      ; preds = %60, %44, %39
  %63 = load i32* %c, align 4, !dbg !1380
  %64 = icmp ne i32 %63, -1, !dbg !1380
  br i1 %64, label %65, label %73, !dbg !1380

; <label>:65                                      ; preds = %62
  %66 = load i32* %c, align 4, !dbg !1382
  %67 = trunc i32 %66 to i8, !dbg !1382
  %68 = getelementptr inbounds %struct.LoadF* %lf, i32 0, i32 0, !dbg !1382
  %69 = load i32* %68, align 4, !dbg !1382
  %70 = add nsw i32 %69, 1, !dbg !1382
  store i32 %70, i32* %68, align 4, !dbg !1382
  %71 = getelementptr inbounds %struct.LoadF* %lf, i32 0, i32 2, !dbg !1382
  %72 = getelementptr inbounds [8192 x i8]* %71, i32 0, i32 %69, !dbg !1382
  store i8 %67, i8* %72, align 1, !dbg !1382
  br label %73, !dbg !1382

; <label>:73                                      ; preds = %65, %62
  %74 = load %struct.lua_State** %2, align 4, !dbg !1383
  %75 = bitcast %struct.LoadF* %lf to i8*, !dbg !1383
  %76 = load %struct.lua_State** %2, align 4, !dbg !1384
  %77 = call i8* @lua_tolstring(%struct.lua_State* %76, i32 -1, i32* null), !dbg !1384
  %78 = load i8** %4, align 4, !dbg !1383
  %79 = call i32 @lua_load(%struct.lua_State* %74, i8* (%struct.lua_State*, i8*, i32*)* @getF, i8* %75, i8* %77, i8* %78), !dbg !1383
  store i32 %79, i32* %status, align 4, !dbg !1383
  %80 = getelementptr inbounds %struct.LoadF* %lf, i32 0, i32 1, !dbg !1385
  %81 = load %struct._IO_FILE** %80, align 4, !dbg !1385
  %82 = call i32 @ferror(%struct._IO_FILE* %81) #4, !dbg !1385
  store i32 %82, i32* %readstatus, align 4, !dbg !1385
  %83 = load i8** %3, align 4, !dbg !1386
  %84 = icmp ne i8* %83, null, !dbg !1386
  br i1 %84, label %85, label %89, !dbg !1386

; <label>:85                                      ; preds = %73
  %86 = getelementptr inbounds %struct.LoadF* %lf, i32 0, i32 1, !dbg !1388
  %87 = load %struct._IO_FILE** %86, align 4, !dbg !1388
  %88 = call i32 @fclose(%struct._IO_FILE* %87), !dbg !1388
  br label %89, !dbg !1388

; <label>:89                                      ; preds = %85, %73
  %90 = load i32* %readstatus, align 4, !dbg !1390
  %91 = icmp ne i32 %90, 0, !dbg !1390
  br i1 %91, label %92, label %98, !dbg !1390

; <label>:92                                      ; preds = %89
  %93 = load %struct.lua_State** %2, align 4, !dbg !1392
  %94 = load i32* %fnameindex, align 4, !dbg !1392
  call void @lua_settop(%struct.lua_State* %93, i32 %94), !dbg !1392
  %95 = load %struct.lua_State** %2, align 4, !dbg !1394
  %96 = load i32* %fnameindex, align 4, !dbg !1394
  %97 = call i32 @errfile(%struct.lua_State* %95, i8* getelementptr inbounds ([5 x i8]* @.str32, i32 0, i32 0), i32 %96), !dbg !1394
  store i32 %97, i32* %1, !dbg !1394
  br label %103, !dbg !1394

; <label>:98                                      ; preds = %89
  %99 = load %struct.lua_State** %2, align 4, !dbg !1395
  %100 = load i32* %fnameindex, align 4, !dbg !1395
  call void @lua_rotate(%struct.lua_State* %99, i32 %100, i32 -1), !dbg !1395
  %101 = load %struct.lua_State** %2, align 4, !dbg !1395
  call void @lua_settop(%struct.lua_State* %101, i32 -2), !dbg !1395
  %102 = load i32* %status, align 4, !dbg !1396
  store i32 %102, i32* %1, !dbg !1396
  br label %103, !dbg !1396

; <label>:103                                     ; preds = %98, %92, %56, %25
  %104 = load i32* %1, !dbg !1397
  ret i32 %104, !dbg !1397
}

declare %struct._IO_FILE* @fopen64(i8*, i8*) #2

; Function Attrs: nounwind
define internal i32 @errfile(%struct.lua_State* %L, i8* %what, i32 %fnameindex) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %serr = alloca i8*, align 4
  %filename = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1398), !dbg !1399
  store i8* %what, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1400), !dbg !1401
  store i32 %fnameindex, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1402), !dbg !1403
  call void @llvm.dbg.declare(metadata !{i8** %serr}, metadata !1404), !dbg !1405
  %4 = call i32* @__errno_location() #1, !dbg !1406
  %5 = load i32* %4, align 4, !dbg !1406
  %6 = call i8* @strerror(i32 %5) #4, !dbg !1407
  store i8* %6, i8** %serr, align 4, !dbg !1407
  call void @llvm.dbg.declare(metadata !{i8** %filename}, metadata !1408), !dbg !1409
  %7 = load %struct.lua_State** %1, align 4, !dbg !1410
  %8 = load i32* %3, align 4, !dbg !1410
  %9 = call i8* @lua_tolstring(%struct.lua_State* %7, i32 %8, i32* null), !dbg !1410
  %10 = getelementptr inbounds i8* %9, i32 1, !dbg !1410
  store i8* %10, i8** %filename, align 4, !dbg !1410
  %11 = load %struct.lua_State** %1, align 4, !dbg !1411
  %12 = load i8** %2, align 4, !dbg !1411
  %13 = load i8** %filename, align 4, !dbg !1411
  %14 = load i8** %serr, align 4, !dbg !1411
  %15 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %11, i8* getelementptr inbounds ([17 x i8]* @.str48, i32 0, i32 0), i8* %12, i8* %13, i8* %14), !dbg !1411
  %16 = load %struct.lua_State** %1, align 4, !dbg !1412
  %17 = load i32* %3, align 4, !dbg !1412
  call void @lua_rotate(%struct.lua_State* %16, i32 %17, i32 -1), !dbg !1412
  %18 = load %struct.lua_State** %1, align 4, !dbg !1412
  call void @lua_settop(%struct.lua_State* %18, i32 -2), !dbg !1412
  ret i32 7, !dbg !1413
}

; Function Attrs: nounwind
define internal i32 @skipcomment(%struct.LoadF* %lf, i32* %cp) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.LoadF*, align 4
  %3 = alloca i32*, align 4
  %c = alloca i32, align 4
  store %struct.LoadF* %lf, %struct.LoadF** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LoadF** %2}, metadata !1414), !dbg !1415
  store i32* %cp, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !1416), !dbg !1417
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !1418), !dbg !1419
  %4 = load %struct.LoadF** %2, align 4, !dbg !1420
  %5 = call i32 @skipBOM(%struct.LoadF* %4), !dbg !1420
  %6 = load i32** %3, align 4, !dbg !1420
  store i32 %5, i32* %6, align 4, !dbg !1420
  store i32 %5, i32* %c, align 4, !dbg !1420
  %7 = load i32* %c, align 4, !dbg !1421
  %8 = icmp eq i32 %7, 35, !dbg !1421
  br i1 %8, label %9, label %29, !dbg !1421

; <label>:9                                       ; preds = %0
  br label %10, !dbg !1423

; <label>:10                                      ; preds = %21, %9
  %11 = load %struct.LoadF** %2, align 4, !dbg !1425
  %12 = getelementptr inbounds %struct.LoadF* %11, i32 0, i32 1, !dbg !1425
  %13 = load %struct._IO_FILE** %12, align 4, !dbg !1425
  %14 = call i32 @_IO_getc(%struct._IO_FILE* %13), !dbg !1425
  store i32 %14, i32* %c, align 4, !dbg !1425
  br label %15, !dbg !1427

; <label>:15                                      ; preds = %10
  %16 = load i32* %c, align 4, !dbg !1428
  %17 = icmp ne i32 %16, -1, !dbg !1428
  br i1 %17, label %18, label %21, !dbg !1428

; <label>:18                                      ; preds = %15
  %19 = load i32* %c, align 4, !dbg !1430
  %20 = icmp ne i32 %19, 10, !dbg !1430
  br label %21

; <label>:21                                      ; preds = %18, %15
  %22 = phi i1 [ false, %15 ], [ %20, %18 ]
  br i1 %22, label %10, label %23, !dbg !1432

; <label>:23                                      ; preds = %21
  %24 = load %struct.LoadF** %2, align 4, !dbg !1434
  %25 = getelementptr inbounds %struct.LoadF* %24, i32 0, i32 1, !dbg !1434
  %26 = load %struct._IO_FILE** %25, align 4, !dbg !1434
  %27 = call i32 @_IO_getc(%struct._IO_FILE* %26), !dbg !1434
  %28 = load i32** %3, align 4, !dbg !1434
  store i32 %27, i32* %28, align 4, !dbg !1434
  store i32 1, i32* %1, !dbg !1435
  br label %30, !dbg !1435

; <label>:29                                      ; preds = %0
  store i32 0, i32* %1, !dbg !1436
  br label %30, !dbg !1436

; <label>:30                                      ; preds = %29, %23
  %31 = load i32* %1, !dbg !1437
  ret i32 %31, !dbg !1437
}

declare %struct._IO_FILE* @freopen64(i8*, i8*, %struct._IO_FILE*) #2

declare i32 @lua_load(%struct.lua_State*, i8* (%struct.lua_State*, i8*, i32*)*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
define internal i8* @getF(%struct.lua_State* %L, i8* %ud, i32* %size) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32*, align 4
  %lf = alloca %struct.LoadF*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1438), !dbg !1439
  store i8* %ud, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1440), !dbg !1441
  store i32* %size, i32** %4, align 4
  call void @llvm.dbg.declare(metadata !{i32** %4}, metadata !1442), !dbg !1443
  call void @llvm.dbg.declare(metadata !{%struct.LoadF** %lf}, metadata !1444), !dbg !1445
  %5 = load i8** %3, align 4, !dbg !1446
  %6 = bitcast i8* %5 to %struct.LoadF*, !dbg !1446
  store %struct.LoadF* %6, %struct.LoadF** %lf, align 4, !dbg !1446
  %7 = load %struct.lua_State** %2, align 4, !dbg !1447
  %8 = load %struct.LoadF** %lf, align 4, !dbg !1448
  %9 = getelementptr inbounds %struct.LoadF* %8, i32 0, i32 0, !dbg !1448
  %10 = load i32* %9, align 4, !dbg !1448
  %11 = icmp sgt i32 %10, 0, !dbg !1448
  br i1 %11, label %12, label %19, !dbg !1448

; <label>:12                                      ; preds = %0
  %13 = load %struct.LoadF** %lf, align 4, !dbg !1450
  %14 = getelementptr inbounds %struct.LoadF* %13, i32 0, i32 0, !dbg !1450
  %15 = load i32* %14, align 4, !dbg !1450
  %16 = load i32** %4, align 4, !dbg !1450
  store i32 %15, i32* %16, align 4, !dbg !1450
  %17 = load %struct.LoadF** %lf, align 4, !dbg !1452
  %18 = getelementptr inbounds %struct.LoadF* %17, i32 0, i32 0, !dbg !1452
  store i32 0, i32* %18, align 4, !dbg !1452
  br label %35, !dbg !1453

; <label>:19                                      ; preds = %0
  %20 = load %struct.LoadF** %lf, align 4, !dbg !1454
  %21 = getelementptr inbounds %struct.LoadF* %20, i32 0, i32 1, !dbg !1454
  %22 = load %struct._IO_FILE** %21, align 4, !dbg !1454
  %23 = call i32 @feof(%struct._IO_FILE* %22) #4, !dbg !1454
  %24 = icmp ne i32 %23, 0, !dbg !1454
  br i1 %24, label %25, label %26, !dbg !1454

; <label>:25                                      ; preds = %19
  store i8* null, i8** %1, !dbg !1457
  br label %39, !dbg !1457

; <label>:26                                      ; preds = %19
  %27 = load %struct.LoadF** %lf, align 4, !dbg !1459
  %28 = getelementptr inbounds %struct.LoadF* %27, i32 0, i32 2, !dbg !1459
  %29 = getelementptr inbounds [8192 x i8]* %28, i32 0, i32 0, !dbg !1459
  %30 = load %struct.LoadF** %lf, align 4, !dbg !1459
  %31 = getelementptr inbounds %struct.LoadF* %30, i32 0, i32 1, !dbg !1459
  %32 = load %struct._IO_FILE** %31, align 4, !dbg !1459
  %33 = call i32 @fread(i8* %29, i32 1, i32 8192, %struct._IO_FILE* %32), !dbg !1459
  %34 = load i32** %4, align 4, !dbg !1459
  store i32 %33, i32* %34, align 4, !dbg !1459
  br label %35

; <label>:35                                      ; preds = %26, %12
  %36 = load %struct.LoadF** %lf, align 4, !dbg !1460
  %37 = getelementptr inbounds %struct.LoadF* %36, i32 0, i32 2, !dbg !1460
  %38 = getelementptr inbounds [8192 x i8]* %37, i32 0, i32 0, !dbg !1460
  store i8* %38, i8** %1, !dbg !1460
  br label %39, !dbg !1460

; <label>:39                                      ; preds = %35, %25
  %40 = load i8** %1, !dbg !1461
  ret i8* %40, !dbg !1461
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #0

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
define i32 @luaL_loadbufferx(%struct.lua_State* %L, i8* %buff, i32 %size, i8* %name, i8* %mode) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i8*, align 4
  %ls = alloca %struct.LoadS, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1462), !dbg !1463
  store i8* %buff, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1464), !dbg !1465
  store i32 %size, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1466), !dbg !1467
  store i8* %name, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !1468), !dbg !1469
  store i8* %mode, i8** %5, align 4
  call void @llvm.dbg.declare(metadata !{i8** %5}, metadata !1470), !dbg !1471
  call void @llvm.dbg.declare(metadata !{%struct.LoadS* %ls}, metadata !1472), !dbg !1478
  %6 = load i8** %2, align 4, !dbg !1479
  %7 = getelementptr inbounds %struct.LoadS* %ls, i32 0, i32 0, !dbg !1479
  store i8* %6, i8** %7, align 4, !dbg !1479
  %8 = load i32* %3, align 4, !dbg !1480
  %9 = getelementptr inbounds %struct.LoadS* %ls, i32 0, i32 1, !dbg !1480
  store i32 %8, i32* %9, align 4, !dbg !1480
  %10 = load %struct.lua_State** %1, align 4, !dbg !1481
  %11 = bitcast %struct.LoadS* %ls to i8*, !dbg !1481
  %12 = load i8** %4, align 4, !dbg !1481
  %13 = load i8** %5, align 4, !dbg !1481
  %14 = call i32 @lua_load(%struct.lua_State* %10, i8* (%struct.lua_State*, i8*, i32*)* @getS, i8* %11, i8* %12, i8* %13), !dbg !1481
  ret i32 %14, !dbg !1481
}

; Function Attrs: nounwind
define internal i8* @getS(%struct.lua_State* %L, i8* %ud, i32* %size) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32*, align 4
  %ls = alloca %struct.LoadS*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1482), !dbg !1483
  store i8* %ud, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1484), !dbg !1485
  store i32* %size, i32** %4, align 4
  call void @llvm.dbg.declare(metadata !{i32** %4}, metadata !1486), !dbg !1487
  call void @llvm.dbg.declare(metadata !{%struct.LoadS** %ls}, metadata !1488), !dbg !1490
  %5 = load i8** %3, align 4, !dbg !1491
  %6 = bitcast i8* %5 to %struct.LoadS*, !dbg !1491
  store %struct.LoadS* %6, %struct.LoadS** %ls, align 4, !dbg !1491
  %7 = load %struct.lua_State** %2, align 4, !dbg !1492
  %8 = load %struct.LoadS** %ls, align 4, !dbg !1493
  %9 = getelementptr inbounds %struct.LoadS* %8, i32 0, i32 1, !dbg !1493
  %10 = load i32* %9, align 4, !dbg !1493
  %11 = icmp eq i32 %10, 0, !dbg !1493
  br i1 %11, label %12, label %13, !dbg !1493

; <label>:12                                      ; preds = %0
  store i8* null, i8** %1, !dbg !1495
  br label %23, !dbg !1495

; <label>:13                                      ; preds = %0
  %14 = load %struct.LoadS** %ls, align 4, !dbg !1497
  %15 = getelementptr inbounds %struct.LoadS* %14, i32 0, i32 1, !dbg !1497
  %16 = load i32* %15, align 4, !dbg !1497
  %17 = load i32** %4, align 4, !dbg !1497
  store i32 %16, i32* %17, align 4, !dbg !1497
  %18 = load %struct.LoadS** %ls, align 4, !dbg !1498
  %19 = getelementptr inbounds %struct.LoadS* %18, i32 0, i32 1, !dbg !1498
  store i32 0, i32* %19, align 4, !dbg !1498
  %20 = load %struct.LoadS** %ls, align 4, !dbg !1499
  %21 = getelementptr inbounds %struct.LoadS* %20, i32 0, i32 0, !dbg !1499
  %22 = load i8** %21, align 4, !dbg !1499
  store i8* %22, i8** %1, !dbg !1499
  br label %23, !dbg !1499

; <label>:23                                      ; preds = %13, %12
  %24 = load i8** %1, !dbg !1500
  ret i8* %24, !dbg !1500
}

; Function Attrs: nounwind
define i32 @luaL_loadstring(%struct.lua_State* %L, i8* %s) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1501), !dbg !1502
  store i8* %s, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1503), !dbg !1504
  %3 = load %struct.lua_State** %1, align 4, !dbg !1505
  %4 = load i8** %2, align 4, !dbg !1505
  %5 = load i8** %2, align 4, !dbg !1505
  %6 = call i32 @strlen(i8* %5) #6, !dbg !1505
  %7 = load i8** %2, align 4, !dbg !1505
  %8 = call i32 @luaL_loadbufferx(%struct.lua_State* %3, i8* %4, i32 %6, i8* %7, i8* null), !dbg !1505
  ret i32 %8, !dbg !1505
}

; Function Attrs: nounwind
define i32 @luaL_getmetafield(%struct.lua_State* %L, i32 %obj, i8* %event) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  %tt = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1506), !dbg !1507
  store i32 %obj, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1508), !dbg !1509
  store i8* %event, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !1510), !dbg !1511
  %5 = load %struct.lua_State** %2, align 4, !dbg !1512
  %6 = load i32* %3, align 4, !dbg !1512
  %7 = call i32 @lua_getmetatable(%struct.lua_State* %5, i32 %6), !dbg !1512
  %8 = icmp ne i32 %7, 0, !dbg !1512
  br i1 %8, label %10, label %9, !dbg !1512

; <label>:9                                       ; preds = %0
  store i32 0, i32* %1, !dbg !1514
  br label %25, !dbg !1514

; <label>:10                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %tt}, metadata !1515), !dbg !1517
  %11 = load %struct.lua_State** %2, align 4, !dbg !1518
  %12 = load i8** %4, align 4, !dbg !1518
  %13 = call i8* @lua_pushstring(%struct.lua_State* %11, i8* %12), !dbg !1518
  %14 = load %struct.lua_State** %2, align 4, !dbg !1519
  %15 = call i32 @lua_rawget(%struct.lua_State* %14, i32 -2), !dbg !1519
  store i32 %15, i32* %tt, align 4, !dbg !1519
  %16 = load i32* %tt, align 4, !dbg !1520
  %17 = icmp eq i32 %16, 0, !dbg !1520
  br i1 %17, label %18, label %20, !dbg !1520

; <label>:18                                      ; preds = %10
  %19 = load %struct.lua_State** %2, align 4, !dbg !1522
  call void @lua_settop(%struct.lua_State* %19, i32 -3), !dbg !1522
  br label %23, !dbg !1522

; <label>:20                                      ; preds = %10
  %21 = load %struct.lua_State** %2, align 4, !dbg !1523
  call void @lua_rotate(%struct.lua_State* %21, i32 -2, i32 -1), !dbg !1523
  %22 = load %struct.lua_State** %2, align 4, !dbg !1523
  call void @lua_settop(%struct.lua_State* %22, i32 -2), !dbg !1523
  br label %23

; <label>:23                                      ; preds = %20, %18
  %24 = load i32* %tt, align 4, !dbg !1524
  store i32 %24, i32* %1, !dbg !1524
  br label %25, !dbg !1524

; <label>:25                                      ; preds = %23, %9
  %26 = load i32* %1, !dbg !1525
  ret i32 %26, !dbg !1525
}

declare i32 @lua_rawget(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define i32 @luaL_callmeta(%struct.lua_State* %L, i32 %obj, i8* %event) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1526), !dbg !1527
  store i32 %obj, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1528), !dbg !1529
  store i8* %event, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !1530), !dbg !1531
  %5 = load %struct.lua_State** %2, align 4, !dbg !1532
  %6 = load i32* %3, align 4, !dbg !1532
  %7 = call i32 @lua_absindex(%struct.lua_State* %5, i32 %6), !dbg !1532
  store i32 %7, i32* %3, align 4, !dbg !1532
  %8 = load %struct.lua_State** %2, align 4, !dbg !1533
  %9 = load i32* %3, align 4, !dbg !1533
  %10 = load i8** %4, align 4, !dbg !1533
  %11 = call i32 @luaL_getmetafield(%struct.lua_State* %8, i32 %9, i8* %10), !dbg !1533
  %12 = icmp eq i32 %11, 0, !dbg !1533
  br i1 %12, label %13, label %14, !dbg !1533

; <label>:13                                      ; preds = %0
  store i32 0, i32* %1, !dbg !1535
  br label %18, !dbg !1535

; <label>:14                                      ; preds = %0
  %15 = load %struct.lua_State** %2, align 4, !dbg !1536
  %16 = load i32* %3, align 4, !dbg !1536
  call void @lua_pushvalue(%struct.lua_State* %15, i32 %16), !dbg !1536
  %17 = load %struct.lua_State** %2, align 4, !dbg !1537
  call void @lua_callk(%struct.lua_State* %17, i32 1, i32 1, i32 0, i32 (%struct.lua_State*, i32, i32)* null), !dbg !1537
  store i32 1, i32* %1, !dbg !1538
  br label %18, !dbg !1538

; <label>:18                                      ; preds = %14, %13
  %19 = load i32* %1, !dbg !1539
  ret i32 %19, !dbg !1539
}

declare void @lua_callk(%struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*) #2

; Function Attrs: nounwind
define i64 @luaL_len(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %l = alloca i64, align 8
  %isnum = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1540), !dbg !1541
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1542), !dbg !1543
  call void @llvm.dbg.declare(metadata !{i64* %l}, metadata !1544), !dbg !1545
  call void @llvm.dbg.declare(metadata !{i32* %isnum}, metadata !1546), !dbg !1547
  %3 = load %struct.lua_State** %1, align 4, !dbg !1548
  %4 = load i32* %2, align 4, !dbg !1548
  call void @lua_len(%struct.lua_State* %3, i32 %4), !dbg !1548
  %5 = load %struct.lua_State** %1, align 4, !dbg !1549
  %6 = call i64 @lua_tointegerx(%struct.lua_State* %5, i32 -1, i32* %isnum), !dbg !1549
  store i64 %6, i64* %l, align 8, !dbg !1549
  %7 = load i32* %isnum, align 4, !dbg !1550
  %8 = icmp ne i32 %7, 0, !dbg !1550
  br i1 %8, label %12, label %9, !dbg !1550

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %1, align 4, !dbg !1552
  %11 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %10, i8* getelementptr inbounds ([32 x i8]* @.str33, i32 0, i32 0)), !dbg !1552
  br label %12, !dbg !1552

; <label>:12                                      ; preds = %9, %0
  %13 = load %struct.lua_State** %1, align 4, !dbg !1553
  call void @lua_settop(%struct.lua_State* %13, i32 -2), !dbg !1553
  %14 = load i64* %l, align 8, !dbg !1554
  ret i64 %14, !dbg !1554
}

declare void @lua_len(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define i8* @luaL_tolstring(%struct.lua_State* %L, i32 %idx, i32* %len) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1555), !dbg !1556
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1557), !dbg !1558
  store i32* %len, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !1559), !dbg !1560
  %4 = load %struct.lua_State** %1, align 4, !dbg !1561
  %5 = load i32* %2, align 4, !dbg !1561
  %6 = call i32 @luaL_callmeta(%struct.lua_State* %4, i32 %5, i8* getelementptr inbounds ([11 x i8]* @.str34, i32 0, i32 0)), !dbg !1561
  %7 = icmp ne i32 %6, 0, !dbg !1561
  br i1 %7, label %56, label %8, !dbg !1561

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_State** %1, align 4, !dbg !1563
  %10 = load i32* %2, align 4, !dbg !1563
  %11 = call i32 @lua_type(%struct.lua_State* %9, i32 %10), !dbg !1563
  switch i32 %11, label %44 [
    i32 3, label %12
    i32 4, label %30
    i32 1, label %33
    i32 0, label %41
  ], !dbg !1563

; <label>:12                                      ; preds = %8
  %13 = load %struct.lua_State** %1, align 4, !dbg !1565
  %14 = load i32* %2, align 4, !dbg !1565
  %15 = call i32 @lua_isinteger(%struct.lua_State* %13, i32 %14), !dbg !1565
  %16 = icmp ne i32 %15, 0, !dbg !1565
  br i1 %16, label %17, label %23, !dbg !1565

; <label>:17                                      ; preds = %12
  %18 = load %struct.lua_State** %1, align 4, !dbg !1569
  %19 = load %struct.lua_State** %1, align 4, !dbg !1570
  %20 = load i32* %2, align 4, !dbg !1570
  %21 = call i64 @lua_tointegerx(%struct.lua_State* %19, i32 %20, i32* null), !dbg !1570
  %22 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %18, i8* getelementptr inbounds ([3 x i8]* @.str35, i32 0, i32 0), i64 %21), !dbg !1569
  br label %29, !dbg !1569

; <label>:23                                      ; preds = %12
  %24 = load %struct.lua_State** %1, align 4, !dbg !1571
  %25 = load %struct.lua_State** %1, align 4, !dbg !1572
  %26 = load i32* %2, align 4, !dbg !1572
  %27 = call double @lua_tonumberx(%struct.lua_State* %25, i32 %26, i32* null), !dbg !1572
  %28 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %24, i8* getelementptr inbounds ([3 x i8]* @.str36, i32 0, i32 0), double %27), !dbg !1571
  br label %29

; <label>:29                                      ; preds = %23, %17
  br label %55, !dbg !1573

; <label>:30                                      ; preds = %8
  %31 = load %struct.lua_State** %1, align 4, !dbg !1574
  %32 = load i32* %2, align 4, !dbg !1574
  call void @lua_pushvalue(%struct.lua_State* %31, i32 %32), !dbg !1574
  br label %55, !dbg !1575

; <label>:33                                      ; preds = %8
  %34 = load %struct.lua_State** %1, align 4, !dbg !1576
  %35 = load %struct.lua_State** %1, align 4, !dbg !1577
  %36 = load i32* %2, align 4, !dbg !1577
  %37 = call i32 @lua_toboolean(%struct.lua_State* %35, i32 %36), !dbg !1577
  %38 = icmp ne i32 %37, 0, !dbg !1577
  %39 = select i1 %38, i8* getelementptr inbounds ([5 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str38, i32 0, i32 0), !dbg !1577
  %40 = call i8* @lua_pushstring(%struct.lua_State* %34, i8* %39), !dbg !1576
  br label %55, !dbg !1578

; <label>:41                                      ; preds = %8
  %42 = load %struct.lua_State** %1, align 4, !dbg !1579
  %43 = call i8* @lua_pushstring(%struct.lua_State* %42, i8* getelementptr inbounds ([4 x i8]* @.str39, i32 0, i32 0)), !dbg !1579
  br label %55, !dbg !1580

; <label>:44                                      ; preds = %8
  %45 = load %struct.lua_State** %1, align 4, !dbg !1581
  %46 = load %struct.lua_State** %1, align 4, !dbg !1582
  %47 = load %struct.lua_State** %1, align 4, !dbg !1582
  %48 = load i32* %2, align 4, !dbg !1582
  %49 = call i32 @lua_type(%struct.lua_State* %47, i32 %48), !dbg !1582
  %50 = call i8* @lua_typename(%struct.lua_State* %46, i32 %49), !dbg !1582
  %51 = load %struct.lua_State** %1, align 4, !dbg !1583
  %52 = load i32* %2, align 4, !dbg !1583
  %53 = call i8* @lua_topointer(%struct.lua_State* %51, i32 %52), !dbg !1583
  %54 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %45, i8* getelementptr inbounds ([7 x i8]* @.str40, i32 0, i32 0), i8* %50, i8* %53), !dbg !1581
  br label %55, !dbg !1584

; <label>:55                                      ; preds = %44, %41, %33, %30, %29
  br label %56, !dbg !1585

; <label>:56                                      ; preds = %55, %0
  %57 = load %struct.lua_State** %1, align 4, !dbg !1586
  %58 = load i32** %3, align 4, !dbg !1586
  %59 = call i8* @lua_tolstring(%struct.lua_State* %57, i32 -1, i32* %58), !dbg !1586
  ret i8* %59, !dbg !1586
}

declare i32 @lua_isinteger(%struct.lua_State*, i32) #2

declare i32 @lua_toboolean(%struct.lua_State*, i32) #2

declare i8* @lua_typename(%struct.lua_State*, i32) #2

declare i8* @lua_topointer(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define void @luaL_setfuncs(%struct.lua_State* %L, %struct.luaL_Reg* %l, i32 %nup) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.luaL_Reg*, align 4
  %3 = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1587), !dbg !1588
  store %struct.luaL_Reg* %l, %struct.luaL_Reg** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Reg** %2}, metadata !1589), !dbg !1590
  store i32 %nup, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1591), !dbg !1592
  %4 = load %struct.lua_State** %1, align 4, !dbg !1593
  %5 = load i32* %3, align 4, !dbg !1593
  call void @luaL_checkstack(%struct.lua_State* %4, i32 %5, i8* getelementptr inbounds ([18 x i8]* @.str41, i32 0, i32 0)), !dbg !1593
  br label %6, !dbg !1594

; <label>:6                                       ; preds = %36, %0
  %7 = load %struct.luaL_Reg** %2, align 4, !dbg !1596
  %8 = getelementptr inbounds %struct.luaL_Reg* %7, i32 0, i32 0, !dbg !1596
  %9 = load i8** %8, align 4, !dbg !1596
  %10 = icmp ne i8* %9, null, !dbg !1596
  br i1 %10, label %11, label %39, !dbg !1596

; <label>:11                                      ; preds = %6
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1599), !dbg !1601
  store i32 0, i32* %i, align 4, !dbg !1602
  br label %12, !dbg !1602

; <label>:12                                      ; preds = %20, %11
  %13 = load i32* %i, align 4, !dbg !1604
  %14 = load i32* %3, align 4, !dbg !1604
  %15 = icmp slt i32 %13, %14, !dbg !1604
  br i1 %15, label %16, label %23, !dbg !1604

; <label>:16                                      ; preds = %12
  %17 = load %struct.lua_State** %1, align 4, !dbg !1607
  %18 = load i32* %3, align 4, !dbg !1607
  %19 = sub nsw i32 0, %18, !dbg !1607
  call void @lua_pushvalue(%struct.lua_State* %17, i32 %19), !dbg !1607
  br label %20, !dbg !1607

; <label>:20                                      ; preds = %16
  %21 = load i32* %i, align 4, !dbg !1608
  %22 = add nsw i32 %21, 1, !dbg !1608
  store i32 %22, i32* %i, align 4, !dbg !1608
  br label %12, !dbg !1608

; <label>:23                                      ; preds = %12
  %24 = load %struct.lua_State** %1, align 4, !dbg !1609
  %25 = load %struct.luaL_Reg** %2, align 4, !dbg !1609
  %26 = getelementptr inbounds %struct.luaL_Reg* %25, i32 0, i32 1, !dbg !1609
  %27 = load i32 (%struct.lua_State*)** %26, align 4, !dbg !1609
  %28 = load i32* %3, align 4, !dbg !1609
  call void @lua_pushcclosure(%struct.lua_State* %24, i32 (%struct.lua_State*)* %27, i32 %28), !dbg !1609
  %29 = load %struct.lua_State** %1, align 4, !dbg !1610
  %30 = load i32* %3, align 4, !dbg !1610
  %31 = add nsw i32 %30, 2, !dbg !1610
  %32 = sub nsw i32 0, %31, !dbg !1610
  %33 = load %struct.luaL_Reg** %2, align 4, !dbg !1610
  %34 = getelementptr inbounds %struct.luaL_Reg* %33, i32 0, i32 0, !dbg !1610
  %35 = load i8** %34, align 4, !dbg !1610
  call void @lua_setfield(%struct.lua_State* %29, i32 %32, i8* %35), !dbg !1610
  br label %36, !dbg !1611

; <label>:36                                      ; preds = %23
  %37 = load %struct.luaL_Reg** %2, align 4, !dbg !1612
  %38 = getelementptr inbounds %struct.luaL_Reg* %37, i32 1, !dbg !1612
  store %struct.luaL_Reg* %38, %struct.luaL_Reg** %2, align 4, !dbg !1612
  br label %6, !dbg !1612

; <label>:39                                      ; preds = %6
  %40 = load %struct.lua_State** %1, align 4, !dbg !1613
  %41 = load i32* %3, align 4, !dbg !1613
  %42 = sub nsw i32 0, %41, !dbg !1613
  %43 = sub nsw i32 %42, 1, !dbg !1613
  call void @lua_settop(%struct.lua_State* %40, i32 %43), !dbg !1613
  ret void, !dbg !1614
}

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #2

; Function Attrs: nounwind
define i32 @luaL_getsubtable(%struct.lua_State* %L, i32 %idx, i8* %fname) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1615), !dbg !1616
  store i32 %idx, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1617), !dbg !1618
  store i8* %fname, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !1619), !dbg !1620
  %5 = load %struct.lua_State** %2, align 4, !dbg !1621
  %6 = load i32* %3, align 4, !dbg !1621
  %7 = load i8** %4, align 4, !dbg !1621
  %8 = call i32 @lua_getfield(%struct.lua_State* %5, i32 %6, i8* %7), !dbg !1621
  %9 = icmp eq i32 %8, 5, !dbg !1621
  br i1 %9, label %10, label %11, !dbg !1621

; <label>:10                                      ; preds = %0
  store i32 1, i32* %1, !dbg !1623
  br label %21, !dbg !1623

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_State** %2, align 4, !dbg !1624
  call void @lua_settop(%struct.lua_State* %12, i32 -2), !dbg !1624
  %13 = load %struct.lua_State** %2, align 4, !dbg !1626
  %14 = load i32* %3, align 4, !dbg !1626
  %15 = call i32 @lua_absindex(%struct.lua_State* %13, i32 %14), !dbg !1626
  store i32 %15, i32* %3, align 4, !dbg !1626
  %16 = load %struct.lua_State** %2, align 4, !dbg !1627
  call void @lua_createtable(%struct.lua_State* %16, i32 0, i32 0), !dbg !1627
  %17 = load %struct.lua_State** %2, align 4, !dbg !1628
  call void @lua_pushvalue(%struct.lua_State* %17, i32 -1), !dbg !1628
  %18 = load %struct.lua_State** %2, align 4, !dbg !1629
  %19 = load i32* %3, align 4, !dbg !1629
  %20 = load i8** %4, align 4, !dbg !1629
  call void @lua_setfield(%struct.lua_State* %18, i32 %19, i8* %20), !dbg !1629
  store i32 0, i32* %1, !dbg !1630
  br label %21, !dbg !1630

; <label>:21                                      ; preds = %11, %10
  %22 = load i32* %1, !dbg !1631
  ret i32 %22, !dbg !1631
}

; Function Attrs: nounwind
define void @luaL_requiref(%struct.lua_State* %L, i8* %modname, i32 (%struct.lua_State*)* %openf, i32 %glb) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32 (%struct.lua_State*)*, align 4
  %4 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1632), !dbg !1633
  store i8* %modname, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1634), !dbg !1635
  store i32 (%struct.lua_State*)* %openf, i32 (%struct.lua_State*)** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32 (%struct.lua_State*)** %3}, metadata !1636), !dbg !1637
  store i32 %glb, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1638), !dbg !1639
  %5 = load %struct.lua_State** %1, align 4, !dbg !1640
  %6 = call i32 @luaL_getsubtable(%struct.lua_State* %5, i32 -1001000, i8* getelementptr inbounds ([8 x i8]* @.str42, i32 0, i32 0)), !dbg !1640
  %7 = load %struct.lua_State** %1, align 4, !dbg !1641
  %8 = load i8** %2, align 4, !dbg !1641
  %9 = call i32 @lua_getfield(%struct.lua_State* %7, i32 -1, i8* %8), !dbg !1641
  %10 = load %struct.lua_State** %1, align 4, !dbg !1642
  %11 = call i32 @lua_toboolean(%struct.lua_State* %10, i32 -1), !dbg !1642
  %12 = icmp ne i32 %11, 0, !dbg !1642
  br i1 %12, label %24, label %13, !dbg !1642

; <label>:13                                      ; preds = %0
  %14 = load %struct.lua_State** %1, align 4, !dbg !1644
  call void @lua_settop(%struct.lua_State* %14, i32 -2), !dbg !1644
  %15 = load %struct.lua_State** %1, align 4, !dbg !1646
  %16 = load i32 (%struct.lua_State*)** %3, align 4, !dbg !1646
  call void @lua_pushcclosure(%struct.lua_State* %15, i32 (%struct.lua_State*)* %16, i32 0), !dbg !1646
  %17 = load %struct.lua_State** %1, align 4, !dbg !1647
  %18 = load i8** %2, align 4, !dbg !1647
  %19 = call i8* @lua_pushstring(%struct.lua_State* %17, i8* %18), !dbg !1647
  %20 = load %struct.lua_State** %1, align 4, !dbg !1648
  call void @lua_callk(%struct.lua_State* %20, i32 1, i32 1, i32 0, i32 (%struct.lua_State*, i32, i32)* null), !dbg !1648
  %21 = load %struct.lua_State** %1, align 4, !dbg !1649
  call void @lua_pushvalue(%struct.lua_State* %21, i32 -1), !dbg !1649
  %22 = load %struct.lua_State** %1, align 4, !dbg !1650
  %23 = load i8** %2, align 4, !dbg !1650
  call void @lua_setfield(%struct.lua_State* %22, i32 -3, i8* %23), !dbg !1650
  br label %24, !dbg !1651

; <label>:24                                      ; preds = %13, %0
  %25 = load %struct.lua_State** %1, align 4, !dbg !1652
  call void @lua_rotate(%struct.lua_State* %25, i32 -2, i32 -1), !dbg !1652
  %26 = load %struct.lua_State** %1, align 4, !dbg !1652
  call void @lua_settop(%struct.lua_State* %26, i32 -2), !dbg !1652
  %27 = load i32* %4, align 4, !dbg !1653
  %28 = icmp ne i32 %27, 0, !dbg !1653
  br i1 %28, label %29, label %33, !dbg !1653

; <label>:29                                      ; preds = %24
  %30 = load %struct.lua_State** %1, align 4, !dbg !1655
  call void @lua_pushvalue(%struct.lua_State* %30, i32 -1), !dbg !1655
  %31 = load %struct.lua_State** %1, align 4, !dbg !1657
  %32 = load i8** %2, align 4, !dbg !1657
  call void @lua_setglobal(%struct.lua_State* %31, i8* %32), !dbg !1657
  br label %33, !dbg !1658

; <label>:33                                      ; preds = %29, %24
  ret void, !dbg !1659
}

declare void @lua_setglobal(%struct.lua_State*, i8*) #2

; Function Attrs: nounwind
define i8* @luaL_gsub(%struct.lua_State* %L, i8* %s, i8* %p, i8* %r) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %wild = alloca i8*, align 4
  %l = alloca i32, align 4
  %b = alloca %struct.luaL_Buffer, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1660), !dbg !1661
  store i8* %s, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1662), !dbg !1663
  store i8* %p, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1664), !dbg !1665
  store i8* %r, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !1666), !dbg !1667
  call void @llvm.dbg.declare(metadata !{i8** %wild}, metadata !1668), !dbg !1669
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !1670), !dbg !1671
  %5 = load i8** %3, align 4, !dbg !1672
  %6 = call i32 @strlen(i8* %5) #6, !dbg !1672
  store i32 %6, i32* %l, align 4, !dbg !1672
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer* %b}, metadata !1673), !dbg !1674
  %7 = load %struct.lua_State** %1, align 4, !dbg !1675
  call void @luaL_buffinit(%struct.lua_State* %7, %struct.luaL_Buffer* %b), !dbg !1675
  br label %8, !dbg !1676

; <label>:8                                       ; preds = %13, %0
  %9 = load i8** %2, align 4, !dbg !1677
  %10 = load i8** %3, align 4, !dbg !1677
  %11 = call i8* @strstr(i8* %9, i8* %10) #6, !dbg !1677
  store i8* %11, i8** %wild, align 4, !dbg !1677
  %12 = icmp ne i8* %11, null, !dbg !1677
  br i1 %12, label %13, label %24, !dbg !1677

; <label>:13                                      ; preds = %8
  %14 = load i8** %2, align 4, !dbg !1679
  %15 = load i8** %wild, align 4, !dbg !1679
  %16 = load i8** %2, align 4, !dbg !1679
  %17 = ptrtoint i8* %15 to i32, !dbg !1679
  %18 = ptrtoint i8* %16 to i32, !dbg !1679
  %19 = sub i32 %17, %18, !dbg !1679
  call void @luaL_addlstring(%struct.luaL_Buffer* %b, i8* %14, i32 %19), !dbg !1679
  %20 = load i8** %4, align 4, !dbg !1681
  call void @luaL_addstring(%struct.luaL_Buffer* %b, i8* %20), !dbg !1681
  %21 = load i8** %wild, align 4, !dbg !1682
  %22 = load i32* %l, align 4, !dbg !1682
  %23 = getelementptr inbounds i8* %21, i32 %22, !dbg !1682
  store i8* %23, i8** %2, align 4, !dbg !1682
  br label %8, !dbg !1683

; <label>:24                                      ; preds = %8
  %25 = load i8** %2, align 4, !dbg !1684
  call void @luaL_addstring(%struct.luaL_Buffer* %b, i8* %25), !dbg !1684
  call void @luaL_pushresult(%struct.luaL_Buffer* %b), !dbg !1685
  %26 = load %struct.lua_State** %1, align 4, !dbg !1686
  %27 = call i8* @lua_tolstring(%struct.lua_State* %26, i32 -1, i32* null), !dbg !1686
  ret i8* %27, !dbg !1686
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind
define %struct.lua_State* @luaL_newstate() #0 {
  %L = alloca %struct.lua_State*, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L}, metadata !1687), !dbg !1688
  %1 = call %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i32, i32)* @l_alloc, i8* null), !dbg !1689
  store %struct.lua_State* %1, %struct.lua_State** %L, align 4, !dbg !1689
  %2 = load %struct.lua_State** %L, align 4, !dbg !1690
  %3 = icmp ne %struct.lua_State* %2, null, !dbg !1690
  br i1 %3, label %4, label %7, !dbg !1690

; <label>:4                                       ; preds = %0
  %5 = load %struct.lua_State** %L, align 4, !dbg !1692
  %6 = call i32 (%struct.lua_State*)* (%struct.lua_State*, i32 (%struct.lua_State*)*)* @lua_atpanic(%struct.lua_State* %5, i32 (%struct.lua_State*)* @panic), !dbg !1692
  br label %7, !dbg !1692

; <label>:7                                       ; preds = %4, %0
  %8 = load %struct.lua_State** %L, align 4, !dbg !1694
  ret %struct.lua_State* %8, !dbg !1694
}

declare %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i32, i32)*, i8*) #2

; Function Attrs: nounwind
define internal i8* @l_alloc(i8* %ud, i8* %ptr, i32 %osize, i32 %nsize) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %ud, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1695), !dbg !1696
  store i8* %ptr, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1697), !dbg !1698
  store i32 %osize, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1699), !dbg !1700
  store i32 %nsize, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !1701), !dbg !1702
  %6 = load i8** %2, align 4, !dbg !1703
  %7 = load i32* %4, align 4, !dbg !1704
  %8 = load i32* %5, align 4, !dbg !1705
  %9 = icmp eq i32 %8, 0, !dbg !1705
  br i1 %9, label %10, label %12, !dbg !1705

; <label>:10                                      ; preds = %0
  %11 = load i8** %3, align 4, !dbg !1707
  call void @free(i8* %11) #4, !dbg !1707
  store i8* null, i8** %1, !dbg !1709
  br label %16, !dbg !1709

; <label>:12                                      ; preds = %0
  %13 = load i8** %3, align 4, !dbg !1710
  %14 = load i32* %5, align 4, !dbg !1710
  %15 = call i8* @realloc(i8* %13, i32 %14) #4, !dbg !1710
  store i8* %15, i8** %1, !dbg !1710
  br label %16, !dbg !1710

; <label>:16                                      ; preds = %12, %10
  %17 = load i8** %1, !dbg !1711
  ret i8* %17, !dbg !1711
}

declare i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State*, i32 (%struct.lua_State*)*) #2

; Function Attrs: nounwind
define internal i32 @panic(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1712), !dbg !1713
  %2 = load %struct._IO_FILE** @stderr, align 4, !dbg !1714
  %3 = load %struct.lua_State** %1, align 4, !dbg !1714
  %4 = call i8* @lua_tolstring(%struct.lua_State* %3, i32 -1, i32* null), !dbg !1714
  %5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([50 x i8]* @.str46, i32 0, i32 0), i8* %4), !dbg !1714
  %6 = load %struct._IO_FILE** @stderr, align 4, !dbg !1714
  %7 = call i32 @fflush(%struct._IO_FILE* %6), !dbg !1714
  ret i32 0, !dbg !1715
}

; Function Attrs: nounwind
define void @luaL_checkversion_(%struct.lua_State* %L, double %ver, i32 %sz) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %v = alloca double*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1716), !dbg !1717
  store double %ver, double* %2, align 8
  call void @llvm.dbg.declare(metadata !{double* %2}, metadata !1718), !dbg !1719
  store i32 %sz, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1720), !dbg !1721
  call void @llvm.dbg.declare(metadata !{double** %v}, metadata !1722), !dbg !1725
  %4 = load %struct.lua_State** %1, align 4, !dbg !1726
  %5 = call double* @lua_version(%struct.lua_State* %4), !dbg !1726
  store double* %5, double** %v, align 4, !dbg !1726
  %6 = load i32* %3, align 4, !dbg !1727
  %7 = icmp ne i32 %6, 136, !dbg !1727
  br i1 %7, label %8, label %11, !dbg !1727

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_State** %1, align 4, !dbg !1729
  %10 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %9, i8* getelementptr inbounds ([49 x i8]* @.str43, i32 0, i32 0)), !dbg !1729
  br label %11, !dbg !1729

; <label>:11                                      ; preds = %8, %0
  %12 = load double** %v, align 4, !dbg !1730
  %13 = call double* @lua_version(%struct.lua_State* null), !dbg !1732
  %14 = icmp ne double* %12, %13, !dbg !1732
  br i1 %14, label %15, label %18, !dbg !1732

; <label>:15                                      ; preds = %11
  %16 = load %struct.lua_State** %1, align 4, !dbg !1733
  %17 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %16, i8* getelementptr inbounds ([26 x i8]* @.str44, i32 0, i32 0)), !dbg !1733
  br label %30, !dbg !1733

; <label>:18                                      ; preds = %11
  %19 = load double** %v, align 4, !dbg !1734
  %20 = load double* %19, align 8, !dbg !1734
  %21 = load double* %2, align 8, !dbg !1734
  %22 = fcmp une double %20, %21, !dbg !1734
  br i1 %22, label %23, label %29, !dbg !1734

; <label>:23                                      ; preds = %18
  %24 = load %struct.lua_State** %1, align 4, !dbg !1736
  %25 = load double* %2, align 8, !dbg !1736
  %26 = load double** %v, align 4, !dbg !1736
  %27 = load double* %26, align 8, !dbg !1736
  %28 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %24, i8* getelementptr inbounds ([54 x i8]* @.str45, i32 0, i32 0), double %25, double %27), !dbg !1736
  br label %29, !dbg !1736

; <label>:29                                      ; preds = %23, %18
  br label %30

; <label>:30                                      ; preds = %29, %15
  ret void, !dbg !1737
}

declare double* @lua_version(%struct.lua_State*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare void @free(i8*) #0

; Function Attrs: nounwind
declare i8* @realloc(i8*, i32) #0

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #0

declare i32 @fread(i8*, i32, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
define internal i32 @skipBOM(%struct.LoadF* %lf) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.LoadF*, align 4
  %p = alloca i8*, align 4
  %c = alloca i32, align 4
  store %struct.LoadF* %lf, %struct.LoadF** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LoadF** %2}, metadata !1738), !dbg !1739
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !1740), !dbg !1741
  store i8* getelementptr inbounds ([4 x i8]* @.str47, i32 0, i32 0), i8** %p, align 4, !dbg !1742
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !1743), !dbg !1744
  %3 = load %struct.LoadF** %2, align 4, !dbg !1745
  %4 = getelementptr inbounds %struct.LoadF* %3, i32 0, i32 0, !dbg !1745
  store i32 0, i32* %4, align 4, !dbg !1745
  br label %5, !dbg !1746

; <label>:5                                       ; preds = %31, %0
  %6 = load %struct.LoadF** %2, align 4, !dbg !1747
  %7 = getelementptr inbounds %struct.LoadF* %6, i32 0, i32 1, !dbg !1747
  %8 = load %struct._IO_FILE** %7, align 4, !dbg !1747
  %9 = call i32 @_IO_getc(%struct._IO_FILE* %8), !dbg !1747
  store i32 %9, i32* %c, align 4, !dbg !1747
  %10 = load i32* %c, align 4, !dbg !1749
  %11 = icmp eq i32 %10, -1, !dbg !1749
  br i1 %11, label %19, label %12, !dbg !1749

; <label>:12                                      ; preds = %5
  %13 = load i32* %c, align 4, !dbg !1751
  %14 = load i8** %p, align 4, !dbg !1751
  %15 = getelementptr inbounds i8* %14, i32 1, !dbg !1751
  store i8* %15, i8** %p, align 4, !dbg !1751
  %16 = load i8* %14, align 1, !dbg !1751
  %17 = zext i8 %16 to i32, !dbg !1751
  %18 = icmp ne i32 %13, %17, !dbg !1751
  br i1 %18, label %19, label %21, !dbg !1751

; <label>:19                                      ; preds = %12, %5
  %20 = load i32* %c, align 4, !dbg !1753
  store i32 %20, i32* %1, !dbg !1753
  br label %43, !dbg !1753

; <label>:21                                      ; preds = %12
  %22 = load i32* %c, align 4, !dbg !1756
  %23 = trunc i32 %22 to i8, !dbg !1756
  %24 = load %struct.LoadF** %2, align 4, !dbg !1756
  %25 = getelementptr inbounds %struct.LoadF* %24, i32 0, i32 0, !dbg !1756
  %26 = load i32* %25, align 4, !dbg !1756
  %27 = add nsw i32 %26, 1, !dbg !1756
  store i32 %27, i32* %25, align 4, !dbg !1756
  %28 = load %struct.LoadF** %2, align 4, !dbg !1756
  %29 = getelementptr inbounds %struct.LoadF* %28, i32 0, i32 2, !dbg !1756
  %30 = getelementptr inbounds [8192 x i8]* %29, i32 0, i32 %26, !dbg !1756
  store i8 %23, i8* %30, align 1, !dbg !1756
  br label %31, !dbg !1757

; <label>:31                                      ; preds = %21
  %32 = load i8** %p, align 4, !dbg !1758
  %33 = load i8* %32, align 1, !dbg !1758
  %34 = zext i8 %33 to i32, !dbg !1758
  %35 = icmp ne i32 %34, 0, !dbg !1758
  br i1 %35, label %5, label %36, !dbg !1758

; <label>:36                                      ; preds = %31
  %37 = load %struct.LoadF** %2, align 4, !dbg !1760
  %38 = getelementptr inbounds %struct.LoadF* %37, i32 0, i32 0, !dbg !1760
  store i32 0, i32* %38, align 4, !dbg !1760
  %39 = load %struct.LoadF** %2, align 4, !dbg !1761
  %40 = getelementptr inbounds %struct.LoadF* %39, i32 0, i32 1, !dbg !1761
  %41 = load %struct._IO_FILE** %40, align 4, !dbg !1761
  %42 = call i32 @_IO_getc(%struct._IO_FILE* %41), !dbg !1761
  store i32 %42, i32* %1, !dbg !1761
  br label %43, !dbg !1761

; <label>:43                                      ; preds = %36, %19
  %44 = load i32* %1, !dbg !1762
  ret i32 %44, !dbg !1762
}

declare i32 @_IO_getc(%struct._IO_FILE*) #2

declare i8* @lua_newuserdata(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal i32 @boxgc(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1763), !dbg !1764
  %2 = load %struct.lua_State** %1, align 4, !dbg !1765
  %3 = call i8* @resizebox(%struct.lua_State* %2, i32 1, i32 0), !dbg !1765
  ret i32 0, !dbg !1766
}

declare i8* (i8*, i8*, i32, i32)* @lua_getallocf(%struct.lua_State*, i8**) #2

declare i32 @lua_isnumber(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal i32 @findfield(%struct.lua_State* %L, i32 %objidx, i32 %level) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1767), !dbg !1768
  store i32 %objidx, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1769), !dbg !1770
  store i32 %level, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1771), !dbg !1772
  %5 = load i32* %4, align 4, !dbg !1773
  %6 = icmp eq i32 %5, 0, !dbg !1773
  br i1 %6, label %11, label %7, !dbg !1773

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %2, align 4, !dbg !1775
  %9 = call i32 @lua_type(%struct.lua_State* %8, i32 -1), !dbg !1775
  %10 = icmp eq i32 %9, 5, !dbg !1775
  br i1 %10, label %12, label %11, !dbg !1775

; <label>:11                                      ; preds = %7, %0
  store i32 0, i32* %1, !dbg !1777
  br label %48, !dbg !1777

; <label>:12                                      ; preds = %7
  %13 = load %struct.lua_State** %2, align 4, !dbg !1778
  call void @lua_pushnil(%struct.lua_State* %13), !dbg !1778
  br label %14, !dbg !1779

; <label>:14                                      ; preds = %45, %12
  %15 = load %struct.lua_State** %2, align 4, !dbg !1780
  %16 = call i32 @lua_next(%struct.lua_State* %15, i32 -2), !dbg !1780
  %17 = icmp ne i32 %16, 0, !dbg !1780
  br i1 %17, label %18, label %47, !dbg !1780

; <label>:18                                      ; preds = %14
  %19 = load %struct.lua_State** %2, align 4, !dbg !1782
  %20 = call i32 @lua_type(%struct.lua_State* %19, i32 -2), !dbg !1782
  %21 = icmp eq i32 %20, 4, !dbg !1782
  br i1 %21, label %22, label %45, !dbg !1782

; <label>:22                                      ; preds = %18
  %23 = load %struct.lua_State** %2, align 4, !dbg !1785
  %24 = load i32* %3, align 4, !dbg !1785
  %25 = call i32 @lua_rawequal(%struct.lua_State* %23, i32 %24, i32 -1), !dbg !1785
  %26 = icmp ne i32 %25, 0, !dbg !1785
  br i1 %26, label %27, label %29, !dbg !1785

; <label>:27                                      ; preds = %22
  %28 = load %struct.lua_State** %2, align 4, !dbg !1788
  call void @lua_settop(%struct.lua_State* %28, i32 -2), !dbg !1788
  store i32 1, i32* %1, !dbg !1790
  br label %48, !dbg !1790

; <label>:29                                      ; preds = %22
  %30 = load %struct.lua_State** %2, align 4, !dbg !1791
  %31 = load i32* %3, align 4, !dbg !1791
  %32 = load i32* %4, align 4, !dbg !1791
  %33 = sub nsw i32 %32, 1, !dbg !1791
  %34 = call i32 @findfield(%struct.lua_State* %30, i32 %31, i32 %33), !dbg !1791
  %35 = icmp ne i32 %34, 0, !dbg !1791
  br i1 %35, label %36, label %43, !dbg !1791

; <label>:36                                      ; preds = %29
  %37 = load %struct.lua_State** %2, align 4, !dbg !1793
  call void @lua_rotate(%struct.lua_State* %37, i32 -2, i32 -1), !dbg !1793
  %38 = load %struct.lua_State** %2, align 4, !dbg !1793
  call void @lua_settop(%struct.lua_State* %38, i32 -2), !dbg !1793
  %39 = load %struct.lua_State** %2, align 4, !dbg !1795
  %40 = call i8* @lua_pushstring(%struct.lua_State* %39, i8* getelementptr inbounds ([2 x i8]* @.str57, i32 0, i32 0)), !dbg !1795
  %41 = load %struct.lua_State** %2, align 4, !dbg !1796
  call void @lua_rotate(%struct.lua_State* %41, i32 -2, i32 1), !dbg !1796
  %42 = load %struct.lua_State** %2, align 4, !dbg !1797
  call void @lua_concat(%struct.lua_State* %42, i32 3), !dbg !1797
  store i32 1, i32* %1, !dbg !1798
  br label %48, !dbg !1798

; <label>:43                                      ; preds = %29
  br label %44

; <label>:44                                      ; preds = %43
  br label %45, !dbg !1799

; <label>:45                                      ; preds = %44, %18
  %46 = load %struct.lua_State** %2, align 4, !dbg !1800
  call void @lua_settop(%struct.lua_State* %46, i32 -2), !dbg !1800
  br label %14, !dbg !1801

; <label>:47                                      ; preds = %14
  store i32 0, i32* %1, !dbg !1802
  br label %48, !dbg !1802

; <label>:48                                      ; preds = %47, %36, %27, %11
  %49 = load i32* %1, !dbg !1803
  ret i32 %49, !dbg !1803
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i32) #3

declare void @lua_copy(%struct.lua_State*, i32, i32) #2

declare i32 @lua_next(%struct.lua_State*, i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533}
!xidane.function_declaration_type = !{!282, !534, !284, !535, !286, !535, !288, !536, !290, !537, !292, !536, !294, !538, !296, !539, !298, !540, !300, !541, !302, !542, !304, !543, !306, !544, !308, !545, !310, !546, !312, !541, !314, !547, !316, !535, !318, !542, !320, !548, !322, !541, !324, !549, !326, !550, !328, !551, !330, !552, !332, !543, !334, !542, !336, !541, !338, !553, !340, !537, !342, !541, !344, !554, !346, !552, !348, !555, !350, !556, !352, !552, !354, !557, !356, !555, !358, !542, !360, !558, !362, !559, !364, !546, !366, !552, !368, !553, !370, !552, !372, !553, !374, !541, !376, !560, !378, !561, !380, !562, !382, !563, !384, !564, !386, !565, !388, !541, !390, !566, !392, !567, !394, !568, !396, !569, !398, !570, !400, !571, !402, !572, !404, !573, !406, !553, !408, !574, !410, !572, !412, !575, !414, !576, !416, !552, !418, !552, !420, !577, !422, !578, !424, !579, !426, !553, !428, !580, !430, !581, !432, !582, !434, !583, !436, !584, !438, !585, !440, !586, !442, !587, !444, !587, !446, !588, !448, !586, !450, !543, !452, !542, !454, !552, !456, !542, !458, !589, !460, !564, !462, !541, !464, !546, !466, !552, !468, !552, !470, !590, !472, !591, !474, !592, !476, !593, !478, !542, !480, !594, !482, !554, !484, !595, !486, !596, !488, !597, !490, !598, !492, !599, !494, !600, !496, !535, !498, !601, !500, !602, !502, !603, !504, !587, !506, !604, !508, !605, !510, !587, !512, !606, !514, !607, !516, !608, !518, !569, !520, !535, !522, !609, !524, !552, !526, !557, !528, !610, !530, !553, !532, !552}
!xidane.function_declaration_filename = !{!282, !611, !284, !612, !286, !613, !288, !612, !290, !611, !292, !612, !294, !612, !296, !612, !298, !613, !300, !612, !302, !611, !304, !611, !306, !614, !308, !613, !310, !612, !312, !611, !314, !612, !316, !612, !318, !611, !320, !615, !322, !612, !324, !612, !326, !614, !328, !612, !330, !611, !332, !611, !334, !612, !336, !612, !338, !612, !340, !612, !342, !612, !344, !611, !346, !612, !348, !611, !350, !612, !352, !612, !354, !612, !356, !611, !358, !613, !360, !611, !362, !611, !364, !611, !366, !612, !368, !611, !370, !612, !372, !613, !374, !611, !376, !614, !378, !611, !380, !612, !382, !611, !384, !611, !386, !612, !388, !613, !390, !611, !392, !611, !394, !613, !396, !613, !398, !611, !400, !611, !402, !611, !404, !612, !406, !612, !408, !611, !410, !611, !412, !611, !414, !611, !416, !611, !418, !612, !420, !612, !422, !612, !424, !612, !426, !611, !428, !611, !430, !616, !432, !613, !434, !613, !436, !616, !438, !612, !440, !613, !442, !616, !444, !616, !446, !611, !448, !613, !450, !611, !452, !611, !454, !612, !456, !611, !458, !612, !460, !611, !462, !612, !464, !611, !466, !612, !468, !612, !470, !612, !472, !612, !474, !611, !476, !612, !478, !611, !480, !611, !482, !612, !484, !611, !486, !614, !488, !611, !490, !612, !492, !613, !494, !612, !496, !613, !498, !611, !500, !612, !502, !616, !504, !616, !506, !617, !508, !617, !510, !616, !512, !616, !514, !613, !516, !618, !518, !612, !520, !613, !522, !612, !524, !612, !526, !613, !528, !614, !530, !612, !532, !612}
!xidane.ExternC = !{!282, !284, !288, !290, !292, !294, !296, !300, !302, !304, !306, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !360, !362, !364, !366, !368, !370, !374, !376, !378, !380, !382, !384, !386, !390, !392, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !436, !438, !442, !444, !446, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !494, !498, !500, !502, !504, !506, !508, !510, !512, !516, !518, !522, !524, !528, !530, !532}
!llvm.module.flags = !{!619, !620, !621, !622}
!llvm.ident = !{!623}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lauxlib.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clauxlib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !17, metadata !20, metadata !23, metadata !27, metadata !28, metadata !31, metadata !34, metadata !37, metadata !41, metadata !42, metadata !47, metadata !50, metadata !53, metadata !54, metadata !61, metadata !64, metadata !69, metadata !72, metadata !77, metadata !80, metadata !97, metadata !100, metadata !103, metadata !106, metadata !109, metadata !110, metadata !113, metadata !116, metadata !117, metadata !118, metadata !121, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !143, metadata !144, metadata !147, metadata !150, metadata !153, metadata !156, metadata !157, metadata !160, metadata !163, metadata !164, metadata !232, metadata !235, metadata !238, metadata !241, metadata !242, metadata !245, metadata !246, metadata !247, metadata !248, metadata !275, metadata !278, metadata !281}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_traceback", metadata !"luaL_traceback", metadata !"", i32 126, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_State*, i8*, i32)* @luaL_traceback, null, null, metadata !2, i32 127} ; [ DW_TAG_subprogram ] [line 126] [def] [scope 127] [luaL_traceback]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !13, metadata !16}
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!10 = metadata !{i32 786454, metadata !11, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!11 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!12 = metadata !{i32 786451, metadata !11, null, metadata !"lua_State", i32 56, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 56, size 0, align 0, offset 0] [decl] [from ]
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!14 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!15 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!16 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!17 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_argerror", metadata !"luaL_argerror", metadata !"", i32 165, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i8*)* @luaL_argerror, null, null, metadata !2, i32 165} ; [ DW_TAG_subprogram ] [line 165] [def] [luaL_argerror]
!18 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!19 = metadata !{metadata !16, metadata !9, metadata !16, metadata !13}
!20 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_where", metadata !"luaL_where", metadata !"", i32 206, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @luaL_where, null, null, metadata !2, i32 206} ; [ DW_TAG_subprogram ] [line 206] [def] [luaL_where]
!21 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!22 = metadata !{null, metadata !9, metadata !16}
!23 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_error", metadata !"luaL_error", metadata !"", i32 224, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*, ...)* @luaL_error, null, null, metadata !2, i32 224} ; [ DW_TAG_subprogram ] [line 224] [def] [luaL_error]
!24 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{metadata !16, metadata !9, metadata !13, metadata !26}
!26 = metadata !{i32 786456}                      ; [ DW_TAG_unspecified_parameters ]
!27 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_fileresult", metadata !"luaL_fileresult", metadata !"", i32 235, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i8*)* @luaL_fileresult, null, null, metadata !2, i32 235} ; [ DW_TAG_subprogram ] [line 235] [def] [luaL_fileresult]
!28 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_execresult", metadata !"luaL_execresult", metadata !"", i32 275, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @luaL_execresult, null, null, metadata !2, i32 275} ; [ DW_TAG_subprogram ] [line 275] [def] [luaL_execresult]
!29 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!30 = metadata !{metadata !16, metadata !9, metadata !16}
!31 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_newmetatable", metadata !"luaL_newmetatable", metadata !"", i32 300, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*)* @luaL_newmetatable, null, null, metadata !2, i32 300} ; [ DW_TAG_subprogram ] [line 300] [def] [luaL_newmetatable]
!32 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{metadata !16, metadata !9, metadata !13}
!34 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_setmetatable", metadata !"luaL_setmetatable", metadata !"", i32 313, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*)* @luaL_setmetatable, null, null, metadata !2, i32 313} ; [ DW_TAG_subprogram ] [line 313] [def] [luaL_setmetatable]
!35 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{null, metadata !9, metadata !13}
!37 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_testudata", metadata !"luaL_testudata", metadata !"", i32 319, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i32, i8*)* @luaL_testudata, null, null, metadata !2, i32 319} ; [ DW_TAG_subprogram ] [line 319] [def] [luaL_testudata]
!38 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!39 = metadata !{metadata !40, metadata !9, metadata !16, metadata !13}
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!41 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_checkudata", metadata !"luaL_checkudata", metadata !"", i32 334, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i32, i8*)* @luaL_checkudata, null, null, metadata !2, i32 334} ; [ DW_TAG_subprogram ] [line 334] [def] [luaL_checkudata]
!42 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_checkoption", metadata !"luaL_checkoption", metadata !"", i32 349, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i8*, i8**)* @luaL_checkoption, null, null, metadata !2, i32 350} ; [ DW_TAG_subprogram ] [line 349] [def] [scope 350] [luaL_checkoption]
!43 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!44 = metadata !{metadata !16, metadata !9, metadata !16, metadata !13, metadata !45}
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!46 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!47 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_checkstack", metadata !"luaL_checkstack", metadata !"", i32 369, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32, i8*)* @luaL_checkstack, null, null, metadata !2, i32 369} ; [ DW_TAG_subprogram ] [line 369] [def] [luaL_checkstack]
!48 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!49 = metadata !{null, metadata !9, metadata !16, metadata !13}
!50 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_checktype", metadata !"luaL_checktype", metadata !"", i32 379, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32, i32)* @luaL_checktype, null, null, metadata !2, i32 379} ; [ DW_TAG_subprogram ] [line 379] [def] [luaL_checktype]
!51 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{null, metadata !9, metadata !16, metadata !16}
!53 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_checkany", metadata !"luaL_checkany", metadata !"", i32 385, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @luaL_checkany, null, null, metadata !2, i32 385} ; [ DW_TAG_subprogram ] [line 385] [def] [luaL_checkany]
!54 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_checklstring", metadata !"luaL_checklstring", metadata !"", i32 391, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i32, i32*)* @luaL_checklstring, null, null, metadata !2, i32 391} ; [ DW_TAG_subprogram ] [line 391] [def] [luaL_checklstring]
!55 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!56 = metadata !{metadata !13, metadata !9, metadata !16, metadata !57}
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from size_t]
!58 = metadata !{i32 786454, metadata !59, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!59 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!60 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!61 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_optlstring", metadata !"luaL_optlstring", metadata !"", i32 398, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i32, i8*, i32*)* @luaL_optlstring, null, null, metadata !2, i32 399} ; [ DW_TAG_subprogram ] [line 398] [def] [scope 399] [luaL_optlstring]
!62 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!63 = metadata !{metadata !13, metadata !9, metadata !16, metadata !13, metadata !57}
!64 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_checknumber", metadata !"luaL_checknumber", metadata !"", i32 409, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (%struct.lua_State*, i32)* @luaL_checknumber, null, null, metadata !2, i32 409} ; [ DW_TAG_subprogram ] [line 409] [def] [luaL_checknumber]
!65 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{metadata !67, metadata !9, metadata !16}
!67 = metadata !{i32 786454, metadata !11, null, metadata !"lua_Number", i32 89, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [lua_Number] [line 89, size 0, align 0, offset 0] [from double]
!68 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!69 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_optnumber", metadata !"luaL_optnumber", metadata !"", i32 418, metadata !70, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (%struct.lua_State*, i32, double)* @luaL_optnumber, null, null, metadata !2, i32 418} ; [ DW_TAG_subprogram ] [line 418] [def] [luaL_optnumber]
!70 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!71 = metadata !{metadata !67, metadata !9, metadata !16, metadata !67}
!72 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_checkinteger", metadata !"luaL_checkinteger", metadata !"", i32 431, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.lua_State*, i32)* @luaL_checkinteger, null, null, metadata !2, i32 431} ; [ DW_TAG_subprogram ] [line 431] [def] [luaL_checkinteger]
!73 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!74 = metadata !{metadata !75, metadata !9, metadata !16}
!75 = metadata !{i32 786454, metadata !11, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!76 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!77 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_optinteger", metadata !"luaL_optinteger", metadata !"", i32 441, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.lua_State*, i32, i64)* @luaL_optinteger, null, null, metadata !2, i32 442} ; [ DW_TAG_subprogram ] [line 441] [def] [scope 442] [luaL_optinteger]
!78 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!79 = metadata !{metadata !75, metadata !9, metadata !16, metadata !75}
!80 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_prepbuffsize", metadata !"luaL_prepbuffsize", metadata !"", i32 506, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.luaL_Buffer*, i32)* @luaL_prepbuffsize, null, null, metadata !2, i32 506} ; [ DW_TAG_subprogram ] [line 506] [def] [luaL_prepbuffsize]
!81 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!82 = metadata !{metadata !83, metadata !84, metadata !58}
!83 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!84 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from luaL_Buffer]
!85 = metadata !{i32 786454, metadata !86, null, metadata !"luaL_Buffer", i32 146, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [luaL_Buffer] [line 146, size 0, align 0, offset 0] [from luaL_Buffer]
!86 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!87 = metadata !{i32 786451, metadata !86, null, metadata !"luaL_Buffer", i32 140, i64 65664, i64 32, i32 0, i32 0, null, metadata !88, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Buffer] [line 140, size 65664, align 32, offset 0] [def] [from ]
!88 = metadata !{metadata !89, metadata !90, metadata !91, metadata !92, metadata !93}
!89 = metadata !{i32 786445, metadata !86, metadata !87, metadata !"b", i32 141, i64 32, i64 32, i64 0, i32 0, metadata !83} ; [ DW_TAG_member ] [b] [line 141, size 32, align 32, offset 0] [from ]
!90 = metadata !{i32 786445, metadata !86, metadata !87, metadata !"size", i32 142, i64 32, i64 32, i64 32, i32 0, metadata !58} ; [ DW_TAG_member ] [size] [line 142, size 32, align 32, offset 32] [from size_t]
!91 = metadata !{i32 786445, metadata !86, metadata !87, metadata !"n", i32 143, i64 32, i64 32, i64 64, i32 0, metadata !58} ; [ DW_TAG_member ] [n] [line 143, size 32, align 32, offset 64] [from size_t]
!92 = metadata !{i32 786445, metadata !86, metadata !87, metadata !"L", i32 144, i64 32, i64 32, i64 96, i32 0, metadata !9} ; [ DW_TAG_member ] [L] [line 144, size 32, align 32, offset 96] [from ]
!93 = metadata !{i32 786445, metadata !86, metadata !87, metadata !"initb", i32 145, i64 65536, i64 8, i64 128, i32 0, metadata !94} ; [ DW_TAG_member ] [initb] [line 145, size 65536, align 8, offset 128] [from ]
!94 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 65536, i64 8, i32 0, i32 0, metadata !15, metadata !95, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 65536, align 8, offset 0] [from char]
!95 = metadata !{metadata !96}
!96 = metadata !{i32 786465, i64 0, i64 8192}     ; [ DW_TAG_subrange_type ] [0, 8191]
!97 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_addlstring", metadata !"luaL_addlstring", metadata !"", i32 529, metadata !98, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.luaL_Buffer*, i8*, i32)* @luaL_addlstring, null, null, metadata !2, i32 529} ; [ DW_TAG_subprogram ] [line 529] [def] [luaL_addlstring]
!98 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!99 = metadata !{null, metadata !84, metadata !13, metadata !58}
!100 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_addstring", metadata !"luaL_addstring", metadata !"", i32 538, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.luaL_Buffer*, i8*)* @luaL_addstring, null, null, metadata !2, i32 538} ; [ DW_TAG_subprogram ] [line 538] [def] [luaL_addstring]
!101 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!102 = metadata !{null, metadata !84, metadata !13}
!103 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_pushresult", metadata !"luaL_pushresult", metadata !"", i32 543, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.luaL_Buffer*)* @luaL_pushresult, null, null, metadata !2, i32 543} ; [ DW_TAG_subprogram ] [line 543] [def] [luaL_pushresult]
!104 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = metadata !{null, metadata !84}
!106 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_pushresultsize", metadata !"luaL_pushresultsize", metadata !"", i32 553, metadata !107, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.luaL_Buffer*, i32)* @luaL_pushresultsize, null, null, metadata !2, i32 553} ; [ DW_TAG_subprogram ] [line 553] [def] [luaL_pushresultsize]
!107 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!108 = metadata !{null, metadata !84, metadata !58}
!109 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_addvalue", metadata !"luaL_addvalue", metadata !"", i32 559, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.luaL_Buffer*)* @luaL_addvalue, null, null, metadata !2, i32 559} ; [ DW_TAG_subprogram ] [line 559] [def] [luaL_addvalue]
!110 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_buffinit", metadata !"luaL_buffinit", metadata !"", i32 570, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.luaL_Buffer*)* @luaL_buffinit, null, null, metadata !2, i32 570} ; [ DW_TAG_subprogram ] [line 570] [def] [luaL_buffinit]
!111 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!112 = metadata !{null, metadata !9, metadata !84}
!113 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_buffinitsize", metadata !"luaL_buffinitsize", metadata !"", i32 578, metadata !114, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, %struct.luaL_Buffer*, i32)* @luaL_buffinitsize, null, null, metadata !2, i32 578} ; [ DW_TAG_subprogram ] [line 578] [def] [luaL_buffinitsize]
!114 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!115 = metadata !{metadata !83, metadata !9, metadata !84, metadata !58}
!116 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_ref", metadata !"luaL_ref", metadata !"", i32 596, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @luaL_ref, null, null, metadata !2, i32 596} ; [ DW_TAG_subprogram ] [line 596] [def] [luaL_ref]
!117 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_unref", metadata !"luaL_unref", metadata !"", i32 617, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32, i32)* @luaL_unref, null, null, metadata !2, i32 617} ; [ DW_TAG_subprogram ] [line 617] [def] [luaL_unref]
!118 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_loadfilex", metadata !"luaL_loadfilex", metadata !"", i32 704, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*, i8*)* @luaL_loadfilex, null, null, metadata !2, i32 705} ; [ DW_TAG_subprogram ] [line 704] [def] [scope 705] [luaL_loadfilex]
!119 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!120 = metadata !{metadata !16, metadata !9, metadata !13, metadata !13}
!121 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_loadbufferx", metadata !"luaL_loadbufferx", metadata !"", i32 756, metadata !122, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*, i32, i8*, i8*)* @luaL_loadbufferx, null, null, metadata !2, i32 757} ; [ DW_TAG_subprogram ] [line 756] [def] [scope 757] [luaL_loadbufferx]
!122 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!123 = metadata !{metadata !16, metadata !9, metadata !13, metadata !58, metadata !13, metadata !13}
!124 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_loadstring", metadata !"luaL_loadstring", metadata !"", i32 765, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*)* @luaL_loadstring, null, null, metadata !2, i32 765} ; [ DW_TAG_subprogram ] [line 765] [def] [luaL_loadstring]
!125 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_getmetafield", metadata !"luaL_getmetafield", metadata !"", i32 773, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i8*)* @luaL_getmetafield, null, null, metadata !2, i32 773} ; [ DW_TAG_subprogram ] [line 773] [def] [luaL_getmetafield]
!126 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_callmeta", metadata !"luaL_callmeta", metadata !"", i32 789, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i8*)* @luaL_callmeta, null, null, metadata !2, i32 789} ; [ DW_TAG_subprogram ] [line 789] [def] [luaL_callmeta]
!127 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_len", metadata !"luaL_len", metadata !"", i32 799, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.lua_State*, i32)* @luaL_len, null, null, metadata !2, i32 799} ; [ DW_TAG_subprogram ] [line 799] [def] [luaL_len]
!128 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_tolstring", metadata !"luaL_tolstring", metadata !"", i32 811, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i32, i32*)* @luaL_tolstring, null, null, metadata !2, i32 811} ; [ DW_TAG_subprogram ] [line 811] [def] [luaL_tolstring]
!129 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_setfuncs", metadata !"luaL_setfuncs", metadata !"", i32 926, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.luaL_Reg*, i32)* @luaL_setfuncs, null, null, metadata !2, i32 926} ; [ DW_TAG_subprogram ] [line 926] [def] [luaL_setfuncs]
!130 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!131 = metadata !{null, metadata !9, metadata !132, metadata !16}
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !133} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!133 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !134} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from luaL_Reg]
!134 = metadata !{i32 786454, metadata !86, null, metadata !"luaL_Reg", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !135} ; [ DW_TAG_typedef ] [luaL_Reg] [line 26, size 0, align 0, offset 0] [from luaL_Reg]
!135 = metadata !{i32 786451, metadata !86, null, metadata !"luaL_Reg", i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !136, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Reg] [line 23, size 64, align 32, offset 0] [def] [from ]
!136 = metadata !{metadata !137, metadata !138}
!137 = metadata !{i32 786445, metadata !86, metadata !135, metadata !"name", i32 24, i64 32, i64 32, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [name] [line 24, size 32, align 32, offset 0] [from ]
!138 = metadata !{i32 786445, metadata !86, metadata !135, metadata !"func", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !139} ; [ DW_TAG_member ] [func] [line 25, size 32, align 32, offset 32] [from lua_CFunction]
!139 = metadata !{i32 786454, metadata !11, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!140 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!141 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !142, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!142 = metadata !{metadata !16, metadata !9}
!143 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_getsubtable", metadata !"luaL_getsubtable", metadata !"", i32 943, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i8*)* @luaL_getsubtable, null, null, metadata !2, i32 943} ; [ DW_TAG_subprogram ] [line 943] [def] [luaL_getsubtable]
!144 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_requiref", metadata !"luaL_requiref", metadata !"", i32 963, metadata !145, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*, i32 (%struct.lua_State*)*, i32)* @luaL_requiref, null, null, metadata !2, i32 964} ; [ DW_TAG_subprogram ] [line 963] [def] [scope 964] [luaL_requiref]
!145 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !146, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!146 = metadata !{null, metadata !9, metadata !13, metadata !139, metadata !16}
!147 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_gsub", metadata !"luaL_gsub", metadata !"", i32 983, metadata !148, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*, i8*, i8*)* @luaL_gsub, null, null, metadata !2, i32 984} ; [ DW_TAG_subprogram ] [line 983] [def] [scope 984] [luaL_gsub]
!148 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !149, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!149 = metadata !{metadata !13, metadata !9, metadata !13, metadata !13, metadata !13}
!150 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_newstate", metadata !"luaL_newstate", metadata !"", i32 1018, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.lua_State* ()* @luaL_newstate, null, null, metadata !2, i32 1018} ; [ DW_TAG_subprogram ] [line 1018] [def] [luaL_newstate]
!151 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!152 = metadata !{metadata !9}
!153 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_checkversion_", metadata !"luaL_checkversion_", metadata !"", i32 1025, metadata !154, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, double, i32)* @luaL_checkversion_, null, null, metadata !2, i32 1025} ; [ DW_TAG_subprogram ] [line 1025] [def] [luaL_checkversion_]
!154 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!155 = metadata !{null, metadata !9, metadata !67, metadata !58}
!156 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"panic", metadata !"panic", metadata !"", i32 1011, metadata !141, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @panic, null, null, metadata !2, i32 1011} ; [ DW_TAG_subprogram ] [line 1011] [local] [def] [panic]
!157 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"l_alloc", metadata !"l_alloc", metadata !"", i32 1000, metadata !158, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i32, i32)* @l_alloc, null, null, metadata !2, i32 1000} ; [ DW_TAG_subprogram ] [line 1000] [local] [def] [l_alloc]
!158 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!159 = metadata !{metadata !40, metadata !40, metadata !40, metadata !58, metadata !58}
!160 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"getS", metadata !"getS", metadata !"", i32 746, metadata !161, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*, i32*)* @getS, null, null, metadata !2, i32 746} ; [ DW_TAG_subprogram ] [line 746] [local] [def] [getS]
!161 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !162, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!162 = metadata !{metadata !13, metadata !9, metadata !40, metadata !57}
!163 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"getF", metadata !"getF", metadata !"", i32 643, metadata !161, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*, i32*)* @getF, null, null, metadata !2, i32 643} ; [ DW_TAG_subprogram ] [line 643] [local] [def] [getF]
!164 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"skipcomment", metadata !"skipcomment", metadata !"", i32 691, metadata !165, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LoadF*, i32*)* @skipcomment, null, null, metadata !2, i32 691} ; [ DW_TAG_subprogram ] [line 691] [local] [def] [skipcomment]
!165 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !166, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!166 = metadata !{metadata !16, metadata !167, metadata !231}
!167 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !168} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LoadF]
!168 = metadata !{i32 786454, metadata !5, null, metadata !"LoadF", i32 640, i64 0, i64 0, i64 0, i32 0, metadata !169} ; [ DW_TAG_typedef ] [LoadF] [line 640, size 0, align 0, offset 0] [from LoadF]
!169 = metadata !{i32 786451, metadata !5, null, metadata !"LoadF", i32 636, i64 65600, i64 32, i32 0, i32 0, null, metadata !170, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LoadF] [line 636, size 65600, align 32, offset 0] [def] [from ]
!170 = metadata !{metadata !171, metadata !172, metadata !230}
!171 = metadata !{i32 786445, metadata !5, metadata !169, metadata !"n", i32 637, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [n] [line 637, size 32, align 32, offset 0] [from int]
!172 = metadata !{i32 786445, metadata !5, metadata !169, metadata !"f", i32 638, i64 32, i64 32, i64 32, i32 0, metadata !173} ; [ DW_TAG_member ] [f] [line 638, size 32, align 32, offset 32] [from ]
!173 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !174} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from FILE]
!174 = metadata !{i32 786454, metadata !175, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !176} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!175 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdio.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!176 = metadata !{i32 786451, metadata !177, null, metadata !"_IO_FILE", i32 245, i64 1216, i64 64, i32 0, i32 0, null, metadata !178, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1216, align 64, offset 0] [def] [from ]
!177 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Clibio.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!178 = metadata !{metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !199, metadata !200, metadata !201, metadata !202, metadata !206, metadata !208, metadata !210, metadata !214, metadata !217, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226}
!179 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!180 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_read_ptr", i32 251, i64 32, i64 32, i64 32, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 32, align 32, offset 32] [from ]
!181 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_read_end", i32 252, i64 32, i64 32, i64 64, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 32, align 32, offset 64] [from ]
!182 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_read_base", i32 253, i64 32, i64 32, i64 96, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 32, align 32, offset 96] [from ]
!183 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_write_base", i32 254, i64 32, i64 32, i64 128, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 32, align 32, offset 128] [from ]
!184 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_write_ptr", i32 255, i64 32, i64 32, i64 160, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 32, align 32, offset 160] [from ]
!185 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_write_end", i32 256, i64 32, i64 32, i64 192, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 32, align 32, offset 192] [from ]
!186 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_buf_base", i32 257, i64 32, i64 32, i64 224, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 32, align 32, offset 224] [from ]
!187 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_buf_end", i32 258, i64 32, i64 32, i64 256, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 32, align 32, offset 256] [from ]
!188 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_save_base", i32 260, i64 32, i64 32, i64 288, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 32, align 32, offset 288] [from ]
!189 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_backup_base", i32 261, i64 32, i64 32, i64 320, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 32, align 32, offset 320] [from ]
!190 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_IO_save_end", i32 262, i64 32, i64 32, i64 352, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 32, align 32, offset 352] [from ]
!191 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_markers", i32 264, i64 32, i64 32, i64 384, i32 0, metadata !192} ; [ DW_TAG_member ] [_markers] [line 264, size 32, align 32, offset 384] [from ]
!192 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !193} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _IO_marker]
!193 = metadata !{i32 786451, metadata !177, null, metadata !"_IO_marker", i32 160, i64 96, i64 32, i32 0, i32 0, null, metadata !194, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 96, align 32, offset 0] [def] [from ]
!194 = metadata !{metadata !195, metadata !196, metadata !198}
!195 = metadata !{i32 786445, metadata !177, metadata !193, metadata !"_next", i32 161, i64 32, i64 32, i64 0, i32 0, metadata !192} ; [ DW_TAG_member ] [_next] [line 161, size 32, align 32, offset 0] [from ]
!196 = metadata !{i32 786445, metadata !177, metadata !193, metadata !"_sbuf", i32 162, i64 32, i64 32, i64 32, i32 0, metadata !197} ; [ DW_TAG_member ] [_sbuf] [line 162, size 32, align 32, offset 32] [from ]
!197 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !176} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _IO_FILE]
!198 = metadata !{i32 786445, metadata !177, metadata !193, metadata !"_pos", i32 166, i64 32, i64 32, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 64] [from int]
!199 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_chain", i32 266, i64 32, i64 32, i64 416, i32 0, metadata !197} ; [ DW_TAG_member ] [_chain] [line 266, size 32, align 32, offset 416] [from ]
!200 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_fileno", i32 268, i64 32, i64 32, i64 448, i32 0, metadata !16} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 448] [from int]
!201 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_flags2", i32 272, i64 32, i64 32, i64 480, i32 0, metadata !16} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 480] [from int]
!202 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_old_offset", i32 274, i64 32, i64 32, i64 512, i32 0, metadata !203} ; [ DW_TAG_member ] [_old_offset] [line 274, size 32, align 32, offset 512] [from __off_t]
!203 = metadata !{i32 786454, metadata !204, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !205} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!204 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/types.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!205 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!206 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 544, i32 0, metadata !207} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 544] [from unsigned short]
!207 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!208 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 560, i32 0, metadata !209} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 560] [from signed char]
!209 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!210 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 568, i32 0, metadata !211} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 568] [from ]
!211 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !15, metadata !212, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!212 = metadata !{metadata !213}
!213 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!214 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_lock", i32 284, i64 32, i64 32, i64 576, i32 0, metadata !215} ; [ DW_TAG_member ] [_lock] [line 284, size 32, align 32, offset 576] [from ]
!215 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !216} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _IO_lock_t]
!216 = metadata !{i32 786454, metadata !177, null, metadata !"_IO_lock_t", i32 154, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_typedef ] [_IO_lock_t] [line 154, size 0, align 0, offset 0] [from ]
!217 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_offset", i32 293, i64 64, i64 64, i64 640, i32 0, metadata !218} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 640] [from __off64_t]
!218 = metadata !{i32 786454, metadata !204, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !219} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from __quad_t]
!219 = metadata !{i32 786454, metadata !204, null, metadata !"__quad_t", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [__quad_t] [line 55, size 0, align 0, offset 0] [from long long int]
!220 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__pad1", i32 302, i64 32, i64 32, i64 704, i32 0, metadata !40} ; [ DW_TAG_member ] [__pad1] [line 302, size 32, align 32, offset 704] [from ]
!221 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__pad2", i32 303, i64 32, i64 32, i64 736, i32 0, metadata !40} ; [ DW_TAG_member ] [__pad2] [line 303, size 32, align 32, offset 736] [from ]
!222 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__pad3", i32 304, i64 32, i64 32, i64 768, i32 0, metadata !40} ; [ DW_TAG_member ] [__pad3] [line 304, size 32, align 32, offset 768] [from ]
!223 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__pad4", i32 305, i64 32, i64 32, i64 800, i32 0, metadata !40} ; [ DW_TAG_member ] [__pad4] [line 305, size 32, align 32, offset 800] [from ]
!224 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"__pad5", i32 306, i64 32, i64 32, i64 832, i32 0, metadata !58} ; [ DW_TAG_member ] [__pad5] [line 306, size 32, align 32, offset 832] [from size_t]
!225 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_mode", i32 308, i64 32, i64 32, i64 864, i32 0, metadata !16} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 864] [from int]
!226 = metadata !{i32 786445, metadata !177, metadata !176, metadata !"_unused2", i32 310, i64 320, i64 8, i64 896, i32 0, metadata !227} ; [ DW_TAG_member ] [_unused2] [line 310, size 320, align 8, offset 896] [from ]
!227 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 8, i32 0, i32 0, metadata !15, metadata !228, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 320, align 8, offset 0] [from char]
!228 = metadata !{metadata !229}
!229 = metadata !{i32 786465, i64 0, i64 40}      ; [ DW_TAG_subrange_type ] [0, 39]
!230 = metadata !{i32 786445, metadata !5, metadata !169, metadata !"buff", i32 639, i64 65536, i64 8, i64 64, i32 0, metadata !94} ; [ DW_TAG_member ] [buff] [line 639, size 65536, align 8, offset 64] [from ]
!231 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!232 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"skipBOM", metadata !"skipBOM", metadata !"", i32 670, metadata !233, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LoadF*)* @skipBOM, null, null, metadata !2, i32 670} ; [ DW_TAG_subprogram ] [line 670] [local] [def] [skipBOM]
!233 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !234, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!234 = metadata !{metadata !16, metadata !167}
!235 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"errfile", metadata !"errfile", metadata !"", i32 661, metadata !236, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*, i32)* @errfile, null, null, metadata !2, i32 661} ; [ DW_TAG_subprogram ] [line 661] [local] [def] [errfile]
!236 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !237, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!237 = metadata !{metadata !16, metadata !9, metadata !13, metadata !16}
!238 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"newbox", metadata !"newbox", metadata !"", i32 483, metadata !239, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i32)* @newbox, null, null, metadata !2, i32 483} ; [ DW_TAG_subprogram ] [line 483] [local] [def] [newbox]
!239 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !240, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!240 = metadata !{metadata !40, metadata !9, metadata !58}
!241 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"boxgc", metadata !"boxgc", metadata !"", i32 477, metadata !141, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @boxgc, null, null, metadata !2, i32 477} ; [ DW_TAG_subprogram ] [line 477] [local] [def] [boxgc]
!242 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"resizebox", metadata !"resizebox", metadata !"", i32 462, metadata !243, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i32, i32)* @resizebox, null, null, metadata !2, i32 462} ; [ DW_TAG_subprogram ] [line 462] [local] [def] [resizebox]
!243 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !244, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!244 = metadata !{metadata !40, metadata !9, metadata !16, metadata !58}
!245 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"interror", metadata !"interror", metadata !"", i32 423, metadata !21, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @interror, null, null, metadata !2, i32 423} ; [ DW_TAG_subprogram ] [line 423] [local] [def] [interror]
!246 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"tag_error", metadata !"tag_error", metadata !"", i32 197, metadata !51, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32, i32)* @tag_error, null, null, metadata !2, i32 197} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [tag_error]
!247 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"typeerror", metadata !"typeerror", metadata !"", i32 183, metadata !18, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i8*)* @typeerror, null, null, metadata !2, i32 183} ; [ DW_TAG_subprogram ] [line 183] [local] [def] [typeerror]
!248 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"pushglobalfuncname", metadata !"pushglobalfuncname", metadata !"", i32 74, metadata !249, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct.lua_Debug*)* @pushglobalfuncname, null, null, metadata !2, i32 74} ; [ DW_TAG_subprogram ] [line 74] [local] [def] [pushglobalfuncname]
!249 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !250, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!250 = metadata !{metadata !16, metadata !9, metadata !251}
!251 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !252} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!252 = metadata !{i32 786454, metadata !11, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !253} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!253 = metadata !{i32 786451, metadata !11, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !254, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!254 = metadata !{metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !265, metadata !266, metadata !267, metadata !268, metadata !272}
!255 = metadata !{i32 786445, metadata !11, metadata !253, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!256 = metadata !{i32 786445, metadata !11, metadata !253, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !13} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!257 = metadata !{i32 786445, metadata !11, metadata !253, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !13} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!258 = metadata !{i32 786445, metadata !11, metadata !253, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !13} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!259 = metadata !{i32 786445, metadata !11, metadata !253, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !13} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!260 = metadata !{i32 786445, metadata !11, metadata !253, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !16} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!261 = metadata !{i32 786445, metadata !11, metadata !253, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!262 = metadata !{i32 786445, metadata !11, metadata !253, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !16} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!263 = metadata !{i32 786445, metadata !11, metadata !253, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !264} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!264 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!265 = metadata !{i32 786445, metadata !11, metadata !253, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !264} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!266 = metadata !{i32 786445, metadata !11, metadata !253, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !15} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!267 = metadata !{i32 786445, metadata !11, metadata !253, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !15} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!268 = metadata !{i32 786445, metadata !11, metadata !253, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !269} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!269 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !15, metadata !270, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!270 = metadata !{metadata !271}
!271 = metadata !{i32 786465, i64 0, i64 60}      ; [ DW_TAG_subrange_type ] [0, 59]
!272 = metadata !{i32 786445, metadata !11, metadata !253, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !273} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!273 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !274} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!274 = metadata !{i32 786451, metadata !11, null, metadata !"CallInfo", i32 456, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CallInfo] [line 456, size 0, align 0, offset 0] [decl] [from ]
!275 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"findfield", metadata !"findfield", metadata !"", i32 46, metadata !276, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i32)* @findfield, null, null, metadata !2, i32 46} ; [ DW_TAG_subprogram ] [line 46] [local] [def] [findfield]
!276 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!277 = metadata !{metadata !16, metadata !9, metadata !16, metadata !16}
!278 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"pushfuncname", metadata !"pushfuncname", metadata !"", i32 95, metadata !279, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_Debug*)* @pushfuncname, null, null, metadata !2, i32 95} ; [ DW_TAG_subprogram ] [line 95] [local] [def] [pushfuncname]
!279 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !280, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!280 = metadata !{null, metadata !9, metadata !251}
!281 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lastlevel", metadata !"lastlevel", metadata !"", i32 111, metadata !141, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @lastlevel, null, null, metadata !2, i32 111} ; [ DW_TAG_subprogram ] [line 111] [local] [def] [lastlevel]
!282 = metadata !{void (%struct.lua_State*, %struct.lua_State*, i8*, i32)* @luaL_traceback}
!283 = metadata !{metadata !"luaL_traceback"}
!284 = metadata !{i32 (%struct.lua_State*)* @lua_gettop}
!285 = metadata !{metadata !"lua_gettop"}
!286 = metadata !{i32 (%struct.lua_State*)* @lastlevel}
!287 = metadata !{metadata !"lastlevel"}
!288 = metadata !{i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring}
!289 = metadata !{metadata !"lua_pushfstring"}
!290 = metadata !{void (%struct.lua_State*, i32, i8*)* @luaL_checkstack}
!291 = metadata !{metadata !"luaL_checkstack"}
!292 = metadata !{i8* (%struct.lua_State*, i8*)* @lua_pushstring}
!293 = metadata !{metadata !"lua_pushstring"}
!294 = metadata !{i32 (%struct.lua_State*, i32, %struct.lua_Debug*)* @lua_getstack}
!295 = metadata !{metadata !"lua_getstack"}
!296 = metadata !{i32 (%struct.lua_State*, i8*, %struct.lua_Debug*)* @lua_getinfo}
!297 = metadata !{metadata !"lua_getinfo"}
!298 = metadata !{void (%struct.lua_State*, %struct.lua_Debug*)* @pushfuncname}
!299 = metadata !{metadata !"pushfuncname"}
!300 = metadata !{void (%struct.lua_State*, i32)* @lua_concat}
!301 = metadata !{metadata !"lua_concat"}
!302 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @luaL_argerror}
!303 = metadata !{metadata !"luaL_argerror"}
!304 = metadata !{i32 (%struct.lua_State*, i8*, ...)* @luaL_error}
!305 = metadata !{metadata !"luaL_error"}
!306 = metadata !{i32 (i8*, i8*)* @strcmp}
!307 = metadata !{metadata !"strcmp"}
!308 = metadata !{i32 (%struct.lua_State*, %struct.lua_Debug*)* @pushglobalfuncname}
!309 = metadata !{metadata !"pushglobalfuncname"}
!310 = metadata !{i8* (%struct.lua_State*, i32, i32*)* @lua_tolstring}
!311 = metadata !{metadata !"lua_tolstring"}
!312 = metadata !{void (%struct.lua_State*, i32)* @luaL_where}
!313 = metadata !{metadata !"luaL_where"}
!314 = metadata !{i8* (%struct.lua_State*, i8*, { [1 x i32] })* @lua_pushvfstring}
!315 = metadata !{metadata !"lua_pushvfstring"}
!316 = metadata !{i32 (%struct.lua_State*)* @lua_error}
!317 = metadata !{metadata !"lua_error"}
!318 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @luaL_fileresult}
!319 = metadata !{metadata !"luaL_fileresult"}
!320 = metadata !{i32* ()* @__errno_location}
!321 = metadata !{metadata !"__errno_location"}
!322 = metadata !{void (%struct.lua_State*, i32)* @lua_pushboolean}
!323 = metadata !{metadata !"lua_pushboolean"}
!324 = metadata !{void (%struct.lua_State*)* @lua_pushnil}
!325 = metadata !{metadata !"lua_pushnil"}
!326 = metadata !{i8* (i32)* @strerror}
!327 = metadata !{metadata !"strerror"}
!328 = metadata !{void (%struct.lua_State*, i64)* @lua_pushinteger}
!329 = metadata !{metadata !"lua_pushinteger"}
!330 = metadata !{i32 (%struct.lua_State*, i32)* @luaL_execresult}
!331 = metadata !{metadata !"luaL_execresult"}
!332 = metadata !{i32 (%struct.lua_State*, i8*)* @luaL_newmetatable}
!333 = metadata !{metadata !"luaL_newmetatable"}
!334 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @lua_getfield}
!335 = metadata !{metadata !"lua_getfield"}
!336 = metadata !{void (%struct.lua_State*, i32)* @lua_settop}
!337 = metadata !{metadata !"lua_settop"}
!338 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_createtable}
!339 = metadata !{metadata !"lua_createtable"}
!340 = metadata !{void (%struct.lua_State*, i32, i8*)* @lua_setfield}
!341 = metadata !{metadata !"lua_setfield"}
!342 = metadata !{void (%struct.lua_State*, i32)* @lua_pushvalue}
!343 = metadata !{metadata !"lua_pushvalue"}
!344 = metadata !{void (%struct.lua_State*, i8*)* @luaL_setmetatable}
!345 = metadata !{metadata !"luaL_setmetatable"}
!346 = metadata !{i32 (%struct.lua_State*, i32)* @lua_setmetatable}
!347 = metadata !{metadata !"lua_setmetatable"}
!348 = metadata !{i8* (%struct.lua_State*, i32, i8*)* @luaL_testudata}
!349 = metadata !{metadata !"luaL_testudata"}
!350 = metadata !{i8* (%struct.lua_State*, i32)* @lua_touserdata}
!351 = metadata !{metadata !"lua_touserdata"}
!352 = metadata !{i32 (%struct.lua_State*, i32)* @lua_getmetatable}
!353 = metadata !{metadata !"lua_getmetatable"}
!354 = metadata !{i32 (%struct.lua_State*, i32, i32)* @lua_rawequal}
!355 = metadata !{metadata !"lua_rawequal"}
!356 = metadata !{i8* (%struct.lua_State*, i32, i8*)* @luaL_checkudata}
!357 = metadata !{metadata !"luaL_checkudata"}
!358 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @typeerror}
!359 = metadata !{metadata !"typeerror"}
!360 = metadata !{i32 (%struct.lua_State*, i32, i8*, i8**)* @luaL_checkoption}
!361 = metadata !{metadata !"luaL_checkoption"}
!362 = metadata !{i8* (%struct.lua_State*, i32, i8*, i32*)* @luaL_optlstring}
!363 = metadata !{metadata !"luaL_optlstring"}
!364 = metadata !{i8* (%struct.lua_State*, i32, i32*)* @luaL_checklstring}
!365 = metadata !{metadata !"luaL_checklstring"}
!366 = metadata !{i32 (%struct.lua_State*, i32)* @lua_checkstack}
!367 = metadata !{metadata !"lua_checkstack"}
!368 = metadata !{void (%struct.lua_State*, i32, i32)* @luaL_checktype}
!369 = metadata !{metadata !"luaL_checktype"}
!370 = metadata !{i32 (%struct.lua_State*, i32)* @lua_type}
!371 = metadata !{metadata !"lua_type"}
!372 = metadata !{void (%struct.lua_State*, i32, i32)* @tag_error}
!373 = metadata !{metadata !"tag_error"}
!374 = metadata !{void (%struct.lua_State*, i32)* @luaL_checkany}
!375 = metadata !{metadata !"luaL_checkany"}
!376 = metadata !{i32 (i8*)* @strlen}
!377 = metadata !{metadata !"strlen"}
!378 = metadata !{double (%struct.lua_State*, i32)* @luaL_checknumber}
!379 = metadata !{metadata !"luaL_checknumber"}
!380 = metadata !{double (%struct.lua_State*, i32, i32*)* @lua_tonumberx}
!381 = metadata !{metadata !"lua_tonumberx"}
!382 = metadata !{double (%struct.lua_State*, i32, double)* @luaL_optnumber}
!383 = metadata !{metadata !"luaL_optnumber"}
!384 = metadata !{i64 (%struct.lua_State*, i32)* @luaL_checkinteger}
!385 = metadata !{metadata !"luaL_checkinteger"}
!386 = metadata !{i64 (%struct.lua_State*, i32, i32*)* @lua_tointegerx}
!387 = metadata !{metadata !"lua_tointegerx"}
!388 = metadata !{void (%struct.lua_State*, i32)* @interror}
!389 = metadata !{metadata !"interror"}
!390 = metadata !{i64 (%struct.lua_State*, i32, i64)* @luaL_optinteger}
!391 = metadata !{metadata !"luaL_optinteger"}
!392 = metadata !{i8* (%struct.luaL_Buffer*, i32)* @luaL_prepbuffsize}
!393 = metadata !{metadata !"luaL_prepbuffsize"}
!394 = metadata !{i8* (%struct.lua_State*, i32, i32)* @resizebox}
!395 = metadata !{metadata !"resizebox"}
!396 = metadata !{i8* (%struct.lua_State*, i32)* @newbox}
!397 = metadata !{metadata !"newbox"}
!398 = metadata !{void (%struct.luaL_Buffer*, i8*, i32)* @luaL_addlstring}
!399 = metadata !{metadata !"luaL_addlstring"}
!400 = metadata !{void (%struct.luaL_Buffer*, i8*)* @luaL_addstring}
!401 = metadata !{metadata !"luaL_addstring"}
!402 = metadata !{void (%struct.luaL_Buffer*)* @luaL_pushresult}
!403 = metadata !{metadata !"luaL_pushresult"}
!404 = metadata !{i8* (%struct.lua_State*, i8*, i32)* @lua_pushlstring}
!405 = metadata !{metadata !"lua_pushlstring"}
!406 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_rotate}
!407 = metadata !{metadata !"lua_rotate"}
!408 = metadata !{void (%struct.luaL_Buffer*, i32)* @luaL_pushresultsize}
!409 = metadata !{metadata !"luaL_pushresultsize"}
!410 = metadata !{void (%struct.luaL_Buffer*)* @luaL_addvalue}
!411 = metadata !{metadata !"luaL_addvalue"}
!412 = metadata !{void (%struct.lua_State*, %struct.luaL_Buffer*)* @luaL_buffinit}
!413 = metadata !{metadata !"luaL_buffinit"}
!414 = metadata !{i8* (%struct.lua_State*, %struct.luaL_Buffer*, i32)* @luaL_buffinitsize}
!415 = metadata !{metadata !"luaL_buffinitsize"}
!416 = metadata !{i32 (%struct.lua_State*, i32)* @luaL_ref}
!417 = metadata !{metadata !"luaL_ref"}
!418 = metadata !{i32 (%struct.lua_State*, i32)* @lua_absindex}
!419 = metadata !{metadata !"lua_absindex"}
!420 = metadata !{i32 (%struct.lua_State*, i32, i64)* @lua_rawgeti}
!421 = metadata !{metadata !"lua_rawgeti"}
!422 = metadata !{void (%struct.lua_State*, i32, i64)* @lua_rawseti}
!423 = metadata !{metadata !"lua_rawseti"}
!424 = metadata !{i32 (%struct.lua_State*, i32)* @lua_rawlen}
!425 = metadata !{metadata !"lua_rawlen"}
!426 = metadata !{void (%struct.lua_State*, i32, i32)* @luaL_unref}
!427 = metadata !{metadata !"luaL_unref"}
!428 = metadata !{i32 (%struct.lua_State*, i8*, i8*)* @luaL_loadfilex}
!429 = metadata !{metadata !"luaL_loadfilex"}
!430 = metadata !{%struct._IO_FILE* (i8*, i8*)* @fopen64}
!431 = metadata !{metadata !"fopen"}
!432 = metadata !{i32 (%struct.lua_State*, i8*, i32)* @errfile}
!433 = metadata !{metadata !"errfile"}
!434 = metadata !{i32 (%struct.LoadF*, i32*)* @skipcomment}
!435 = metadata !{metadata !"skipcomment"}
!436 = metadata !{%struct._IO_FILE* (i8*, i8*, %struct._IO_FILE*)* @freopen64}
!437 = metadata !{metadata !"freopen"}
!438 = metadata !{i32 (%struct.lua_State*, i8* (%struct.lua_State*, i8*, i32*)*, i8*, i8*, i8*)* @lua_load}
!439 = metadata !{metadata !"lua_load"}
!440 = metadata !{i8* (%struct.lua_State*, i8*, i32*)* @getF}
!441 = metadata !{metadata !"getF"}
!442 = metadata !{i32 (%struct._IO_FILE*)* @ferror}
!443 = metadata !{metadata !"ferror"}
!444 = metadata !{i32 (%struct._IO_FILE*)* @fclose}
!445 = metadata !{metadata !"fclose"}
!446 = metadata !{i32 (%struct.lua_State*, i8*, i32, i8*, i8*)* @luaL_loadbufferx}
!447 = metadata !{metadata !"luaL_loadbufferx"}
!448 = metadata !{i8* (%struct.lua_State*, i8*, i32*)* @getS}
!449 = metadata !{metadata !"getS"}
!450 = metadata !{i32 (%struct.lua_State*, i8*)* @luaL_loadstring}
!451 = metadata !{metadata !"luaL_loadstring"}
!452 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @luaL_getmetafield}
!453 = metadata !{metadata !"luaL_getmetafield"}
!454 = metadata !{i32 (%struct.lua_State*, i32)* @lua_rawget}
!455 = metadata !{metadata !"lua_rawget"}
!456 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @luaL_callmeta}
!457 = metadata !{metadata !"luaL_callmeta"}
!458 = metadata !{void (%struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*)* @lua_callk}
!459 = metadata !{metadata !"lua_callk"}
!460 = metadata !{i64 (%struct.lua_State*, i32)* @luaL_len}
!461 = metadata !{metadata !"luaL_len"}
!462 = metadata !{void (%struct.lua_State*, i32)* @lua_len}
!463 = metadata !{metadata !"lua_len"}
!464 = metadata !{i8* (%struct.lua_State*, i32, i32*)* @luaL_tolstring}
!465 = metadata !{metadata !"luaL_tolstring"}
!466 = metadata !{i32 (%struct.lua_State*, i32)* @lua_isinteger}
!467 = metadata !{metadata !"lua_isinteger"}
!468 = metadata !{i32 (%struct.lua_State*, i32)* @lua_toboolean}
!469 = metadata !{metadata !"lua_toboolean"}
!470 = metadata !{i8* (%struct.lua_State*, i32)* @lua_typename}
!471 = metadata !{metadata !"lua_typename"}
!472 = metadata !{i8* (%struct.lua_State*, i32)* @lua_topointer}
!473 = metadata !{metadata !"lua_topointer"}
!474 = metadata !{void (%struct.lua_State*, %struct.luaL_Reg*, i32)* @luaL_setfuncs}
!475 = metadata !{metadata !"luaL_setfuncs"}
!476 = metadata !{void (%struct.lua_State*, i32 (%struct.lua_State*)*, i32)* @lua_pushcclosure}
!477 = metadata !{metadata !"lua_pushcclosure"}
!478 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @luaL_getsubtable}
!479 = metadata !{metadata !"luaL_getsubtable"}
!480 = metadata !{void (%struct.lua_State*, i8*, i32 (%struct.lua_State*)*, i32)* @luaL_requiref}
!481 = metadata !{metadata !"luaL_requiref"}
!482 = metadata !{void (%struct.lua_State*, i8*)* @lua_setglobal}
!483 = metadata !{metadata !"lua_setglobal"}
!484 = metadata !{i8* (%struct.lua_State*, i8*, i8*, i8*)* @luaL_gsub}
!485 = metadata !{metadata !"luaL_gsub"}
!486 = metadata !{i8* (i8*, i8*)* @strstr}
!487 = metadata !{metadata !"strstr"}
!488 = metadata !{%struct.lua_State* ()* @luaL_newstate}
!489 = metadata !{metadata !"luaL_newstate"}
!490 = metadata !{%struct.lua_State* (i8* (i8*, i8*, i32, i32)*, i8*)* @lua_newstate}
!491 = metadata !{metadata !"lua_newstate"}
!492 = metadata !{i8* (i8*, i8*, i32, i32)* @l_alloc}
!493 = metadata !{metadata !"l_alloc"}
!494 = metadata !{i32 (%struct.lua_State*)* (%struct.lua_State*, i32 (%struct.lua_State*)*)* @lua_atpanic}
!495 = metadata !{metadata !"lua_atpanic"}
!496 = metadata !{i32 (%struct.lua_State*)* @panic}
!497 = metadata !{metadata !"panic"}
!498 = metadata !{void (%struct.lua_State*, double, i32)* @luaL_checkversion_}
!499 = metadata !{metadata !"luaL_checkversion_"}
!500 = metadata !{double* (%struct.lua_State*)* @lua_version}
!501 = metadata !{metadata !"lua_version"}
!502 = metadata !{i32 (%struct._IO_FILE*, i8*, ...)* @fprintf}
!503 = metadata !{metadata !"fprintf"}
!504 = metadata !{i32 (%struct._IO_FILE*)* @fflush}
!505 = metadata !{metadata !"fflush"}
!506 = metadata !{void (i8*)* @free}
!507 = metadata !{metadata !"free"}
!508 = metadata !{i8* (i8*, i32)* @realloc}
!509 = metadata !{metadata !"realloc"}
!510 = metadata !{i32 (%struct._IO_FILE*)* @feof}
!511 = metadata !{metadata !"feof"}
!512 = metadata !{i32 (i8*, i32, i32, %struct._IO_FILE*)* @fread}
!513 = metadata !{metadata !"fread"}
!514 = metadata !{i32 (%struct.LoadF*)* @skipBOM}
!515 = metadata !{metadata !"skipBOM"}
!516 = metadata !{i32 (%struct._IO_FILE*)* @_IO_getc}
!517 = metadata !{metadata !"_IO_getc"}
!518 = metadata !{i8* (%struct.lua_State*, i32)* @lua_newuserdata}
!519 = metadata !{metadata !"lua_newuserdata"}
!520 = metadata !{i32 (%struct.lua_State*)* @boxgc}
!521 = metadata !{metadata !"boxgc"}
!522 = metadata !{i8* (i8*, i8*, i32, i32)* (%struct.lua_State*, i8**)* @lua_getallocf}
!523 = metadata !{metadata !"lua_getallocf"}
!524 = metadata !{i32 (%struct.lua_State*, i32)* @lua_isnumber}
!525 = metadata !{metadata !"lua_isnumber"}
!526 = metadata !{i32 (%struct.lua_State*, i32, i32)* @findfield}
!527 = metadata !{metadata !"findfield"}
!528 = metadata !{i32 (i8*, i8*, i32)* @strncmp}
!529 = metadata !{metadata !"strncmp"}
!530 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_copy}
!531 = metadata !{metadata !"lua_copy"}
!532 = metadata !{i32 (%struct.lua_State*, i32)* @lua_next}
!533 = metadata !{metadata !"lua_next"}
!534 = metadata !{metadata !"void.lua_State *.1.lua_State *.1.const char *.1.int.0"}
!535 = metadata !{metadata !"int.lua_State *.1"}
!536 = metadata !{metadata !"const char .lua_State *.1.const char *.1"}
!537 = metadata !{metadata !"void.lua_State *.1.int.0.const char *.1"}
!538 = metadata !{metadata !"int.lua_State *.1.int.0.lua_Debug *.1"}
!539 = metadata !{metadata !"int.lua_State *.1.const char *.1.lua_Debug *.1"}
!540 = metadata !{metadata !"void.lua_State *.1.lua_Debug *.1"}
!541 = metadata !{metadata !"void.lua_State *.1.int.0"}
!542 = metadata !{metadata !"int.lua_State *.1.int.0.const char *.1"}
!543 = metadata !{metadata !"int.lua_State *.1.const char *.1"}
!544 = metadata !{metadata !"int.const char *.1.const char *.1"}
!545 = metadata !{metadata !"int.lua_State *.1.lua_Debug *.1"}
!546 = metadata !{metadata !"const char .lua_State *.1.int.0.size_t *.1"}
!547 = metadata !{metadata !"const char .lua_State *.1.const char *.1.va_list.0"}
!548 = metadata !{metadata !"int ."}
!549 = metadata !{metadata !"void.lua_State *.1"}
!550 = metadata !{metadata !"char .int.0"}
!551 = metadata !{metadata !"void.lua_State *.1.lua_Integer.0"}
!552 = metadata !{metadata !"int.lua_State *.1.int.0"}
!553 = metadata !{metadata !"void.lua_State *.1.int.0.int.0"}
!554 = metadata !{metadata !"void.lua_State *.1.const char *.1"}
!555 = metadata !{metadata !"void .lua_State *.1.int.0.const char *.1"}
!556 = metadata !{metadata !"void .lua_State *.1.int.0"}
!557 = metadata !{metadata !"int.lua_State *.1.int.0.int.0"}
!558 = metadata !{metadata !"int.lua_State *.1.int.0.const char *.1.const char *const [].1"}
!559 = metadata !{metadata !"const char .lua_State *.1.int.0.const char *.1.size_t *.1"}
!560 = metadata !{metadata !"unsigned int.const char *.1"}
!561 = metadata !{metadata !"lua_Number.lua_State *.1.int.0"}
!562 = metadata !{metadata !"lua_Number.lua_State *.1.int.0.int *.1"}
!563 = metadata !{metadata !"lua_Number.lua_State *.1.int.0.lua_Number.0"}
!564 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0"}
!565 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0.int *.1"}
!566 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0.lua_Integer.0"}
!567 = metadata !{metadata !"char .luaL_Buffer *.1.size_t.0"}
!568 = metadata !{metadata !"void .lua_State *.1.int.0.size_t.0"}
!569 = metadata !{metadata !"void .lua_State *.1.size_t.0"}
!570 = metadata !{metadata !"void.luaL_Buffer *.1.const char *.1.size_t.0"}
!571 = metadata !{metadata !"void.luaL_Buffer *.1.const char *.1"}
!572 = metadata !{metadata !"void.luaL_Buffer *.1"}
!573 = metadata !{metadata !"const char .lua_State *.1.const char *.1.size_t.0"}
!574 = metadata !{metadata !"void.luaL_Buffer *.1.size_t.0"}
!575 = metadata !{metadata !"void.lua_State *.1.luaL_Buffer *.1"}
!576 = metadata !{metadata !"char .lua_State *.1.luaL_Buffer *.1.size_t.0"}
!577 = metadata !{metadata !"int.lua_State *.1.int.0.lua_Integer.0"}
!578 = metadata !{metadata !"void.lua_State *.1.int.0.lua_Integer.0"}
!579 = metadata !{metadata !"size_t.lua_State *.1.int.0"}
!580 = metadata !{metadata !"int.lua_State *.1.const char *.1.const char *.1"}
!581 = metadata !{metadata !"FILE .const char *restrict.1.const char *restrict.1"}
!582 = metadata !{metadata !"int.lua_State *.1.const char *.1.int.0"}
!583 = metadata !{metadata !"int.LoadF *.1.int *.1"}
!584 = metadata !{metadata !"FILE .const char *restrict.1.const char *restrict.1.FILE *restrict.1"}
!585 = metadata !{metadata !"int.lua_State *.1.lua_Reader.1.void *.1.const char *.1.const char *.1"}
!586 = metadata !{metadata !"const char .lua_State *.1.void *.1.size_t *.1"}
!587 = metadata !{metadata !"int.FILE *.1"}
!588 = metadata !{metadata !"int.lua_State *.1.const char *.1.size_t.0.const char *.1.const char *.1"}
!589 = metadata !{metadata !"void.lua_State *.1.int.0.int.0.lua_KContext.0.lua_KFunction.1"}
!590 = metadata !{metadata !"const char .lua_State *.1.int.0"}
!591 = metadata !{metadata !"const void .lua_State *.1.int.0"}
!592 = metadata !{metadata !"void.lua_State *.1.const luaL_Reg *.1.int.0"}
!593 = metadata !{metadata !"void.lua_State *.1.lua_CFunction.1.int.0"}
!594 = metadata !{metadata !"void.lua_State *.1.const char *.1.lua_CFunction.1.int.0"}
!595 = metadata !{metadata !"const char .lua_State *.1.const char *.1.const char *.1.const char *.1"}
!596 = metadata !{metadata !"char .const char *.1.const char *.1"}
!597 = metadata !{metadata !"lua_State ."}
!598 = metadata !{metadata !"lua_State .lua_Alloc.1.void *.1"}
!599 = metadata !{metadata !"void .void *.1.void *.1.size_t.0.size_t.0"}
!600 = metadata !{metadata !"lua_CFunction.lua_State *.1.lua_CFunction.1"}
!601 = metadata !{metadata !"void.lua_State *.1.lua_Number.0.size_t.0"}
!602 = metadata !{metadata !"const lua_Number .lua_State *.1"}
!603 = metadata !{metadata !"int.FILE *restrict.1.const char *restrict.1"}
!604 = metadata !{metadata !"void.void *.1"}
!605 = metadata !{metadata !"void .void *.1.size_t.0"}
!606 = metadata !{metadata !"size_t.void *restrict.1.size_t.0.size_t.0.FILE *restrict.1"}
!607 = metadata !{metadata !"int.LoadF *.1"}
!608 = metadata !{metadata !"int._IO_FILE *.1"}
!609 = metadata !{metadata !"lua_Alloc.lua_State *.1.void **.1"}
!610 = metadata !{metadata !"int.const char *.1.const char *.1.size_t.0"}
!611 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h"}
!612 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h"}
!613 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.c"}
!614 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstring.h"}
!615 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/errno.h"}
!616 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdio.h"}
!617 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdlib.h"}
!618 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Clibio.h"}
!619 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!620 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!621 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!622 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!623 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!624 = metadata !{i32 786689, metadata !4, metadata !"L", metadata !6, i32 16777342, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 126]
!625 = metadata !{i32 126, i32 44, metadata !4, null}
!626 = metadata !{i32 786689, metadata !4, metadata !"L1", metadata !6, i32 33554558, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L1] [line 126]
!627 = metadata !{i32 126, i32 58, metadata !4, null}
!628 = metadata !{i32 786689, metadata !4, metadata !"msg", metadata !6, i32 50331775, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msg] [line 127]
!629 = metadata !{i32 127, i32 45, metadata !4, null}
!630 = metadata !{i32 786689, metadata !4, metadata !"level", metadata !6, i32 67108991, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [level] [line 127]
!631 = metadata !{i32 127, i32 54, metadata !4, null}
!632 = metadata !{i32 786688, metadata !4, metadata !"ar", metadata !6, i32 128, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 128]
!633 = metadata !{i32 128, i32 13, metadata !4, null}
!634 = metadata !{i32 786688, metadata !4, metadata !"top", metadata !6, i32 129, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [top] [line 129]
!635 = metadata !{i32 129, i32 7, metadata !4, null}
!636 = metadata !{i32 129, i32 13, metadata !4, null}
!637 = metadata !{i32 786688, metadata !4, metadata !"last", metadata !6, i32 130, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 130]
!638 = metadata !{i32 130, i32 7, metadata !4, null}
!639 = metadata !{i32 130, i32 14, metadata !4, null}
!640 = metadata !{i32 786688, metadata !4, metadata !"n1", metadata !6, i32 131, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 131]
!641 = metadata !{i32 131, i32 7, metadata !4, null}
!642 = metadata !{i32 131, i32 3, metadata !4, null}
!643 = metadata !{i32 132, i32 7, metadata !644, null}
!644 = metadata !{i32 786443, metadata !5, metadata !4, i32 132, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!645 = metadata !{i32 133, i32 5, metadata !644, null}
!646 = metadata !{i32 134, i32 3, metadata !4, null}
!647 = metadata !{i32 135, i32 3, metadata !4, null}
!648 = metadata !{i32 136, i32 3, metadata !4, null}
!649 = metadata !{i32 136, i32 10, metadata !650, null}
!650 = metadata !{i32 786443, metadata !5, metadata !4, i32 136, i32 10, i32 1, i32 137} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!651 = metadata !{i32 137, i32 9, metadata !652, null}
!652 = metadata !{i32 786443, metadata !5, metadata !653, i32 137, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!653 = metadata !{i32 786443, metadata !5, metadata !4, i32 136, i32 42, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!654 = metadata !{i32 138, i32 7, metadata !655, null}
!655 = metadata !{i32 786443, metadata !5, metadata !652, i32 137, i32 20, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!656 = metadata !{i32 139, i32 7, metadata !655, null}
!657 = metadata !{i32 140, i32 5, metadata !655, null}
!658 = metadata !{i32 142, i32 7, metadata !659, null}
!659 = metadata !{i32 786443, metadata !5, metadata !652, i32 141, i32 10, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!660 = metadata !{i32 143, i32 7, metadata !659, null}
!661 = metadata !{i32 144, i32 11, metadata !662, null}
!662 = metadata !{i32 786443, metadata !5, metadata !659, i32 144, i32 11, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!663 = metadata !{i32 145, i32 9, metadata !662, null}
!664 = metadata !{i32 146, i32 7, metadata !659, null}
!665 = metadata !{i32 147, i32 7, metadata !659, null}
!666 = metadata !{i32 148, i32 11, metadata !667, null}
!667 = metadata !{i32 786443, metadata !5, metadata !659, i32 148, i32 11, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!668 = metadata !{i32 149, i32 9, metadata !667, null}
!669 = metadata !{i32 150, i32 7, metadata !659, null}
!670 = metadata !{i32 150, i32 21, metadata !659, null}
!671 = metadata !{i32 152, i32 3, metadata !653, null}
!672 = metadata !{i32 153, i32 3, metadata !4, null}
!673 = metadata !{i32 153, i32 17, metadata !4, null}
!674 = metadata !{i32 154, i32 1, metadata !4, null}
!675 = metadata !{i32 786689, metadata !281, metadata !"L", metadata !6, i32 16777327, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 111]
!676 = metadata !{i32 111, i32 34, metadata !281, null}
!677 = metadata !{i32 786688, metadata !281, metadata !"ar", metadata !6, i32 112, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 112]
!678 = metadata !{i32 112, i32 13, metadata !281, null}
!679 = metadata !{i32 786688, metadata !281, metadata !"li", metadata !6, i32 113, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [li] [line 113]
!680 = metadata !{i32 113, i32 7, metadata !281, null}
!681 = metadata !{i32 113, i32 3, metadata !281, null}
!682 = metadata !{i32 786688, metadata !281, metadata !"le", metadata !6, i32 113, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [le] [line 113]
!683 = metadata !{i32 113, i32 15, metadata !281, null}
!684 = metadata !{i32 115, i32 3, metadata !281, null}
!685 = metadata !{i32 115, i32 10, metadata !686, null}
!686 = metadata !{i32 786443, metadata !5, metadata !687, i32 115, i32 10, i32 3, i32 140} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!687 = metadata !{i32 786443, metadata !5, metadata !281, i32 115, i32 10, i32 1, i32 138} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!688 = metadata !{i32 115, i32 38, metadata !689, null}
!689 = metadata !{i32 786443, metadata !5, metadata !690, i32 115, i32 38, i32 2, i32 139} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!690 = metadata !{i32 786443, metadata !5, metadata !281, i32 115, i32 36, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!691 = metadata !{i32 115, i32 47, metadata !690, null}
!692 = metadata !{i32 115, i32 56, metadata !690, null}
!693 = metadata !{i32 117, i32 3, metadata !281, null}
!694 = metadata !{i32 117, i32 3, metadata !695, null}
!695 = metadata !{i32 786443, metadata !5, metadata !281, i32 117, i32 3, i32 1, i32 141} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!696 = metadata !{i32 786688, metadata !697, metadata !"m", metadata !6, i32 118, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 118]
!697 = metadata !{i32 786443, metadata !5, metadata !281, i32 117, i32 19, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!698 = metadata !{i32 118, i32 9, metadata !697, null}
!699 = metadata !{i32 118, i32 5, metadata !697, null}
!700 = metadata !{i32 119, i32 9, metadata !701, null}
!701 = metadata !{i32 786443, metadata !5, metadata !697, i32 119, i32 9, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!702 = metadata !{i32 119, i32 34, metadata !703, null}
!703 = metadata !{i32 786443, metadata !5, metadata !701, i32 119, i32 34, i32 1, i32 142} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!704 = metadata !{i32 120, i32 10, metadata !701, null}
!705 = metadata !{i32 121, i32 3, metadata !697, null}
!706 = metadata !{i32 122, i32 3, metadata !281, null}
!707 = metadata !{i32 786689, metadata !47, metadata !"L", metadata !6, i32 16777585, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 369]
!708 = metadata !{i32 369, i32 45, metadata !47, null}
!709 = metadata !{i32 786689, metadata !47, metadata !"space", metadata !6, i32 33554801, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [space] [line 369]
!710 = metadata !{i32 369, i32 52, metadata !47, null}
!711 = metadata !{i32 786689, metadata !47, metadata !"msg", metadata !6, i32 50332017, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msg] [line 369]
!712 = metadata !{i32 369, i32 71, metadata !47, null}
!713 = metadata !{i32 370, i32 8, metadata !714, null}
!714 = metadata !{i32 786443, metadata !5, metadata !47, i32 370, i32 7, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!715 = metadata !{i32 371, i32 9, metadata !716, null}
!716 = metadata !{i32 786443, metadata !5, metadata !717, i32 371, i32 9, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!717 = metadata !{i32 786443, metadata !5, metadata !714, i32 370, i32 34, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!718 = metadata !{i32 372, i32 7, metadata !716, null}
!719 = metadata !{i32 374, i32 7, metadata !716, null}
!720 = metadata !{i32 375, i32 3, metadata !717, null}
!721 = metadata !{i32 376, i32 1, metadata !47, null}
!722 = metadata !{i32 786689, metadata !278, metadata !"L", metadata !6, i32 16777311, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 95]
!723 = metadata !{i32 95, i32 38, metadata !278, null}
!724 = metadata !{i32 786689, metadata !278, metadata !"ar", metadata !6, i32 33554527, metadata !251, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ar] [line 95]
!725 = metadata !{i32 95, i32 52, metadata !278, null}
!726 = metadata !{i32 96, i32 7, metadata !727, null}
!727 = metadata !{i32 786443, metadata !5, metadata !278, i32 96, i32 7, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!728 = metadata !{i32 97, i32 5, metadata !729, null}
!729 = metadata !{i32 786443, metadata !5, metadata !727, i32 96, i32 34, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!730 = metadata !{i32 97, i32 41, metadata !729, null}
!731 = metadata !{i32 98, i32 5, metadata !729, null}
!732 = metadata !{i32 99, i32 3, metadata !729, null}
!733 = metadata !{i32 100, i32 12, metadata !734, null}
!734 = metadata !{i32 786443, metadata !5, metadata !727, i32 100, i32 12, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!735 = metadata !{i32 101, i32 5, metadata !734, null}
!736 = metadata !{i32 102, i32 12, metadata !737, null}
!737 = metadata !{i32 786443, metadata !5, metadata !734, i32 102, i32 12, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!738 = metadata !{i32 103, i32 7, metadata !737, null}
!739 = metadata !{i32 104, i32 12, metadata !740, null}
!740 = metadata !{i32 786443, metadata !5, metadata !737, i32 104, i32 12, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!741 = metadata !{i32 105, i32 5, metadata !740, null}
!742 = metadata !{i32 107, i32 5, metadata !740, null}
!743 = metadata !{i32 108, i32 1, metadata !278, null}
!744 = metadata !{i32 786689, metadata !17, metadata !"L", metadata !6, i32 16777381, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 165]
!745 = metadata !{i32 165, i32 42, metadata !17, null}
!746 = metadata !{i32 786689, metadata !17, metadata !"arg", metadata !6, i32 33554597, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 165]
!747 = metadata !{i32 165, i32 49, metadata !17, null}
!748 = metadata !{i32 786689, metadata !17, metadata !"extramsg", metadata !6, i32 50331813, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [extramsg] [line 165]
!749 = metadata !{i32 165, i32 66, metadata !17, null}
!750 = metadata !{i32 786688, metadata !17, metadata !"ar", metadata !6, i32 166, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 166]
!751 = metadata !{i32 166, i32 13, metadata !17, null}
!752 = metadata !{i32 167, i32 8, metadata !753, null}
!753 = metadata !{i32 786443, metadata !5, metadata !17, i32 167, i32 7, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!754 = metadata !{i32 168, i32 12, metadata !753, null}
!755 = metadata !{i32 169, i32 3, metadata !17, null}
!756 = metadata !{i32 170, i32 7, metadata !757, null}
!757 = metadata !{i32 786443, metadata !5, metadata !17, i32 170, i32 7, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!758 = metadata !{i32 171, i32 5, metadata !759, null}
!759 = metadata !{i32 786443, metadata !5, metadata !757, i32 170, i32 43, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!760 = metadata !{i32 172, i32 9, metadata !761, null}
!761 = metadata !{i32 786443, metadata !5, metadata !759, i32 172, i32 9, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!762 = metadata !{i32 173, i32 14, metadata !761, null}
!763 = metadata !{i32 175, i32 3, metadata !759, null}
!764 = metadata !{i32 176, i32 7, metadata !765, null}
!765 = metadata !{i32 786443, metadata !5, metadata !17, i32 176, i32 7, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!766 = metadata !{i32 177, i32 16, metadata !765, null}
!767 = metadata !{i32 177, i32 46, metadata !768, null}
!768 = metadata !{i32 786443, metadata !5, metadata !765, i32 177, i32 46, i32 1, i32 143} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!769 = metadata !{i32 177, i32 46, metadata !770, null}
!770 = metadata !{i32 786443, metadata !5, metadata !765, i32 177, i32 46, i32 2, i32 144} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!771 = metadata !{i32 177, i32 46, metadata !765, null}
!772 = metadata !{i32 177, i32 46, metadata !773, null}
!773 = metadata !{i32 786443, metadata !5, metadata !774, i32 177, i32 46, i32 4, i32 146} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!774 = metadata !{i32 786443, metadata !5, metadata !765, i32 177, i32 46, i32 3, i32 145} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!775 = metadata !{i32 178, i32 10, metadata !17, null}
!776 = metadata !{i32 180, i32 1, metadata !17, null}
!777 = metadata !{i32 786689, metadata !23, metadata !"L", metadata !6, i32 16777440, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 224]
!778 = metadata !{i32 224, i32 39, metadata !23, null}
!779 = metadata !{i32 786689, metadata !23, metadata !"fmt", metadata !6, i32 33554656, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 224]
!780 = metadata !{i32 224, i32 54, metadata !23, null}
!781 = metadata !{i32 786688, metadata !23, metadata !"argp", metadata !6, i32 225, metadata !782, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argp] [line 225]
!782 = metadata !{i32 786454, metadata !783, null, metadata !"va_list", i32 98, i64 0, i64 0, i64 0, i32 0, metadata !784} ; [ DW_TAG_typedef ] [va_list] [line 98, size 0, align 0, offset 0] [from __gnuc_va_list]
!783 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstdarg.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!784 = metadata !{i32 786454, metadata !783, null, metadata !"__gnuc_va_list", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !785} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 40, size 0, align 0, offset 0] [from __builtin_va_list]
!785 = metadata !{i32 786454, metadata !1, null, metadata !"__builtin_va_list", i32 225, i64 0, i64 0, i64 0, i32 0, metadata !786} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 225, size 0, align 0, offset 0] [from __va_list]
!786 = metadata !{i32 786451, metadata !1, null, metadata !"__va_list", i32 225, i64 32, i64 32, i32 0, i32 0, null, metadata !787, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list] [line 225, size 32, align 32, offset 0] [def] [from ]
!787 = metadata !{metadata !788}
!788 = metadata !{i32 786445, metadata !1, metadata !786, metadata !"__ap", i32 225, i64 32, i64 32, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [__ap] [line 225, size 32, align 32, offset 0] [from ]
!789 = metadata !{i32 225, i32 11, metadata !23, null}
!790 = metadata !{i32 226, i32 3, metadata !23, null}
!791 = metadata !{i32 227, i32 3, metadata !23, null}
!792 = metadata !{i32 228, i32 3, metadata !23, null}
!793 = metadata !{i32 229, i32 3, metadata !23, null}
!794 = metadata !{i32 230, i32 3, metadata !23, null}
!795 = metadata !{i32 231, i32 10, metadata !23, null}
!796 = metadata !{i32 786689, metadata !248, metadata !"L", metadata !6, i32 16777290, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 74]
!797 = metadata !{i32 74, i32 43, metadata !248, null}
!798 = metadata !{i32 786689, metadata !248, metadata !"ar", metadata !6, i32 33554506, metadata !251, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ar] [line 74]
!799 = metadata !{i32 74, i32 57, metadata !248, null}
!800 = metadata !{i32 786688, metadata !248, metadata !"top", metadata !6, i32 75, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [top] [line 75]
!801 = metadata !{i32 75, i32 7, metadata !248, null}
!802 = metadata !{i32 75, i32 13, metadata !248, null}
!803 = metadata !{i32 76, i32 3, metadata !248, null}
!804 = metadata !{i32 77, i32 3, metadata !248, null}
!805 = metadata !{i32 78, i32 7, metadata !806, null}
!806 = metadata !{i32 786443, metadata !5, metadata !248, i32 78, i32 7, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!807 = metadata !{i32 786688, metadata !808, metadata !"name", metadata !6, i32 79, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 79]
!808 = metadata !{i32 786443, metadata !5, metadata !806, i32 78, i32 33, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!809 = metadata !{i32 79, i32 17, metadata !808, null}
!810 = metadata !{i32 79, i32 24, metadata !808, null}
!811 = metadata !{i32 80, i32 9, metadata !812, null}
!812 = metadata !{i32 786443, metadata !5, metadata !808, i32 80, i32 9, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!813 = metadata !{i32 81, i32 7, metadata !814, null}
!814 = metadata !{i32 786443, metadata !5, metadata !812, i32 80, i32 39, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!815 = metadata !{i32 82, i32 7, metadata !814, null}
!816 = metadata !{i32 83, i32 5, metadata !814, null}
!817 = metadata !{i32 84, i32 5, metadata !808, null}
!818 = metadata !{i32 85, i32 5, metadata !808, null}
!819 = metadata !{i32 86, i32 5, metadata !808, null}
!820 = metadata !{i32 89, i32 5, metadata !821, null}
!821 = metadata !{i32 786443, metadata !5, metadata !806, i32 88, i32 8, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!822 = metadata !{i32 90, i32 5, metadata !821, null}
!823 = metadata !{i32 92, i32 1, metadata !248, null}
!824 = metadata !{i32 786689, metadata !20, metadata !"L", metadata !6, i32 16777422, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 206]
!825 = metadata !{i32 206, i32 40, metadata !20, null}
!826 = metadata !{i32 786689, metadata !20, metadata !"level", metadata !6, i32 33554638, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [level] [line 206]
!827 = metadata !{i32 206, i32 47, metadata !20, null}
!828 = metadata !{i32 786688, metadata !20, metadata !"ar", metadata !6, i32 207, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 207]
!829 = metadata !{i32 207, i32 13, metadata !20, null}
!830 = metadata !{i32 208, i32 7, metadata !831, null}
!831 = metadata !{i32 786443, metadata !5, metadata !20, i32 208, i32 7, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!832 = metadata !{i32 209, i32 5, metadata !833, null}
!833 = metadata !{i32 786443, metadata !5, metadata !831, i32 208, i32 36, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!834 = metadata !{i32 210, i32 9, metadata !835, null}
!835 = metadata !{i32 786443, metadata !5, metadata !833, i32 210, i32 9, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!836 = metadata !{i32 211, i32 7, metadata !837, null}
!837 = metadata !{i32 786443, metadata !5, metadata !835, i32 210, i32 29, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!838 = metadata !{i32 212, i32 7, metadata !837, null}
!839 = metadata !{i32 214, i32 3, metadata !833, null}
!840 = metadata !{i32 215, i32 3, metadata !20, null}
!841 = metadata !{i32 216, i32 1, metadata !20, null}
!842 = metadata !{i32 216, i32 1, metadata !843, null}
!843 = metadata !{i32 786443, metadata !5, metadata !20, i32 216, i32 1, i32 1, i32 147} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!844 = metadata !{i32 786689, metadata !27, metadata !"L", metadata !6, i32 16777451, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 235]
!845 = metadata !{i32 235, i32 44, metadata !27, null}
!846 = metadata !{i32 786689, metadata !27, metadata !"stat", metadata !6, i32 33554667, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stat] [line 235]
!847 = metadata !{i32 235, i32 51, metadata !27, null}
!848 = metadata !{i32 786689, metadata !27, metadata !"fname", metadata !6, i32 50331883, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fname] [line 235]
!849 = metadata !{i32 235, i32 69, metadata !27, null}
!850 = metadata !{i32 786688, metadata !27, metadata !"en", metadata !6, i32 236, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [en] [line 236]
!851 = metadata !{i32 236, i32 7, metadata !27, null}
!852 = metadata !{i32 236, i32 12, metadata !27, null}
!853 = metadata !{i32 237, i32 7, metadata !854, null}
!854 = metadata !{i32 786443, metadata !5, metadata !27, i32 237, i32 7, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!855 = metadata !{i32 238, i32 5, metadata !856, null}
!856 = metadata !{i32 786443, metadata !5, metadata !854, i32 237, i32 13, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!857 = metadata !{i32 239, i32 5, metadata !856, null}
!858 = metadata !{i32 242, i32 5, metadata !859, null}
!859 = metadata !{i32 786443, metadata !5, metadata !854, i32 241, i32 8, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!860 = metadata !{i32 243, i32 9, metadata !861, null}
!861 = metadata !{i32 786443, metadata !5, metadata !859, i32 243, i32 9, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!862 = metadata !{i32 244, i32 7, metadata !861, null}
!863 = metadata !{i32 244, i32 43, metadata !861, null}
!864 = metadata !{i32 246, i32 7, metadata !861, null}
!865 = metadata !{i32 246, i32 25, metadata !861, null}
!866 = metadata !{i32 247, i32 5, metadata !859, null}
!867 = metadata !{i32 248, i32 5, metadata !859, null}
!868 = metadata !{i32 250, i32 1, metadata !27, null}
!869 = metadata !{i32 786689, metadata !28, metadata !"L", metadata !6, i32 16777491, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 275]
!870 = metadata !{i32 275, i32 44, metadata !28, null}
!871 = metadata !{i32 786689, metadata !28, metadata !"stat", metadata !6, i32 33554707, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stat] [line 275]
!872 = metadata !{i32 275, i32 51, metadata !28, null}
!873 = metadata !{i32 786688, metadata !28, metadata !"what", metadata !6, i32 276, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [what] [line 276]
!874 = metadata !{i32 276, i32 15, metadata !28, null}
!875 = metadata !{i32 276, i32 3, metadata !28, null}
!876 = metadata !{i32 277, i32 7, metadata !877, null}
!877 = metadata !{i32 786443, metadata !5, metadata !28, i32 277, i32 7, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!878 = metadata !{i32 278, i32 12, metadata !877, null}
!879 = metadata !{i32 281, i32 9, metadata !880, null}
!880 = metadata !{i32 786443, metadata !5, metadata !881, i32 281, i32 9, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!881 = metadata !{i32 786443, metadata !5, metadata !877, i32 279, i32 8, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!882 = metadata !{i32 281, i32 9, metadata !883, null}
!883 = metadata !{i32 786443, metadata !5, metadata !880, i32 281, i32 9, i32 1, i32 148} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!884 = metadata !{i32 282, i32 7, metadata !880, null}
!885 = metadata !{i32 284, i32 7, metadata !880, null}
!886 = metadata !{i32 285, i32 5, metadata !881, null}
!887 = metadata !{i32 286, i32 5, metadata !881, null}
!888 = metadata !{i32 287, i32 5, metadata !881, null}
!889 = metadata !{i32 289, i32 1, metadata !28, null}
!890 = metadata !{i32 786689, metadata !31, metadata !"L", metadata !6, i32 16777516, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 300]
!891 = metadata !{i32 300, i32 46, metadata !31, null}
!892 = metadata !{i32 786689, metadata !31, metadata !"tname", metadata !6, i32 33554732, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tname] [line 300]
!893 = metadata !{i32 300, i32 61, metadata !31, null}
!894 = metadata !{i32 301, i32 7, metadata !895, null}
!895 = metadata !{i32 786443, metadata !5, metadata !31, i32 301, i32 7, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!896 = metadata !{i32 302, i32 5, metadata !895, null}
!897 = metadata !{i32 303, i32 3, metadata !31, null}
!898 = metadata !{i32 304, i32 3, metadata !31, null}
!899 = metadata !{i32 305, i32 3, metadata !31, null}
!900 = metadata !{i32 306, i32 3, metadata !31, null}
!901 = metadata !{i32 307, i32 3, metadata !31, null}
!902 = metadata !{i32 308, i32 3, metadata !31, null}
!903 = metadata !{i32 309, i32 3, metadata !31, null}
!904 = metadata !{i32 310, i32 1, metadata !31, null}
!905 = metadata !{i32 786689, metadata !34, metadata !"L", metadata !6, i32 16777529, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 313]
!906 = metadata !{i32 313, i32 47, metadata !34, null}
!907 = metadata !{i32 786689, metadata !34, metadata !"tname", metadata !6, i32 33554745, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tname] [line 313]
!908 = metadata !{i32 313, i32 62, metadata !34, null}
!909 = metadata !{i32 314, i32 3, metadata !34, null}
!910 = metadata !{i32 315, i32 3, metadata !34, null}
!911 = metadata !{i32 316, i32 1, metadata !34, null}
!912 = metadata !{i32 786689, metadata !37, metadata !"L", metadata !6, i32 16777535, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 319]
!913 = metadata !{i32 319, i32 45, metadata !37, null}
!914 = metadata !{i32 786689, metadata !37, metadata !"ud", metadata !6, i32 33554751, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ud] [line 319]
!915 = metadata !{i32 319, i32 52, metadata !37, null}
!916 = metadata !{i32 786689, metadata !37, metadata !"tname", metadata !6, i32 50331967, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tname] [line 319]
!917 = metadata !{i32 319, i32 68, metadata !37, null}
!918 = metadata !{i32 786688, metadata !37, metadata !"p", metadata !6, i32 320, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 320]
!919 = metadata !{i32 320, i32 9, metadata !37, null}
!920 = metadata !{i32 320, i32 13, metadata !37, null}
!921 = metadata !{i32 321, i32 7, metadata !922, null}
!922 = metadata !{i32 786443, metadata !5, metadata !37, i32 321, i32 7, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!923 = metadata !{i32 322, i32 9, metadata !924, null}
!924 = metadata !{i32 786443, metadata !5, metadata !925, i32 322, i32 9, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!925 = metadata !{i32 786443, metadata !5, metadata !922, i32 321, i32 18, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!926 = metadata !{i32 323, i32 7, metadata !927, null}
!927 = metadata !{i32 786443, metadata !5, metadata !924, i32 322, i32 34, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!928 = metadata !{i32 324, i32 12, metadata !929, null}
!929 = metadata !{i32 786443, metadata !5, metadata !927, i32 324, i32 11, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!930 = metadata !{i32 325, i32 9, metadata !929, null}
!931 = metadata !{i32 326, i32 7, metadata !927, null}
!932 = metadata !{i32 327, i32 7, metadata !927, null}
!933 = metadata !{i32 329, i32 3, metadata !925, null}
!934 = metadata !{i32 330, i32 3, metadata !37, null}
!935 = metadata !{i32 331, i32 1, metadata !37, null}
!936 = metadata !{i32 786689, metadata !41, metadata !"L", metadata !6, i32 16777550, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 334]
!937 = metadata !{i32 334, i32 46, metadata !41, null}
!938 = metadata !{i32 786689, metadata !41, metadata !"ud", metadata !6, i32 33554766, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ud] [line 334]
!939 = metadata !{i32 334, i32 53, metadata !41, null}
!940 = metadata !{i32 786689, metadata !41, metadata !"tname", metadata !6, i32 50331982, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tname] [line 334]
!941 = metadata !{i32 334, i32 69, metadata !41, null}
!942 = metadata !{i32 786688, metadata !41, metadata !"p", metadata !6, i32 335, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 335]
!943 = metadata !{i32 335, i32 9, metadata !41, null}
!944 = metadata !{i32 335, i32 13, metadata !41, null}
!945 = metadata !{i32 336, i32 7, metadata !946, null}
!946 = metadata !{i32 786443, metadata !5, metadata !41, i32 336, i32 7, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!947 = metadata !{i32 336, i32 18, metadata !948, null}
!948 = metadata !{i32 786443, metadata !5, metadata !946, i32 336, i32 18, i32 1, i32 149} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!949 = metadata !{i32 337, i32 3, metadata !41, null}
!950 = metadata !{i32 786689, metadata !247, metadata !"L", metadata !6, i32 16777399, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 183]
!951 = metadata !{i32 183, i32 34, metadata !247, null}
!952 = metadata !{i32 786689, metadata !247, metadata !"arg", metadata !6, i32 33554615, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 183]
!953 = metadata !{i32 183, i32 41, metadata !247, null}
!954 = metadata !{i32 786689, metadata !247, metadata !"tname", metadata !6, i32 50331831, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tname] [line 183]
!955 = metadata !{i32 183, i32 58, metadata !247, null}
!956 = metadata !{i32 786688, metadata !247, metadata !"msg", metadata !6, i32 184, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 184]
!957 = metadata !{i32 184, i32 15, metadata !247, null}
!958 = metadata !{i32 786688, metadata !247, metadata !"typearg", metadata !6, i32 185, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typearg] [line 185]
!959 = metadata !{i32 185, i32 15, metadata !247, null}
!960 = metadata !{i32 186, i32 7, metadata !961, null}
!961 = metadata !{i32 786443, metadata !5, metadata !247, i32 186, i32 7, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!962 = metadata !{i32 187, i32 15, metadata !961, null}
!963 = metadata !{i32 188, i32 12, metadata !964, null}
!964 = metadata !{i32 786443, metadata !5, metadata !961, i32 188, i32 12, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!965 = metadata !{i32 189, i32 5, metadata !964, null}
!966 = metadata !{i32 191, i32 15, metadata !964, null}
!967 = metadata !{i32 192, i32 9, metadata !247, null}
!968 = metadata !{i32 193, i32 10, metadata !247, null}
!969 = metadata !{i32 786689, metadata !42, metadata !"L", metadata !6, i32 16777565, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 349]
!970 = metadata !{i32 349, i32 45, metadata !42, null}
!971 = metadata !{i32 786689, metadata !42, metadata !"arg", metadata !6, i32 33554781, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 349]
!972 = metadata !{i32 349, i32 52, metadata !42, null}
!973 = metadata !{i32 786689, metadata !42, metadata !"def", metadata !6, i32 50331997, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [def] [line 349]
!974 = metadata !{i32 349, i32 69, metadata !42, null}
!975 = metadata !{i32 786689, metadata !42, metadata !"lst", metadata !6, i32 67109214, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lst] [line 350]
!976 = metadata !{i32 350, i32 52, metadata !42, null}
!977 = metadata !{i32 786688, metadata !42, metadata !"name", metadata !6, i32 351, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 351]
!978 = metadata !{i32 351, i32 15, metadata !42, null}
!979 = metadata !{i32 351, i32 3, metadata !42, null}
!980 = metadata !{i32 351, i32 30, metadata !981, null}
!981 = metadata !{i32 786443, metadata !5, metadata !42, i32 351, i32 30, i32 1, i32 150} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!982 = metadata !{i32 352, i32 30, metadata !42, null}
!983 = metadata !{i32 352, i32 30, metadata !984, null}
!984 = metadata !{i32 786443, metadata !5, metadata !42, i32 352, i32 30, i32 1, i32 151} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!985 = metadata !{i32 786688, metadata !42, metadata !"i", metadata !6, i32 353, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 353]
!986 = metadata !{i32 353, i32 7, metadata !42, null}
!987 = metadata !{i32 354, i32 8, metadata !988, null}
!988 = metadata !{i32 786443, metadata !5, metadata !42, i32 354, i32 3, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!989 = metadata !{i32 354, i32 8, metadata !990, null}
!990 = metadata !{i32 786443, metadata !5, metadata !991, i32 354, i32 8, i32 2, i32 154} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!991 = metadata !{i32 786443, metadata !5, metadata !988, i32 354, i32 8, i32 1, i32 152} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!992 = metadata !{i32 355, i32 9, metadata !993, null}
!993 = metadata !{i32 786443, metadata !5, metadata !988, i32 355, i32 9, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!994 = metadata !{i32 356, i32 7, metadata !993, null}
!995 = metadata !{i32 355, i32 33, metadata !996, null}
!996 = metadata !{i32 786443, metadata !5, metadata !993, i32 355, i32 33, i32 1, i32 153} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!997 = metadata !{i32 354, i32 21, metadata !988, null}
!998 = metadata !{i32 357, i32 10, metadata !42, null}
!999 = metadata !{i32 358, i32 24, metadata !42, null}
!1000 = metadata !{i32 359, i32 1, metadata !42, null}
!1001 = metadata !{i32 786689, metadata !61, metadata !"L", metadata !6, i32 16777614, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 398]
!1002 = metadata !{i32 398, i32 52, metadata !61, null}
!1003 = metadata !{i32 786689, metadata !61, metadata !"arg", metadata !6, i32 33554830, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 398]
!1004 = metadata !{i32 398, i32 59, metadata !61, null}
!1005 = metadata !{i32 786689, metadata !61, metadata !"def", metadata !6, i32 50332047, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [def] [line 399]
!1006 = metadata !{i32 399, i32 53, metadata !61, null}
!1007 = metadata !{i32 786689, metadata !61, metadata !"len", metadata !6, i32 67109263, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 399]
!1008 = metadata !{i32 399, i32 66, metadata !61, null}
!1009 = metadata !{i32 400, i32 7, metadata !1010, null}
!1010 = metadata !{i32 786443, metadata !5, metadata !61, i32 400, i32 7, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1011 = metadata !{i32 401, i32 9, metadata !1012, null}
!1012 = metadata !{i32 786443, metadata !5, metadata !1013, i32 401, i32 9, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1013 = metadata !{i32 786443, metadata !5, metadata !1010, i32 400, i32 32, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1014 = metadata !{i32 402, i32 7, metadata !1012, null}
!1015 = metadata !{i32 402, i32 21, metadata !1016, null}
!1016 = metadata !{i32 786443, metadata !5, metadata !1012, i32 402, i32 21, i32 1, i32 155} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1017 = metadata !{i32 402, i32 21, metadata !1018, null}
!1018 = metadata !{i32 786443, metadata !5, metadata !1012, i32 402, i32 21, i32 2, i32 156} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1019 = metadata !{i32 402, i32 21, metadata !1012, null}
!1020 = metadata !{i32 402, i32 21, metadata !1021, null}
!1021 = metadata !{i32 786443, metadata !5, metadata !1022, i32 402, i32 21, i32 4, i32 158} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1022 = metadata !{i32 786443, metadata !5, metadata !1012, i32 402, i32 21, i32 3, i32 157} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1023 = metadata !{i32 403, i32 5, metadata !1013, null}
!1024 = metadata !{i32 405, i32 15, metadata !1010, null}
!1025 = metadata !{i32 406, i32 1, metadata !61, null}
!1026 = metadata !{i32 786689, metadata !54, metadata !"L", metadata !6, i32 16777607, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 391]
!1027 = metadata !{i32 391, i32 54, metadata !54, null}
!1028 = metadata !{i32 786689, metadata !54, metadata !"arg", metadata !6, i32 33554823, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 391]
!1029 = metadata !{i32 391, i32 61, metadata !54, null}
!1030 = metadata !{i32 786689, metadata !54, metadata !"len", metadata !6, i32 50332039, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 391]
!1031 = metadata !{i32 391, i32 74, metadata !54, null}
!1032 = metadata !{i32 786688, metadata !54, metadata !"s", metadata !6, i32 392, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 392]
!1033 = metadata !{i32 392, i32 15, metadata !54, null}
!1034 = metadata !{i32 392, i32 19, metadata !54, null}
!1035 = metadata !{i32 393, i32 7, metadata !1036, null}
!1036 = metadata !{i32 786443, metadata !5, metadata !54, i32 393, i32 7, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1037 = metadata !{i32 393, i32 11, metadata !1038, null}
!1038 = metadata !{i32 786443, metadata !5, metadata !1036, i32 393, i32 11, i32 1, i32 159} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1039 = metadata !{i32 394, i32 3, metadata !54, null}
!1040 = metadata !{i32 786689, metadata !50, metadata !"L", metadata !6, i32 16777595, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 379]
!1041 = metadata !{i32 379, i32 44, metadata !50, null}
!1042 = metadata !{i32 786689, metadata !50, metadata !"arg", metadata !6, i32 33554811, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 379]
!1043 = metadata !{i32 379, i32 51, metadata !50, null}
!1044 = metadata !{i32 786689, metadata !50, metadata !"t", metadata !6, i32 50332027, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 379]
!1045 = metadata !{i32 379, i32 60, metadata !50, null}
!1046 = metadata !{i32 380, i32 7, metadata !1047, null}
!1047 = metadata !{i32 786443, metadata !5, metadata !50, i32 380, i32 7, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1048 = metadata !{i32 381, i32 5, metadata !1047, null}
!1049 = metadata !{i32 382, i32 1, metadata !50, null}
!1050 = metadata !{i32 786689, metadata !246, metadata !"L", metadata !6, i32 16777413, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 197]
!1051 = metadata !{i32 197, i32 35, metadata !246, null}
!1052 = metadata !{i32 786689, metadata !246, metadata !"arg", metadata !6, i32 33554629, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 197]
!1053 = metadata !{i32 197, i32 42, metadata !246, null}
!1054 = metadata !{i32 786689, metadata !246, metadata !"tag", metadata !6, i32 50331845, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tag] [line 197]
!1055 = metadata !{i32 197, i32 51, metadata !246, null}
!1056 = metadata !{i32 198, i32 3, metadata !246, null}
!1057 = metadata !{i32 198, i32 21, metadata !246, null}
!1058 = metadata !{i32 199, i32 1, metadata !246, null}
!1059 = metadata !{i32 786689, metadata !53, metadata !"L", metadata !6, i32 16777601, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 385]
!1060 = metadata !{i32 385, i32 43, metadata !53, null}
!1061 = metadata !{i32 786689, metadata !53, metadata !"arg", metadata !6, i32 33554817, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 385]
!1062 = metadata !{i32 385, i32 50, metadata !53, null}
!1063 = metadata !{i32 386, i32 7, metadata !1064, null}
!1064 = metadata !{i32 786443, metadata !5, metadata !53, i32 386, i32 7, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1065 = metadata !{i32 387, i32 5, metadata !1064, null}
!1066 = metadata !{i32 388, i32 1, metadata !53, null}
!1067 = metadata !{i32 786689, metadata !64, metadata !"L", metadata !6, i32 16777625, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 409]
!1068 = metadata !{i32 409, i32 52, metadata !64, null}
!1069 = metadata !{i32 786689, metadata !64, metadata !"arg", metadata !6, i32 33554841, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 409]
!1070 = metadata !{i32 409, i32 59, metadata !64, null}
!1071 = metadata !{i32 786688, metadata !64, metadata !"isnum", metadata !6, i32 410, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isnum] [line 410]
!1072 = metadata !{i32 410, i32 7, metadata !64, null}
!1073 = metadata !{i32 786688, metadata !64, metadata !"d", metadata !6, i32 411, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 411]
!1074 = metadata !{i32 411, i32 14, metadata !64, null}
!1075 = metadata !{i32 411, i32 18, metadata !64, null}
!1076 = metadata !{i32 412, i32 7, metadata !1077, null}
!1077 = metadata !{i32 786443, metadata !5, metadata !64, i32 412, i32 7, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1078 = metadata !{i32 413, i32 5, metadata !1077, null}
!1079 = metadata !{i32 414, i32 3, metadata !64, null}
!1080 = metadata !{i32 786689, metadata !69, metadata !"L", metadata !6, i32 16777634, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 418]
!1081 = metadata !{i32 418, i32 50, metadata !69, null}
!1082 = metadata !{i32 786689, metadata !69, metadata !"arg", metadata !6, i32 33554850, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 418]
!1083 = metadata !{i32 418, i32 57, metadata !69, null}
!1084 = metadata !{i32 786689, metadata !69, metadata !"def", metadata !6, i32 50332066, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [def] [line 418]
!1085 = metadata !{i32 418, i32 73, metadata !69, null}
!1086 = metadata !{i32 419, i32 10, metadata !69, null}
!1087 = metadata !{i32 419, i32 10, metadata !1088, null}
!1088 = metadata !{i32 786443, metadata !5, metadata !69, i32 419, i32 10, i32 1, i32 160} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1089 = metadata !{i32 419, i32 10, metadata !1090, null}
!1090 = metadata !{i32 786443, metadata !5, metadata !69, i32 419, i32 10, i32 2, i32 161} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1091 = metadata !{i32 419, i32 10, metadata !1092, null}
!1092 = metadata !{i32 786443, metadata !5, metadata !1093, i32 419, i32 10, i32 4, i32 163} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1093 = metadata !{i32 786443, metadata !5, metadata !69, i32 419, i32 10, i32 3, i32 162} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1094 = metadata !{i32 786689, metadata !72, metadata !"L", metadata !6, i32 16777647, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 431]
!1095 = metadata !{i32 431, i32 54, metadata !72, null}
!1096 = metadata !{i32 786689, metadata !72, metadata !"arg", metadata !6, i32 33554863, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 431]
!1097 = metadata !{i32 431, i32 61, metadata !72, null}
!1098 = metadata !{i32 786688, metadata !72, metadata !"isnum", metadata !6, i32 432, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isnum] [line 432]
!1099 = metadata !{i32 432, i32 7, metadata !72, null}
!1100 = metadata !{i32 786688, metadata !72, metadata !"d", metadata !6, i32 433, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 433]
!1101 = metadata !{i32 433, i32 15, metadata !72, null}
!1102 = metadata !{i32 433, i32 19, metadata !72, null}
!1103 = metadata !{i32 434, i32 7, metadata !1104, null}
!1104 = metadata !{i32 786443, metadata !5, metadata !72, i32 434, i32 7, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1105 = metadata !{i32 435, i32 5, metadata !1106, null}
!1106 = metadata !{i32 786443, metadata !5, metadata !1104, i32 434, i32 15, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1107 = metadata !{i32 436, i32 3, metadata !1106, null}
!1108 = metadata !{i32 437, i32 3, metadata !72, null}
!1109 = metadata !{i32 786689, metadata !245, metadata !"L", metadata !6, i32 16777639, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 423]
!1110 = metadata !{i32 423, i32 34, metadata !245, null}
!1111 = metadata !{i32 786689, metadata !245, metadata !"arg", metadata !6, i32 33554855, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 423]
!1112 = metadata !{i32 423, i32 41, metadata !245, null}
!1113 = metadata !{i32 424, i32 7, metadata !1114, null}
!1114 = metadata !{i32 786443, metadata !5, metadata !245, i32 424, i32 7, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1115 = metadata !{i32 425, i32 5, metadata !1114, null}
!1116 = metadata !{i32 427, i32 5, metadata !1114, null}
!1117 = metadata !{i32 428, i32 1, metadata !245, null}
!1118 = metadata !{i32 786689, metadata !77, metadata !"L", metadata !6, i32 16777657, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 441]
!1119 = metadata !{i32 441, i32 52, metadata !77, null}
!1120 = metadata !{i32 786689, metadata !77, metadata !"arg", metadata !6, i32 33554873, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 441]
!1121 = metadata !{i32 441, i32 59, metadata !77, null}
!1122 = metadata !{i32 786689, metadata !77, metadata !"def", metadata !6, i32 50332090, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [def] [line 442]
!1123 = metadata !{i32 442, i32 67, metadata !77, null}
!1124 = metadata !{i32 443, i32 10, metadata !77, null}
!1125 = metadata !{i32 443, i32 10, metadata !1126, null}
!1126 = metadata !{i32 786443, metadata !5, metadata !77, i32 443, i32 10, i32 1, i32 164} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1127 = metadata !{i32 443, i32 10, metadata !1128, null}
!1128 = metadata !{i32 786443, metadata !5, metadata !77, i32 443, i32 10, i32 2, i32 165} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1129 = metadata !{i32 443, i32 10, metadata !1130, null}
!1130 = metadata !{i32 786443, metadata !5, metadata !1131, i32 443, i32 10, i32 4, i32 167} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1131 = metadata !{i32 786443, metadata !5, metadata !77, i32 443, i32 10, i32 3, i32 166} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1132 = metadata !{i32 786689, metadata !80, metadata !"B", metadata !6, i32 16777722, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 506]
!1133 = metadata !{i32 506, i32 50, metadata !80, null}
!1134 = metadata !{i32 786689, metadata !80, metadata !"sz", metadata !6, i32 33554938, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sz] [line 506]
!1135 = metadata !{i32 506, i32 60, metadata !80, null}
!1136 = metadata !{i32 786688, metadata !80, metadata !"L", metadata !6, i32 507, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L] [line 507]
!1137 = metadata !{i32 507, i32 14, metadata !80, null}
!1138 = metadata !{i32 507, i32 3, metadata !80, null}
!1139 = metadata !{i32 508, i32 7, metadata !1140, null}
!1140 = metadata !{i32 786443, metadata !5, metadata !80, i32 508, i32 7, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1141 = metadata !{i32 786688, metadata !1142, metadata !"newbuff", metadata !6, i32 509, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newbuff] [line 509]
!1142 = metadata !{i32 786443, metadata !5, metadata !1140, i32 508, i32 28, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1143 = metadata !{i32 509, i32 11, metadata !1142, null}
!1144 = metadata !{i32 786688, metadata !1142, metadata !"newsize", metadata !6, i32 510, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newsize] [line 510]
!1145 = metadata !{i32 510, i32 12, metadata !1142, null}
!1146 = metadata !{i32 510, i32 5, metadata !1142, null}
!1147 = metadata !{i32 511, i32 9, metadata !1148, null}
!1148 = metadata !{i32 786443, metadata !5, metadata !1142, i32 511, i32 9, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1149 = metadata !{i32 512, i32 7, metadata !1148, null}
!1150 = metadata !{i32 513, i32 9, metadata !1151, null}
!1151 = metadata !{i32 786443, metadata !5, metadata !1142, i32 513, i32 9, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1152 = metadata !{i32 513, i32 9, metadata !1153, null}
!1153 = metadata !{i32 786443, metadata !5, metadata !1151, i32 513, i32 9, i32 1, i32 168} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1154 = metadata !{i32 514, i32 7, metadata !1151, null}
!1155 = metadata !{i32 516, i32 9, metadata !1156, null}
!1156 = metadata !{i32 786443, metadata !5, metadata !1142, i32 516, i32 9, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1157 = metadata !{i32 517, i32 25, metadata !1156, null}
!1158 = metadata !{i32 519, i32 25, metadata !1159, null}
!1159 = metadata !{i32 786443, metadata !5, metadata !1156, i32 518, i32 10, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1160 = metadata !{i32 520, i32 7, metadata !1159, null}
!1161 = metadata !{i32 522, i32 5, metadata !1142, null}
!1162 = metadata !{i32 523, i32 5, metadata !1142, null}
!1163 = metadata !{i32 524, i32 3, metadata !1142, null}
!1164 = metadata !{i32 525, i32 3, metadata !80, null}
!1165 = metadata !{i32 786689, metadata !242, metadata !"L", metadata !6, i32 16777678, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 462]
!1166 = metadata !{i32 462, i32 36, metadata !242, null}
!1167 = metadata !{i32 786689, metadata !242, metadata !"idx", metadata !6, i32 33554894, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 462]
!1168 = metadata !{i32 462, i32 43, metadata !242, null}
!1169 = metadata !{i32 786689, metadata !242, metadata !"newsize", metadata !6, i32 50332110, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newsize] [line 462]
!1170 = metadata !{i32 462, i32 55, metadata !242, null}
!1171 = metadata !{i32 786688, metadata !242, metadata !"ud", metadata !6, i32 463, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ud] [line 463]
!1172 = metadata !{i32 463, i32 9, metadata !242, null}
!1173 = metadata !{i32 786688, metadata !242, metadata !"allocf", metadata !6, i32 464, metadata !1174, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocf] [line 464]
!1174 = metadata !{i32 786454, metadata !11, null, metadata !"lua_Alloc", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !1175} ; [ DW_TAG_typedef ] [lua_Alloc] [line 124, size 0, align 0, offset 0] [from ]
!1175 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !158} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1176 = metadata !{i32 464, i32 13, metadata !242, null}
!1177 = metadata !{i32 464, i32 22, metadata !242, null}
!1178 = metadata !{i32 786688, metadata !242, metadata !"box", metadata !6, i32 465, metadata !1179, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [box] [line 465]
!1179 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1180} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from UBox]
!1180 = metadata !{i32 786454, metadata !5, null, metadata !"UBox", i32 459, i64 0, i64 0, i64 0, i32 0, metadata !1181} ; [ DW_TAG_typedef ] [UBox] [line 459, size 0, align 0, offset 0] [from UBox]
!1181 = metadata !{i32 786451, metadata !5, null, metadata !"UBox", i32 456, i64 64, i64 32, i32 0, i32 0, null, metadata !1182, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [UBox] [line 456, size 64, align 32, offset 0] [def] [from ]
!1182 = metadata !{metadata !1183, metadata !1184}
!1183 = metadata !{i32 786445, metadata !5, metadata !1181, metadata !"box", i32 457, i64 32, i64 32, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [box] [line 457, size 32, align 32, offset 0] [from ]
!1184 = metadata !{i32 786445, metadata !5, metadata !1181, metadata !"bsize", i32 458, i64 32, i64 32, i64 32, i32 0, metadata !58} ; [ DW_TAG_member ] [bsize] [line 458, size 32, align 32, offset 32] [from size_t]
!1185 = metadata !{i32 465, i32 9, metadata !242, null}
!1186 = metadata !{i32 465, i32 23, metadata !242, null}
!1187 = metadata !{i32 786688, metadata !242, metadata !"temp", metadata !6, i32 466, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 466]
!1188 = metadata !{i32 466, i32 9, metadata !242, null}
!1189 = metadata !{i32 466, i32 16, metadata !242, null}
!1190 = metadata !{i32 467, i32 7, metadata !1191, null}
!1191 = metadata !{i32 786443, metadata !5, metadata !242, i32 467, i32 7, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1192 = metadata !{i32 467, i32 7, metadata !1193, null}
!1193 = metadata !{i32 786443, metadata !5, metadata !1191, i32 467, i32 7, i32 1, i32 169} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1194 = metadata !{i32 468, i32 5, metadata !1195, null}
!1195 = metadata !{i32 786443, metadata !5, metadata !1191, i32 467, i32 36, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1196 = metadata !{i32 469, i32 5, metadata !1195, null}
!1197 = metadata !{i32 470, i32 3, metadata !1195, null}
!1198 = metadata !{i32 471, i32 3, metadata !242, null}
!1199 = metadata !{i32 472, i32 3, metadata !242, null}
!1200 = metadata !{i32 473, i32 3, metadata !242, null}
!1201 = metadata !{i32 786689, metadata !238, metadata !"L", metadata !6, i32 16777699, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 483]
!1202 = metadata !{i32 483, i32 33, metadata !238, null}
!1203 = metadata !{i32 786689, metadata !238, metadata !"newsize", metadata !6, i32 33554915, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newsize] [line 483]
!1204 = metadata !{i32 483, i32 43, metadata !238, null}
!1205 = metadata !{i32 786688, metadata !238, metadata !"box", metadata !6, i32 484, metadata !1179, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [box] [line 484]
!1206 = metadata !{i32 484, i32 9, metadata !238, null}
!1207 = metadata !{i32 484, i32 23, metadata !238, null}
!1208 = metadata !{i32 485, i32 3, metadata !238, null}
!1209 = metadata !{i32 486, i32 3, metadata !238, null}
!1210 = metadata !{i32 487, i32 7, metadata !1211, null}
!1211 = metadata !{i32 786443, metadata !5, metadata !238, i32 487, i32 7, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1212 = metadata !{i32 488, i32 5, metadata !1213, null}
!1213 = metadata !{i32 786443, metadata !5, metadata !1211, i32 487, i32 39, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1214 = metadata !{i32 489, i32 5, metadata !1213, null}
!1215 = metadata !{i32 490, i32 3, metadata !1213, null}
!1216 = metadata !{i32 491, i32 3, metadata !238, null}
!1217 = metadata !{i32 492, i32 10, metadata !238, null}
!1218 = metadata !{i32 786689, metadata !97, metadata !"B", metadata !6, i32 16777745, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 529]
!1219 = metadata !{i32 529, i32 47, metadata !97, null}
!1220 = metadata !{i32 786689, metadata !97, metadata !"s", metadata !6, i32 33554961, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 529]
!1221 = metadata !{i32 529, i32 62, metadata !97, null}
!1222 = metadata !{i32 786689, metadata !97, metadata !"l", metadata !6, i32 50332177, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 529]
!1223 = metadata !{i32 529, i32 72, metadata !97, null}
!1224 = metadata !{i32 530, i32 7, metadata !1225, null}
!1225 = metadata !{i32 786443, metadata !5, metadata !97, i32 530, i32 7, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1226 = metadata !{i32 786688, metadata !1227, metadata !"b", metadata !6, i32 531, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 531]
!1227 = metadata !{i32 786443, metadata !5, metadata !1225, i32 530, i32 14, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1228 = metadata !{i32 531, i32 11, metadata !1227, null}
!1229 = metadata !{i32 531, i32 15, metadata !1227, null}
!1230 = metadata !{i32 532, i32 5, metadata !1227, null}
!1231 = metadata !{i32 533, i32 5, metadata !1227, null}
!1232 = metadata !{i32 534, i32 3, metadata !1227, null}
!1233 = metadata !{i32 535, i32 1, metadata !97, null}
!1234 = metadata !{i32 786689, metadata !100, metadata !"B", metadata !6, i32 16777754, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 538]
!1235 = metadata !{i32 538, i32 46, metadata !100, null}
!1236 = metadata !{i32 786689, metadata !100, metadata !"s", metadata !6, i32 33554970, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 538]
!1237 = metadata !{i32 538, i32 61, metadata !100, null}
!1238 = metadata !{i32 539, i32 3, metadata !100, null}
!1239 = metadata !{i32 539, i32 25, metadata !100, null}
!1240 = metadata !{i32 540, i32 1, metadata !100, null}
!1241 = metadata !{i32 786689, metadata !103, metadata !"B", metadata !6, i32 16777759, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 543]
!1242 = metadata !{i32 543, i32 47, metadata !103, null}
!1243 = metadata !{i32 786688, metadata !103, metadata !"L", metadata !6, i32 544, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L] [line 544]
!1244 = metadata !{i32 544, i32 14, metadata !103, null}
!1245 = metadata !{i32 544, i32 3, metadata !103, null}
!1246 = metadata !{i32 545, i32 3, metadata !103, null}
!1247 = metadata !{i32 546, i32 7, metadata !1248, null}
!1248 = metadata !{i32 786443, metadata !5, metadata !103, i32 546, i32 7, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1249 = metadata !{i32 547, i32 5, metadata !1250, null}
!1250 = metadata !{i32 786443, metadata !5, metadata !1248, i32 546, i32 23, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1251 = metadata !{i32 548, i32 5, metadata !1250, null}
!1252 = metadata !{i32 549, i32 3, metadata !1250, null}
!1253 = metadata !{i32 550, i32 1, metadata !103, null}
!1254 = metadata !{i32 786689, metadata !106, metadata !"B", metadata !6, i32 16777769, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 553]
!1255 = metadata !{i32 553, i32 51, metadata !106, null}
!1256 = metadata !{i32 786689, metadata !106, metadata !"sz", metadata !6, i32 33554985, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sz] [line 553]
!1257 = metadata !{i32 553, i32 61, metadata !106, null}
!1258 = metadata !{i32 554, i32 3, metadata !106, null}
!1259 = metadata !{i32 555, i32 3, metadata !106, null}
!1260 = metadata !{i32 556, i32 1, metadata !106, null}
!1261 = metadata !{i32 786689, metadata !109, metadata !"B", metadata !6, i32 16777775, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 559]
!1262 = metadata !{i32 559, i32 45, metadata !109, null}
!1263 = metadata !{i32 786688, metadata !109, metadata !"L", metadata !6, i32 560, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L] [line 560]
!1264 = metadata !{i32 560, i32 14, metadata !109, null}
!1265 = metadata !{i32 560, i32 3, metadata !109, null}
!1266 = metadata !{i32 786688, metadata !109, metadata !"l", metadata !6, i32 561, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 561]
!1267 = metadata !{i32 561, i32 10, metadata !109, null}
!1268 = metadata !{i32 786688, metadata !109, metadata !"s", metadata !6, i32 562, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 562]
!1269 = metadata !{i32 562, i32 15, metadata !109, null}
!1270 = metadata !{i32 562, i32 19, metadata !109, null}
!1271 = metadata !{i32 563, i32 7, metadata !1272, null}
!1272 = metadata !{i32 786443, metadata !5, metadata !109, i32 563, i32 7, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1273 = metadata !{i32 564, i32 5, metadata !1272, null}
!1274 = metadata !{i32 565, i32 3, metadata !109, null}
!1275 = metadata !{i32 566, i32 3, metadata !109, null}
!1276 = metadata !{i32 567, i32 1, metadata !109, null}
!1277 = metadata !{i32 786689, metadata !110, metadata !"L", metadata !6, i32 16777786, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 570]
!1278 = metadata !{i32 570, i32 43, metadata !110, null}
!1279 = metadata !{i32 786689, metadata !110, metadata !"B", metadata !6, i32 33555002, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 570]
!1280 = metadata !{i32 570, i32 59, metadata !110, null}
!1281 = metadata !{i32 571, i32 3, metadata !110, null}
!1282 = metadata !{i32 572, i32 3, metadata !110, null}
!1283 = metadata !{i32 573, i32 3, metadata !110, null}
!1284 = metadata !{i32 574, i32 3, metadata !110, null}
!1285 = metadata !{i32 575, i32 1, metadata !110, null}
!1286 = metadata !{i32 786689, metadata !113, metadata !"L", metadata !6, i32 16777794, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 578]
!1287 = metadata !{i32 578, i32 48, metadata !113, null}
!1288 = metadata !{i32 786689, metadata !113, metadata !"B", metadata !6, i32 33555010, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 578]
!1289 = metadata !{i32 578, i32 64, metadata !113, null}
!1290 = metadata !{i32 786689, metadata !113, metadata !"sz", metadata !6, i32 50332226, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sz] [line 578]
!1291 = metadata !{i32 578, i32 74, metadata !113, null}
!1292 = metadata !{i32 579, i32 3, metadata !113, null}
!1293 = metadata !{i32 580, i32 10, metadata !113, null}
!1294 = metadata !{i32 786689, metadata !116, metadata !"L", metadata !6, i32 16777812, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 596]
!1295 = metadata !{i32 596, i32 37, metadata !116, null}
!1296 = metadata !{i32 786689, metadata !116, metadata !"t", metadata !6, i32 33555028, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 596]
!1297 = metadata !{i32 596, i32 44, metadata !116, null}
!1298 = metadata !{i32 786688, metadata !116, metadata !"ref", metadata !6, i32 597, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ref] [line 597]
!1299 = metadata !{i32 597, i32 7, metadata !116, null}
!1300 = metadata !{i32 598, i32 7, metadata !1301, null}
!1301 = metadata !{i32 786443, metadata !5, metadata !116, i32 598, i32 7, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1302 = metadata !{i32 599, i32 5, metadata !1303, null}
!1303 = metadata !{i32 786443, metadata !5, metadata !1301, i32 598, i32 25, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1304 = metadata !{i32 600, i32 5, metadata !1303, null}
!1305 = metadata !{i32 602, i32 7, metadata !116, null}
!1306 = metadata !{i32 603, i32 3, metadata !116, null}
!1307 = metadata !{i32 604, i32 14, metadata !116, null}
!1308 = metadata !{i32 605, i32 3, metadata !116, null}
!1309 = metadata !{i32 606, i32 7, metadata !1310, null}
!1310 = metadata !{i32 786443, metadata !5, metadata !116, i32 606, i32 7, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1311 = metadata !{i32 607, i32 5, metadata !1312, null}
!1312 = metadata !{i32 786443, metadata !5, metadata !1310, i32 606, i32 17, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1313 = metadata !{i32 608, i32 5, metadata !1312, null}
!1314 = metadata !{i32 609, i32 3, metadata !1312, null}
!1315 = metadata !{i32 611, i32 16, metadata !1310, null}
!1316 = metadata !{i32 612, i32 3, metadata !116, null}
!1317 = metadata !{i32 613, i32 3, metadata !116, null}
!1318 = metadata !{i32 614, i32 1, metadata !116, null}
!1319 = metadata !{i32 786689, metadata !117, metadata !"L", metadata !6, i32 16777833, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 617]
!1320 = metadata !{i32 617, i32 40, metadata !117, null}
!1321 = metadata !{i32 786689, metadata !117, metadata !"t", metadata !6, i32 33555049, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 617]
!1322 = metadata !{i32 617, i32 47, metadata !117, null}
!1323 = metadata !{i32 786689, metadata !117, metadata !"ref", metadata !6, i32 50332265, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ref] [line 617]
!1324 = metadata !{i32 617, i32 54, metadata !117, null}
!1325 = metadata !{i32 618, i32 7, metadata !1326, null}
!1326 = metadata !{i32 786443, metadata !5, metadata !117, i32 618, i32 7, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1327 = metadata !{i32 619, i32 9, metadata !1328, null}
!1328 = metadata !{i32 786443, metadata !5, metadata !1326, i32 618, i32 17, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1329 = metadata !{i32 620, i32 5, metadata !1328, null}
!1330 = metadata !{i32 621, i32 5, metadata !1328, null}
!1331 = metadata !{i32 622, i32 5, metadata !1328, null}
!1332 = metadata !{i32 623, i32 5, metadata !1328, null}
!1333 = metadata !{i32 624, i32 3, metadata !1328, null}
!1334 = metadata !{i32 625, i32 1, metadata !117, null}
!1335 = metadata !{i32 786689, metadata !118, metadata !"L", metadata !6, i32 16777920, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 704]
!1336 = metadata !{i32 704, i32 43, metadata !118, null}
!1337 = metadata !{i32 786689, metadata !118, metadata !"filename", metadata !6, i32 33555136, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 704]
!1338 = metadata !{i32 704, i32 58, metadata !118, null}
!1339 = metadata !{i32 786689, metadata !118, metadata !"mode", metadata !6, i32 50332353, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 705]
!1340 = metadata !{i32 705, i32 58, metadata !118, null}
!1341 = metadata !{i32 786688, metadata !118, metadata !"lf", metadata !6, i32 706, metadata !168, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lf] [line 706]
!1342 = metadata !{i32 706, i32 9, metadata !118, null}
!1343 = metadata !{i32 786688, metadata !118, metadata !"status", metadata !6, i32 707, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 707]
!1344 = metadata !{i32 707, i32 7, metadata !118, null}
!1345 = metadata !{i32 786688, metadata !118, metadata !"readstatus", metadata !6, i32 707, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [readstatus] [line 707]
!1346 = metadata !{i32 707, i32 15, metadata !118, null}
!1347 = metadata !{i32 786688, metadata !118, metadata !"c", metadata !6, i32 708, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 708]
!1348 = metadata !{i32 708, i32 7, metadata !118, null}
!1349 = metadata !{i32 786688, metadata !118, metadata !"fnameindex", metadata !6, i32 709, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnameindex] [line 709]
!1350 = metadata !{i32 709, i32 7, metadata !118, null}
!1351 = metadata !{i32 709, i32 20, metadata !118, null}
!1352 = metadata !{i32 710, i32 7, metadata !1353, null}
!1353 = metadata !{i32 786443, metadata !5, metadata !118, i32 710, i32 7, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1354 = metadata !{i32 711, i32 5, metadata !1355, null}
!1355 = metadata !{i32 786443, metadata !5, metadata !1353, i32 710, i32 25, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1356 = metadata !{i32 712, i32 5, metadata !1355, null}
!1357 = metadata !{i32 713, i32 3, metadata !1355, null}
!1358 = metadata !{i32 715, i32 5, metadata !1359, null}
!1359 = metadata !{i32 786443, metadata !5, metadata !1353, i32 714, i32 8, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1360 = metadata !{i32 716, i32 12, metadata !1359, null}
!1361 = metadata !{i32 717, i32 9, metadata !1362, null}
!1362 = metadata !{i32 786443, metadata !5, metadata !1359, i32 717, i32 9, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1363 = metadata !{i32 717, i32 30, metadata !1364, null}
!1364 = metadata !{i32 786443, metadata !5, metadata !1362, i32 717, i32 30, i32 1, i32 170} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1365 = metadata !{i32 719, i32 7, metadata !1366, null}
!1366 = metadata !{i32 786443, metadata !5, metadata !118, i32 719, i32 7, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1367 = metadata !{i32 720, i32 5, metadata !1366, null}
!1368 = metadata !{i32 721, i32 7, metadata !1369, null}
!1369 = metadata !{i32 786443, metadata !5, metadata !118, i32 721, i32 7, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1370 = metadata !{i32 721, i32 7, metadata !1371, null}
!1371 = metadata !{i32 786443, metadata !5, metadata !1369, i32 721, i32 7, i32 1, i32 171} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1372 = metadata !{i32 722, i32 12, metadata !1373, null}
!1373 = metadata !{i32 786443, metadata !5, metadata !1369, i32 721, i32 42, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1374 = metadata !{i32 723, i32 9, metadata !1375, null}
!1375 = metadata !{i32 786443, metadata !5, metadata !1373, i32 723, i32 9, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1376 = metadata !{i32 723, i32 30, metadata !1377, null}
!1377 = metadata !{i32 786443, metadata !5, metadata !1375, i32 723, i32 30, i32 1, i32 172} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1378 = metadata !{i32 724, i32 5, metadata !1373, null}
!1379 = metadata !{i32 725, i32 3, metadata !1373, null}
!1380 = metadata !{i32 726, i32 7, metadata !1381, null}
!1381 = metadata !{i32 786443, metadata !5, metadata !118, i32 726, i32 7, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1382 = metadata !{i32 727, i32 5, metadata !1381, null}
!1383 = metadata !{i32 728, i32 12, metadata !118, null}
!1384 = metadata !{i32 728, i32 35, metadata !118, null}
!1385 = metadata !{i32 729, i32 16, metadata !118, null}
!1386 = metadata !{i32 730, i32 7, metadata !1387, null}
!1387 = metadata !{i32 786443, metadata !5, metadata !118, i32 730, i32 7, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1388 = metadata !{i32 730, i32 17, metadata !1389, null}
!1389 = metadata !{i32 786443, metadata !5, metadata !1387, i32 730, i32 17, i32 1, i32 173} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1390 = metadata !{i32 731, i32 7, metadata !1391, null}
!1391 = metadata !{i32 786443, metadata !5, metadata !118, i32 731, i32 7, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1392 = metadata !{i32 732, i32 5, metadata !1393, null}
!1393 = metadata !{i32 786443, metadata !5, metadata !1391, i32 731, i32 19, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1394 = metadata !{i32 733, i32 12, metadata !1393, null}
!1395 = metadata !{i32 735, i32 3, metadata !118, null}
!1396 = metadata !{i32 736, i32 3, metadata !118, null}
!1397 = metadata !{i32 737, i32 1, metadata !118, null}
!1398 = metadata !{i32 786689, metadata !235, metadata !"L", metadata !6, i32 16777877, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 661]
!1399 = metadata !{i32 661, i32 32, metadata !235, null}
!1400 = metadata !{i32 786689, metadata !235, metadata !"what", metadata !6, i32 33555093, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [what] [line 661]
!1401 = metadata !{i32 661, i32 47, metadata !235, null}
!1402 = metadata !{i32 786689, metadata !235, metadata !"fnameindex", metadata !6, i32 50332309, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnameindex] [line 661]
!1403 = metadata !{i32 661, i32 57, metadata !235, null}
!1404 = metadata !{i32 786688, metadata !235, metadata !"serr", metadata !6, i32 662, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [serr] [line 662]
!1405 = metadata !{i32 662, i32 15, metadata !235, null}
!1406 = metadata !{i32 662, i32 31, metadata !235, null}
!1407 = metadata !{i32 662, i32 22, metadata !235, null}
!1408 = metadata !{i32 786688, metadata !235, metadata !"filename", metadata !6, i32 663, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [filename] [line 663]
!1409 = metadata !{i32 663, i32 15, metadata !235, null}
!1410 = metadata !{i32 663, i32 26, metadata !235, null}
!1411 = metadata !{i32 664, i32 3, metadata !235, null}
!1412 = metadata !{i32 665, i32 3, metadata !235, null}
!1413 = metadata !{i32 666, i32 3, metadata !235, null}
!1414 = metadata !{i32 786689, metadata !164, metadata !"lf", metadata !6, i32 16777907, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lf] [line 691]
!1415 = metadata !{i32 691, i32 32, metadata !164, null}
!1416 = metadata !{i32 786689, metadata !164, metadata !"cp", metadata !6, i32 33555123, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 691]
!1417 = metadata !{i32 691, i32 41, metadata !164, null}
!1418 = metadata !{i32 786688, metadata !164, metadata !"c", metadata !6, i32 692, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 692]
!1419 = metadata !{i32 692, i32 7, metadata !164, null}
!1420 = metadata !{i32 692, i32 17, metadata !164, null}
!1421 = metadata !{i32 693, i32 7, metadata !1422, null}
!1422 = metadata !{i32 786443, metadata !5, metadata !164, i32 693, i32 7, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1423 = metadata !{i32 694, i32 5, metadata !1424, null}
!1424 = metadata !{i32 786443, metadata !5, metadata !1422, i32 693, i32 17, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1425 = metadata !{i32 695, i32 11, metadata !1426, null}
!1426 = metadata !{i32 786443, metadata !5, metadata !1424, i32 694, i32 8, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1427 = metadata !{i32 696, i32 5, metadata !1426, null}
!1428 = metadata !{i32 696, i32 5, metadata !1429, null}
!1429 = metadata !{i32 786443, metadata !5, metadata !1426, i32 696, i32 5, i32 1, i32 174} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1430 = metadata !{i32 696, i32 5, metadata !1431, null}
!1431 = metadata !{i32 786443, metadata !5, metadata !1426, i32 696, i32 5, i32 2, i32 175} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1432 = metadata !{i32 696, i32 5, metadata !1433, null}
!1433 = metadata !{i32 786443, metadata !5, metadata !1426, i32 696, i32 5, i32 3, i32 176} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1434 = metadata !{i32 697, i32 11, metadata !1424, null}
!1435 = metadata !{i32 698, i32 5, metadata !1424, null}
!1436 = metadata !{i32 700, i32 8, metadata !1422, null}
!1437 = metadata !{i32 701, i32 1, metadata !164, null}
!1438 = metadata !{i32 786689, metadata !163, metadata !"L", metadata !6, i32 16777859, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 643]
!1439 = metadata !{i32 643, i32 37, metadata !163, null}
!1440 = metadata !{i32 786689, metadata !163, metadata !"ud", metadata !6, i32 33555075, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ud] [line 643]
!1441 = metadata !{i32 643, i32 46, metadata !163, null}
!1442 = metadata !{i32 786689, metadata !163, metadata !"size", metadata !6, i32 50332291, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 643]
!1443 = metadata !{i32 643, i32 58, metadata !163, null}
!1444 = metadata !{i32 786688, metadata !163, metadata !"lf", metadata !6, i32 644, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lf] [line 644]
!1445 = metadata !{i32 644, i32 10, metadata !163, null}
!1446 = metadata !{i32 644, i32 3, metadata !163, null}
!1447 = metadata !{i32 645, i32 3, metadata !163, null}
!1448 = metadata !{i32 646, i32 7, metadata !1449, null}
!1449 = metadata !{i32 786443, metadata !5, metadata !163, i32 646, i32 7, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1450 = metadata !{i32 647, i32 5, metadata !1451, null}
!1451 = metadata !{i32 786443, metadata !5, metadata !1449, i32 646, i32 18, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1452 = metadata !{i32 648, i32 5, metadata !1451, null}
!1453 = metadata !{i32 649, i32 3, metadata !1451, null}
!1454 = metadata !{i32 654, i32 9, metadata !1455, null}
!1455 = metadata !{i32 786443, metadata !5, metadata !1456, i32 654, i32 9, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1456 = metadata !{i32 786443, metadata !5, metadata !1449, i32 650, i32 8, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1457 = metadata !{i32 654, i32 22, metadata !1458, null}
!1458 = metadata !{i32 786443, metadata !5, metadata !1455, i32 654, i32 22, i32 1, i32 177} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1459 = metadata !{i32 655, i32 13, metadata !1456, null}
!1460 = metadata !{i32 657, i32 3, metadata !163, null}
!1461 = metadata !{i32 658, i32 1, metadata !163, null}
!1462 = metadata !{i32 786689, metadata !121, metadata !"L", metadata !6, i32 16777972, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 756]
!1463 = metadata !{i32 756, i32 45, metadata !121, null}
!1464 = metadata !{i32 786689, metadata !121, metadata !"buff", metadata !6, i32 33555188, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buff] [line 756]
!1465 = metadata !{i32 756, i32 60, metadata !121, null}
!1466 = metadata !{i32 786689, metadata !121, metadata !"size", metadata !6, i32 50332404, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 756]
!1467 = metadata !{i32 756, i32 73, metadata !121, null}
!1468 = metadata !{i32 786689, metadata !121, metadata !"name", metadata !6, i32 67109621, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 757]
!1469 = metadata !{i32 757, i32 46, metadata !121, null}
!1470 = metadata !{i32 786689, metadata !121, metadata !"mode", metadata !6, i32 83886837, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 757]
!1471 = metadata !{i32 757, i32 64, metadata !121, null}
!1472 = metadata !{i32 786688, metadata !121, metadata !"ls", metadata !6, i32 758, metadata !1473, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ls] [line 758]
!1473 = metadata !{i32 786454, metadata !5, null, metadata !"LoadS", i32 743, i64 0, i64 0, i64 0, i32 0, metadata !1474} ; [ DW_TAG_typedef ] [LoadS] [line 743, size 0, align 0, offset 0] [from LoadS]
!1474 = metadata !{i32 786451, metadata !5, null, metadata !"LoadS", i32 740, i64 64, i64 32, i32 0, i32 0, null, metadata !1475, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LoadS] [line 740, size 64, align 32, offset 0] [def] [from ]
!1475 = metadata !{metadata !1476, metadata !1477}
!1476 = metadata !{i32 786445, metadata !5, metadata !1474, metadata !"s", i32 741, i64 32, i64 32, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [s] [line 741, size 32, align 32, offset 0] [from ]
!1477 = metadata !{i32 786445, metadata !5, metadata !1474, metadata !"size", i32 742, i64 32, i64 32, i64 32, i32 0, metadata !58} ; [ DW_TAG_member ] [size] [line 742, size 32, align 32, offset 32] [from size_t]
!1478 = metadata !{i32 758, i32 9, metadata !121, null}
!1479 = metadata !{i32 759, i32 3, metadata !121, null}
!1480 = metadata !{i32 760, i32 3, metadata !121, null}
!1481 = metadata !{i32 761, i32 10, metadata !121, null}
!1482 = metadata !{i32 786689, metadata !160, metadata !"L", metadata !6, i32 16777962, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 746]
!1483 = metadata !{i32 746, i32 37, metadata !160, null}
!1484 = metadata !{i32 786689, metadata !160, metadata !"ud", metadata !6, i32 33555178, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ud] [line 746]
!1485 = metadata !{i32 746, i32 46, metadata !160, null}
!1486 = metadata !{i32 786689, metadata !160, metadata !"size", metadata !6, i32 50332394, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 746]
!1487 = metadata !{i32 746, i32 58, metadata !160, null}
!1488 = metadata !{i32 786688, metadata !160, metadata !"ls", metadata !6, i32 747, metadata !1489, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ls] [line 747]
!1489 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1473} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LoadS]
!1490 = metadata !{i32 747, i32 10, metadata !160, null}
!1491 = metadata !{i32 747, i32 3, metadata !160, null}
!1492 = metadata !{i32 748, i32 3, metadata !160, null}
!1493 = metadata !{i32 749, i32 7, metadata !1494, null}
!1494 = metadata !{i32 786443, metadata !5, metadata !160, i32 749, i32 7, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1495 = metadata !{i32 749, i32 22, metadata !1496, null}
!1496 = metadata !{i32 786443, metadata !5, metadata !1494, i32 749, i32 22, i32 1, i32 178} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1497 = metadata !{i32 750, i32 3, metadata !160, null}
!1498 = metadata !{i32 751, i32 3, metadata !160, null}
!1499 = metadata !{i32 752, i32 3, metadata !160, null}
!1500 = metadata !{i32 753, i32 1, metadata !160, null}
!1501 = metadata !{i32 786689, metadata !124, metadata !"L", metadata !6, i32 16777981, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 765]
!1502 = metadata !{i32 765, i32 44, metadata !124, null}
!1503 = metadata !{i32 786689, metadata !124, metadata !"s", metadata !6, i32 33555197, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 765]
!1504 = metadata !{i32 765, i32 59, metadata !124, null}
!1505 = metadata !{i32 766, i32 10, metadata !124, null}
!1506 = metadata !{i32 786689, metadata !125, metadata !"L", metadata !6, i32 16777989, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 773]
!1507 = metadata !{i32 773, i32 46, metadata !125, null}
!1508 = metadata !{i32 786689, metadata !125, metadata !"obj", metadata !6, i32 33555205, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [obj] [line 773]
!1509 = metadata !{i32 773, i32 53, metadata !125, null}
!1510 = metadata !{i32 786689, metadata !125, metadata !"event", metadata !6, i32 50332421, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [event] [line 773]
!1511 = metadata !{i32 773, i32 70, metadata !125, null}
!1512 = metadata !{i32 774, i32 8, metadata !1513, null}
!1513 = metadata !{i32 786443, metadata !5, metadata !125, i32 774, i32 7, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1514 = metadata !{i32 775, i32 5, metadata !1513, null}
!1515 = metadata !{i32 786688, metadata !1516, metadata !"tt", metadata !6, i32 777, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tt] [line 777]
!1516 = metadata !{i32 786443, metadata !5, metadata !1513, i32 776, i32 8, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1517 = metadata !{i32 777, i32 9, metadata !1516, null}
!1518 = metadata !{i32 778, i32 5, metadata !1516, null}
!1519 = metadata !{i32 779, i32 10, metadata !1516, null}
!1520 = metadata !{i32 780, i32 9, metadata !1521, null}
!1521 = metadata !{i32 786443, metadata !5, metadata !1516, i32 780, i32 9, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1522 = metadata !{i32 781, i32 7, metadata !1521, null}
!1523 = metadata !{i32 783, i32 7, metadata !1521, null}
!1524 = metadata !{i32 784, i32 5, metadata !1516, null}
!1525 = metadata !{i32 786, i32 1, metadata !125, null}
!1526 = metadata !{i32 786689, metadata !126, metadata !"L", metadata !6, i32 16778005, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 789]
!1527 = metadata !{i32 789, i32 42, metadata !126, null}
!1528 = metadata !{i32 786689, metadata !126, metadata !"obj", metadata !6, i32 33555221, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [obj] [line 789]
!1529 = metadata !{i32 789, i32 49, metadata !126, null}
!1530 = metadata !{i32 786689, metadata !126, metadata !"event", metadata !6, i32 50332437, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [event] [line 789]
!1531 = metadata !{i32 789, i32 66, metadata !126, null}
!1532 = metadata !{i32 790, i32 9, metadata !126, null}
!1533 = metadata !{i32 791, i32 7, metadata !1534, null}
!1534 = metadata !{i32 786443, metadata !5, metadata !126, i32 791, i32 7, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1535 = metadata !{i32 792, i32 5, metadata !1534, null}
!1536 = metadata !{i32 793, i32 3, metadata !126, null}
!1537 = metadata !{i32 794, i32 3, metadata !126, null}
!1538 = metadata !{i32 795, i32 3, metadata !126, null}
!1539 = metadata !{i32 796, i32 1, metadata !126, null}
!1540 = metadata !{i32 786689, metadata !127, metadata !"L", metadata !6, i32 16778015, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 799]
!1541 = metadata !{i32 799, i32 45, metadata !127, null}
!1542 = metadata !{i32 786689, metadata !127, metadata !"idx", metadata !6, i32 33555231, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 799]
!1543 = metadata !{i32 799, i32 52, metadata !127, null}
!1544 = metadata !{i32 786688, metadata !127, metadata !"l", metadata !6, i32 800, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 800]
!1545 = metadata !{i32 800, i32 15, metadata !127, null}
!1546 = metadata !{i32 786688, metadata !127, metadata !"isnum", metadata !6, i32 801, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isnum] [line 801]
!1547 = metadata !{i32 801, i32 7, metadata !127, null}
!1548 = metadata !{i32 802, i32 3, metadata !127, null}
!1549 = metadata !{i32 803, i32 7, metadata !127, null}
!1550 = metadata !{i32 804, i32 7, metadata !1551, null}
!1551 = metadata !{i32 786443, metadata !5, metadata !127, i32 804, i32 7, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1552 = metadata !{i32 805, i32 5, metadata !1551, null}
!1553 = metadata !{i32 806, i32 3, metadata !127, null}
!1554 = metadata !{i32 807, i32 3, metadata !127, null}
!1555 = metadata !{i32 786689, metadata !128, metadata !"L", metadata !6, i32 16778027, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 811]
!1556 = metadata !{i32 811, i32 51, metadata !128, null}
!1557 = metadata !{i32 786689, metadata !128, metadata !"idx", metadata !6, i32 33555243, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 811]
!1558 = metadata !{i32 811, i32 58, metadata !128, null}
!1559 = metadata !{i32 786689, metadata !128, metadata !"len", metadata !6, i32 50332459, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 811]
!1560 = metadata !{i32 811, i32 71, metadata !128, null}
!1561 = metadata !{i32 812, i32 8, metadata !1562, null}
!1562 = metadata !{i32 786443, metadata !5, metadata !128, i32 812, i32 7, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1563 = metadata !{i32 813, i32 13, metadata !1564, null}
!1564 = metadata !{i32 786443, metadata !5, metadata !1562, i32 812, i32 45, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1565 = metadata !{i32 815, i32 13, metadata !1566, null}
!1566 = metadata !{i32 786443, metadata !5, metadata !1567, i32 815, i32 13, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1567 = metadata !{i32 786443, metadata !5, metadata !1568, i32 814, i32 25, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1568 = metadata !{i32 786443, metadata !5, metadata !1564, i32 813, i32 31, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1569 = metadata !{i32 816, i32 11, metadata !1566, null}
!1570 = metadata !{i32 816, i32 36, metadata !1566, null}
!1571 = metadata !{i32 818, i32 11, metadata !1566, null}
!1572 = metadata !{i32 818, i32 36, metadata !1566, null}
!1573 = metadata !{i32 819, i32 9, metadata !1567, null}
!1574 = metadata !{i32 822, i32 9, metadata !1568, null}
!1575 = metadata !{i32 823, i32 9, metadata !1568, null}
!1576 = metadata !{i32 825, i32 9, metadata !1568, null}
!1577 = metadata !{i32 825, i32 28, metadata !1568, null}
!1578 = metadata !{i32 826, i32 9, metadata !1568, null}
!1579 = metadata !{i32 828, i32 9, metadata !1568, null}
!1580 = metadata !{i32 829, i32 9, metadata !1568, null}
!1581 = metadata !{i32 831, i32 9, metadata !1568, null}
!1582 = metadata !{i32 831, i32 38, metadata !1568, null}
!1583 = metadata !{i32 832, i32 45, metadata !1568, null}
!1584 = metadata !{i32 833, i32 9, metadata !1568, null}
!1585 = metadata !{i32 835, i32 3, metadata !1564, null}
!1586 = metadata !{i32 836, i32 10, metadata !128, null}
!1587 = metadata !{i32 786689, metadata !129, metadata !"L", metadata !6, i32 16778142, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 926]
!1588 = metadata !{i32 926, i32 43, metadata !129, null}
!1589 = metadata !{i32 786689, metadata !129, metadata !"l", metadata !6, i32 33555358, metadata !132, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 926]
!1590 = metadata !{i32 926, i32 62, metadata !129, null}
!1591 = metadata !{i32 786689, metadata !129, metadata !"nup", metadata !6, i32 50332574, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nup] [line 926]
!1592 = metadata !{i32 926, i32 69, metadata !129, null}
!1593 = metadata !{i32 927, i32 3, metadata !129, null}
!1594 = metadata !{i32 928, i32 3, metadata !1595, null}
!1595 = metadata !{i32 786443, metadata !5, metadata !129, i32 928, i32 3, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1596 = metadata !{i32 928, i32 3, metadata !1597, null}
!1597 = metadata !{i32 786443, metadata !5, metadata !1598, i32 928, i32 3, i32 2, i32 182} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1598 = metadata !{i32 786443, metadata !5, metadata !1595, i32 928, i32 3, i32 1, i32 179} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1599 = metadata !{i32 786688, metadata !1600, metadata !"i", metadata !6, i32 929, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 929]
!1600 = metadata !{i32 786443, metadata !5, metadata !1595, i32 928, i32 32, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1601 = metadata !{i32 929, i32 9, metadata !1600, null}
!1602 = metadata !{i32 930, i32 10, metadata !1603, null}
!1603 = metadata !{i32 786443, metadata !5, metadata !1600, i32 930, i32 5, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1604 = metadata !{i32 930, i32 10, metadata !1605, null}
!1605 = metadata !{i32 786443, metadata !5, metadata !1606, i32 930, i32 10, i32 2, i32 181} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1606 = metadata !{i32 786443, metadata !5, metadata !1603, i32 930, i32 10, i32 1, i32 180} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1607 = metadata !{i32 931, i32 7, metadata !1603, null}
!1608 = metadata !{i32 930, i32 26, metadata !1603, null}
!1609 = metadata !{i32 932, i32 5, metadata !1600, null}
!1610 = metadata !{i32 933, i32 5, metadata !1600, null}
!1611 = metadata !{i32 934, i32 3, metadata !1600, null}
!1612 = metadata !{i32 928, i32 27, metadata !1595, null}
!1613 = metadata !{i32 935, i32 3, metadata !129, null}
!1614 = metadata !{i32 936, i32 1, metadata !129, null}
!1615 = metadata !{i32 786689, metadata !143, metadata !"L", metadata !6, i32 16778159, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 943]
!1616 = metadata !{i32 943, i32 45, metadata !143, null}
!1617 = metadata !{i32 786689, metadata !143, metadata !"idx", metadata !6, i32 33555375, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 943]
!1618 = metadata !{i32 943, i32 52, metadata !143, null}
!1619 = metadata !{i32 786689, metadata !143, metadata !"fname", metadata !6, i32 50332591, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fname] [line 943]
!1620 = metadata !{i32 943, i32 69, metadata !143, null}
!1621 = metadata !{i32 944, i32 7, metadata !1622, null}
!1622 = metadata !{i32 786443, metadata !5, metadata !143, i32 944, i32 7, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1623 = metadata !{i32 945, i32 5, metadata !1622, null}
!1624 = metadata !{i32 947, i32 5, metadata !1625, null}
!1625 = metadata !{i32 786443, metadata !5, metadata !1622, i32 946, i32 8, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1626 = metadata !{i32 948, i32 11, metadata !1625, null}
!1627 = metadata !{i32 949, i32 5, metadata !1625, null}
!1628 = metadata !{i32 950, i32 5, metadata !1625, null}
!1629 = metadata !{i32 951, i32 5, metadata !1625, null}
!1630 = metadata !{i32 952, i32 5, metadata !1625, null}
!1631 = metadata !{i32 954, i32 1, metadata !143, null}
!1632 = metadata !{i32 786689, metadata !144, metadata !"L", metadata !6, i32 16778179, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 963]
!1633 = metadata !{i32 963, i32 43, metadata !144, null}
!1634 = metadata !{i32 786689, metadata !144, metadata !"modname", metadata !6, i32 33555395, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [modname] [line 963]
!1635 = metadata !{i32 963, i32 58, metadata !144, null}
!1636 = metadata !{i32 786689, metadata !144, metadata !"openf", metadata !6, i32 50332612, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [openf] [line 964]
!1637 = metadata !{i32 964, i32 46, metadata !144, null}
!1638 = metadata !{i32 786689, metadata !144, metadata !"glb", metadata !6, i32 67109828, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [glb] [line 964]
!1639 = metadata !{i32 964, i32 57, metadata !144, null}
!1640 = metadata !{i32 965, i32 3, metadata !144, null}
!1641 = metadata !{i32 966, i32 3, metadata !144, null}
!1642 = metadata !{i32 967, i32 8, metadata !1643, null}
!1643 = metadata !{i32 786443, metadata !5, metadata !144, i32 967, i32 7, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1644 = metadata !{i32 968, i32 5, metadata !1645, null}
!1645 = metadata !{i32 786443, metadata !5, metadata !1643, i32 967, i32 30, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1646 = metadata !{i32 969, i32 5, metadata !1645, null}
!1647 = metadata !{i32 970, i32 5, metadata !1645, null}
!1648 = metadata !{i32 971, i32 5, metadata !1645, null}
!1649 = metadata !{i32 972, i32 5, metadata !1645, null}
!1650 = metadata !{i32 973, i32 5, metadata !1645, null}
!1651 = metadata !{i32 974, i32 3, metadata !1645, null}
!1652 = metadata !{i32 975, i32 3, metadata !144, null}
!1653 = metadata !{i32 976, i32 7, metadata !1654, null}
!1654 = metadata !{i32 786443, metadata !5, metadata !144, i32 976, i32 7, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1655 = metadata !{i32 977, i32 5, metadata !1656, null}
!1656 = metadata !{i32 786443, metadata !5, metadata !1654, i32 976, i32 12, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1657 = metadata !{i32 978, i32 5, metadata !1656, null}
!1658 = metadata !{i32 979, i32 3, metadata !1656, null}
!1659 = metadata !{i32 980, i32 1, metadata !144, null}
!1660 = metadata !{i32 786689, metadata !147, metadata !"L", metadata !6, i32 16778199, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 983]
!1661 = metadata !{i32 983, i32 46, metadata !147, null}
!1662 = metadata !{i32 786689, metadata !147, metadata !"s", metadata !6, i32 33555415, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 983]
!1663 = metadata !{i32 983, i32 61, metadata !147, null}
!1664 = metadata !{i32 786689, metadata !147, metadata !"p", metadata !6, i32 50332631, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 983]
!1665 = metadata !{i32 983, i32 76, metadata !147, null}
!1666 = metadata !{i32 786689, metadata !147, metadata !"r", metadata !6, i32 67109848, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 984]
!1667 = metadata !{i32 984, i32 76, metadata !147, null}
!1668 = metadata !{i32 786688, metadata !147, metadata !"wild", metadata !6, i32 985, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wild] [line 985]
!1669 = metadata !{i32 985, i32 15, metadata !147, null}
!1670 = metadata !{i32 786688, metadata !147, metadata !"l", metadata !6, i32 986, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 986]
!1671 = metadata !{i32 986, i32 10, metadata !147, null}
!1672 = metadata !{i32 986, i32 14, metadata !147, null}
!1673 = metadata !{i32 786688, metadata !147, metadata !"b", metadata !6, i32 987, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 987]
!1674 = metadata !{i32 987, i32 15, metadata !147, null}
!1675 = metadata !{i32 988, i32 3, metadata !147, null}
!1676 = metadata !{i32 989, i32 3, metadata !147, null}
!1677 = metadata !{i32 989, i32 18, metadata !1678, null}
!1678 = metadata !{i32 786443, metadata !5, metadata !147, i32 989, i32 18, i32 1, i32 183} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1679 = metadata !{i32 990, i32 5, metadata !1680, null}
!1680 = metadata !{i32 786443, metadata !5, metadata !147, i32 989, i32 41, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1681 = metadata !{i32 991, i32 5, metadata !1680, null}
!1682 = metadata !{i32 992, i32 5, metadata !1680, null}
!1683 = metadata !{i32 993, i32 3, metadata !1680, null}
!1684 = metadata !{i32 994, i32 3, metadata !147, null}
!1685 = metadata !{i32 995, i32 3, metadata !147, null}
!1686 = metadata !{i32 996, i32 10, metadata !147, null}
!1687 = metadata !{i32 786688, metadata !150, metadata !"L", metadata !6, i32 1019, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L] [line 1019]
!1688 = metadata !{i32 1019, i32 14, metadata !150, null}
!1689 = metadata !{i32 1019, i32 18, metadata !150, null}
!1690 = metadata !{i32 1020, i32 7, metadata !1691, null}
!1691 = metadata !{i32 786443, metadata !5, metadata !150, i32 1020, i32 7, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1692 = metadata !{i32 1020, i32 10, metadata !1693, null}
!1693 = metadata !{i32 786443, metadata !5, metadata !1691, i32 1020, i32 10, i32 1, i32 184} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1694 = metadata !{i32 1021, i32 3, metadata !150, null}
!1695 = metadata !{i32 786689, metadata !157, metadata !"ud", metadata !6, i32 16778216, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ud] [line 1000]
!1696 = metadata !{i32 1000, i32 29, metadata !157, null}
!1697 = metadata !{i32 786689, metadata !157, metadata !"ptr", metadata !6, i32 33555432, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ptr] [line 1000]
!1698 = metadata !{i32 1000, i32 39, metadata !157, null}
!1699 = metadata !{i32 786689, metadata !157, metadata !"osize", metadata !6, i32 50332648, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [osize] [line 1000]
!1700 = metadata !{i32 1000, i32 51, metadata !157, null}
!1701 = metadata !{i32 786689, metadata !157, metadata !"nsize", metadata !6, i32 67109864, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsize] [line 1000]
!1702 = metadata !{i32 1000, i32 65, metadata !157, null}
!1703 = metadata !{i32 1001, i32 3, metadata !157, null}
!1704 = metadata !{i32 1001, i32 13, metadata !157, null}
!1705 = metadata !{i32 1002, i32 7, metadata !1706, null}
!1706 = metadata !{i32 786443, metadata !5, metadata !157, i32 1002, i32 7, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1707 = metadata !{i32 1003, i32 5, metadata !1708, null}
!1708 = metadata !{i32 786443, metadata !5, metadata !1706, i32 1002, i32 19, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1709 = metadata !{i32 1004, i32 5, metadata !1708, null}
!1710 = metadata !{i32 1007, i32 12, metadata !1706, null}
!1711 = metadata !{i32 1008, i32 1, metadata !157, null}
!1712 = metadata !{i32 786689, metadata !156, metadata !"L", metadata !6, i32 16778227, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1011]
!1713 = metadata !{i32 1011, i32 30, metadata !156, null}
!1714 = metadata !{i32 1012, i32 3, metadata !156, null}
!1715 = metadata !{i32 1014, i32 3, metadata !156, null}
!1716 = metadata !{i32 786689, metadata !153, metadata !"L", metadata !6, i32 16778241, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1025]
!1717 = metadata !{i32 1025, i32 48, metadata !153, null}
!1718 = metadata !{i32 786689, metadata !153, metadata !"ver", metadata !6, i32 33555457, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ver] [line 1025]
!1719 = metadata !{i32 1025, i32 62, metadata !153, null}
!1720 = metadata !{i32 786689, metadata !153, metadata !"sz", metadata !6, i32 50332673, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sz] [line 1025]
!1721 = metadata !{i32 1025, i32 74, metadata !153, null}
!1722 = metadata !{i32 786688, metadata !153, metadata !"v", metadata !6, i32 1026, metadata !1723, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 1026]
!1723 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1724} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1724 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lua_Number]
!1725 = metadata !{i32 1026, i32 21, metadata !153, null}
!1726 = metadata !{i32 1026, i32 25, metadata !153, null}
!1727 = metadata !{i32 1027, i32 7, metadata !1728, null}
!1728 = metadata !{i32 786443, metadata !5, metadata !153, i32 1027, i32 7, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1729 = metadata !{i32 1028, i32 5, metadata !1728, null}
!1730 = metadata !{i32 1029, i32 7, metadata !1731, null}
!1731 = metadata !{i32 786443, metadata !5, metadata !153, i32 1029, i32 7, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1732 = metadata !{i32 1029, i32 12, metadata !1731, null}
!1733 = metadata !{i32 1030, i32 5, metadata !1731, null}
!1734 = metadata !{i32 1031, i32 12, metadata !1735, null}
!1735 = metadata !{i32 786443, metadata !5, metadata !1731, i32 1031, i32 12, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1736 = metadata !{i32 1032, i32 5, metadata !1735, null}
!1737 = metadata !{i32 1034, i32 1, metadata !153, null}
!1738 = metadata !{i32 786689, metadata !232, metadata !"lf", metadata !6, i32 16777886, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lf] [line 670]
!1739 = metadata !{i32 670, i32 28, metadata !232, null}
!1740 = metadata !{i32 786688, metadata !232, metadata !"p", metadata !6, i32 671, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 671]
!1741 = metadata !{i32 671, i32 15, metadata !232, null}
!1742 = metadata !{i32 671, i32 3, metadata !232, null}
!1743 = metadata !{i32 786688, metadata !232, metadata !"c", metadata !6, i32 672, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 672]
!1744 = metadata !{i32 672, i32 7, metadata !232, null}
!1745 = metadata !{i32 673, i32 3, metadata !232, null}
!1746 = metadata !{i32 674, i32 3, metadata !232, null}
!1747 = metadata !{i32 675, i32 9, metadata !1748, null}
!1748 = metadata !{i32 786443, metadata !5, metadata !232, i32 674, i32 6, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1749 = metadata !{i32 676, i32 9, metadata !1750, null}
!1750 = metadata !{i32 786443, metadata !5, metadata !1748, i32 676, i32 9, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1751 = metadata !{i32 676, i32 9, metadata !1752, null}
!1752 = metadata !{i32 786443, metadata !5, metadata !1750, i32 676, i32 9, i32 2, i32 186} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1753 = metadata !{i32 676, i32 55, metadata !1754, null}
!1754 = metadata !{i32 786443, metadata !5, metadata !1755, i32 676, i32 55, i32 3, i32 187} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1755 = metadata !{i32 786443, metadata !5, metadata !1750, i32 676, i32 55, i32 1, i32 185} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1756 = metadata !{i32 677, i32 5, metadata !1748, null}
!1757 = metadata !{i32 678, i32 3, metadata !1748, null}
!1758 = metadata !{i32 678, i32 3, metadata !1759, null}
!1759 = metadata !{i32 786443, metadata !5, metadata !1748, i32 678, i32 3, i32 1, i32 188} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1760 = metadata !{i32 679, i32 3, metadata !232, null}
!1761 = metadata !{i32 680, i32 10, metadata !232, null}
!1762 = metadata !{i32 681, i32 1, metadata !232, null}
!1763 = metadata !{i32 786689, metadata !241, metadata !"L", metadata !6, i32 16777693, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 477]
!1764 = metadata !{i32 477, i32 30, metadata !241, null}
!1765 = metadata !{i32 478, i32 3, metadata !241, null}
!1766 = metadata !{i32 479, i32 3, metadata !241, null}
!1767 = metadata !{i32 786689, metadata !275, metadata !"L", metadata !6, i32 16777262, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 46]
!1768 = metadata !{i32 46, i32 34, metadata !275, null}
!1769 = metadata !{i32 786689, metadata !275, metadata !"objidx", metadata !6, i32 33554478, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [objidx] [line 46]
!1770 = metadata !{i32 46, i32 41, metadata !275, null}
!1771 = metadata !{i32 786689, metadata !275, metadata !"level", metadata !6, i32 50331694, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [level] [line 46]
!1772 = metadata !{i32 46, i32 53, metadata !275, null}
!1773 = metadata !{i32 47, i32 7, metadata !1774, null}
!1774 = metadata !{i32 786443, metadata !5, metadata !275, i32 47, i32 7, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1775 = metadata !{i32 47, i32 22, metadata !1776, null}
!1776 = metadata !{i32 786443, metadata !5, metadata !1774, i32 47, i32 22, i32 1, i32 189} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1777 = metadata !{i32 48, i32 5, metadata !1774, null}
!1778 = metadata !{i32 49, i32 3, metadata !275, null}
!1779 = metadata !{i32 50, i32 3, metadata !275, null}
!1780 = metadata !{i32 50, i32 10, metadata !1781, null}
!1781 = metadata !{i32 786443, metadata !5, metadata !275, i32 50, i32 10, i32 1, i32 190} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1782 = metadata !{i32 51, i32 9, metadata !1783, null}
!1783 = metadata !{i32 786443, metadata !5, metadata !1784, i32 51, i32 9, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1784 = metadata !{i32 786443, metadata !5, metadata !275, i32 50, i32 27, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1785 = metadata !{i32 52, i32 11, metadata !1786, null}
!1786 = metadata !{i32 786443, metadata !5, metadata !1787, i32 52, i32 11, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1787 = metadata !{i32 786443, metadata !5, metadata !1783, i32 51, i32 41, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1788 = metadata !{i32 53, i32 9, metadata !1789, null}
!1789 = metadata !{i32 786443, metadata !5, metadata !1786, i32 52, i32 40, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1790 = metadata !{i32 54, i32 9, metadata !1789, null}
!1791 = metadata !{i32 56, i32 16, metadata !1792, null}
!1792 = metadata !{i32 786443, metadata !5, metadata !1786, i32 56, i32 16, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1793 = metadata !{i32 57, i32 9, metadata !1794, null}
!1794 = metadata !{i32 786443, metadata !5, metadata !1792, i32 56, i32 49, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lauxlib.c]
!1795 = metadata !{i32 58, i32 9, metadata !1794, null} ; [ DW_TAG_imported_module ]
!1796 = metadata !{i32 59, i32 9, metadata !1794, null}
!1797 = metadata !{i32 60, i32 9, metadata !1794, null}
!1798 = metadata !{i32 61, i32 9, metadata !1794, null}
!1799 = metadata !{i32 63, i32 5, metadata !1787, null}
!1800 = metadata !{i32 64, i32 5, metadata !1784, null}
!1801 = metadata !{i32 65, i32 3, metadata !1784, null}
!1802 = metadata !{i32 66, i32 3, metadata !275, null}
!1803 = metadata !{i32 67, i32 1, metadata !275, null}
