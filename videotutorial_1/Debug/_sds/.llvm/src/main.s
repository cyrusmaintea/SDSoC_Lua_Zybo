; ModuleID = 'C:/Users/DevolutionX/workspace/videotutorial_1/src/main.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@L = common global %struct.lua_State* null, align 4
@.str = private unnamed_addr constant [15 x i8] c"lua/script.lua\00", align 1
@status = common global i32 0, align 4
@stderr = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [24 x i8] c"Couldn't load file: %s\0A\00", align 1
@i = common global i32 0, align 4
@.str2 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@result = common global i32 0, align 4
@.str3 = private unnamed_addr constant [26 x i8] c"Failed to run script: %s\0A\00", align 1
@sum = common global double 0.000000e+00, align 8
@.str4 = private unnamed_addr constant [23 x i8] c"Script returned: %.0f\0A\00", align 1

; Function Attrs: nounwind
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !81), !dbg !82
  store i8** %argv, i8*** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !83), !dbg !84
  %4 = call %struct.lua_State* @luaL_newstate(), !dbg !85
  store %struct.lua_State* %4, %struct.lua_State** @L, align 4, !dbg !85
  %5 = load %struct.lua_State** @L, align 4, !dbg !86
  call void @luaL_openlibs(%struct.lua_State* %5), !dbg !86
  %6 = load %struct.lua_State** @L, align 4, !dbg !87
  %7 = call i32 @luaL_loadfilex(%struct.lua_State* %6, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i8* null), !dbg !87
  store i32 %7, i32* @status, align 4, !dbg !87
  %8 = load i32* @status, align 4, !dbg !88
  %9 = icmp ne i32 %8, 0, !dbg !88
  br i1 %9, label %10, label %15, !dbg !88

; <label>:10                                      ; preds = %0
  %11 = load %struct._IO_FILE** @stderr, align 4, !dbg !90
  %12 = load %struct.lua_State** @L, align 4, !dbg !92
  %13 = call i8* @lua_tolstring(%struct.lua_State* %12, i32 -1, i32* null), !dbg !92
  %14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([24 x i8]* @.str1, i32 0, i32 0), i8* %13), !dbg !90
  call void @exit(i32 1) #4, !dbg !93
  unreachable, !dbg !93

; <label>:15                                      ; preds = %0
  %16 = load %struct.lua_State** @L, align 4, !dbg !94
  call void @lua_createtable(%struct.lua_State* %16, i32 0, i32 0), !dbg !94
  store i32 1, i32* @i, align 4, !dbg !95
  br label %17, !dbg !95

; <label>:17                                      ; preds = %29, %15
  %18 = load i32* @i, align 4, !dbg !97
  %19 = icmp sle i32 %18, 5, !dbg !97
  br i1 %19, label %20, label %32, !dbg !97

; <label>:20                                      ; preds = %17
  %21 = load %struct.lua_State** @L, align 4, !dbg !100
  %22 = load i32* @i, align 4, !dbg !100
  %23 = sitofp i32 %22 to double, !dbg !100
  call void @lua_pushnumber(%struct.lua_State* %21, double %23), !dbg !100
  %24 = load %struct.lua_State** @L, align 4, !dbg !102
  %25 = load i32* @i, align 4, !dbg !102
  %26 = mul nsw i32 %25, 2, !dbg !102
  %27 = sitofp i32 %26 to double, !dbg !102
  call void @lua_pushnumber(%struct.lua_State* %24, double %27), !dbg !102
  %28 = load %struct.lua_State** @L, align 4, !dbg !103
  call void @lua_rawset(%struct.lua_State* %28, i32 -3), !dbg !103
  br label %29, !dbg !104

; <label>:29                                      ; preds = %20
  %30 = load i32* @i, align 4, !dbg !105
  %31 = add nsw i32 %30, 1, !dbg !105
  store i32 %31, i32* @i, align 4, !dbg !105
  br label %17, !dbg !105

; <label>:32                                      ; preds = %17
  %33 = load %struct.lua_State** @L, align 4, !dbg !106
  call void @lua_setglobal(%struct.lua_State* %33, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0)), !dbg !106
  %34 = load %struct.lua_State** @L, align 4, !dbg !107
  %35 = call i32 @lua_pcallk(%struct.lua_State* %34, i32 0, i32 -1, i32 0, i32 0, i32 (%struct.lua_State*, i32, i32)* null), !dbg !107
  store i32 %35, i32* @result, align 4, !dbg !107
  %36 = load i32* @result, align 4, !dbg !108
  %37 = icmp ne i32 %36, 0, !dbg !108
  br i1 %37, label %38, label %43, !dbg !108

; <label>:38                                      ; preds = %32
  %39 = load %struct._IO_FILE** @stderr, align 4, !dbg !110
  %40 = load %struct.lua_State** @L, align 4, !dbg !112
  %41 = call i8* @lua_tolstring(%struct.lua_State* %40, i32 -1, i32* null), !dbg !112
  %42 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([26 x i8]* @.str3, i32 0, i32 0), i8* %41), !dbg !110
  call void @exit(i32 1) #4, !dbg !113
  unreachable, !dbg !113

; <label>:43                                      ; preds = %32
  %44 = load %struct.lua_State** @L, align 4, !dbg !114
  %45 = call double @lua_tonumberx(%struct.lua_State* %44, i32 -1, i32* null), !dbg !114
  store double %45, double* @sum, align 8, !dbg !114
  %46 = load double* @sum, align 8, !dbg !115
  %47 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str4, i32 0, i32 0), double %46), !dbg !115
  %48 = load %struct.lua_State** @L, align 4, !dbg !116
  call void @lua_settop(%struct.lua_State* %48, i32 -2), !dbg !116
  %49 = load %struct.lua_State** @L, align 4, !dbg !117
  call void @lua_close(%struct.lua_State* %49), !dbg !117
  ret i32 0, !dbg !118
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare %struct.lua_State* @luaL_newstate() #2

declare void @luaL_openlibs(%struct.lua_State*) #2

declare i32 @luaL_loadfilex(%struct.lua_State*, i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i8* @lua_tolstring(%struct.lua_State*, i32, i32*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare void @lua_createtable(%struct.lua_State*, i32, i32) #2

declare void @lua_pushnumber(%struct.lua_State*, double) #2

declare void @lua_rawset(%struct.lua_State*, i32) #2

declare void @lua_setglobal(%struct.lua_State*, i8*) #2

declare i32 @lua_pcallk(%struct.lua_State*, i32, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*) #2

declare double @lua_tonumberx(%struct.lua_State*, i32, i32*) #2

declare i32 @printf(i8*, ...) #2

declare void @lua_settop(%struct.lua_State*, i32) #2

declare void @lua_close(%struct.lua_State*) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!xidane.function_declaration_type = !{!24, !56, !26, !57, !28, !58, !30, !59, !32, !60, !34, !61, !36, !62, !38, !63, !40, !64, !42, !65, !44, !66, !46, !67, !48, !68, !50, !69, !52, !65, !54, !58}
!xidane.function_declaration_filename = !{!24, !70, !26, !71, !28, !72, !30, !71, !32, !73, !34, !74, !36, !75, !38, !74, !40, !74, !42, !74, !44, !74, !46, !74, !48, !74, !50, !73, !52, !74, !54, !74}
!xidane.ExternC = !{!24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !13, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\videotutorial_1\Debug/../src\main.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../src\5Cmain.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Cvideotutorial_1\5CDebug"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"main", metadata !"main", metadata !"", i32 19, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 19} ; [ DW_TAG_subprogram ] [line 19] [def] [main]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/videotutorial_1/src/main.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Cvideotutorial_1\5CDebug"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\videotutorial_1\Debug/C:/Users/DevolutionX/workspace/videotutorial_1/src/main.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!12 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!13 = metadata !{metadata !14, metadata !19, metadata !20, metadata !21, metadata !22}
!14 = metadata !{i32 786484, i32 0, null, metadata !"L", metadata !"L", metadata !"", metadata !6, i32 15, metadata !15, i32 0, i32 1, %struct.lua_State** @L, null} ; [ DW_TAG_variable ] [L] [line 15] [def]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!16 = metadata !{i32 786454, metadata !17, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!17 = metadata !{metadata !"../include/lua\5Clua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Cvideotutorial_1\5CDebug"}
!18 = metadata !{i32 786451, metadata !17, null, metadata !"lua_State", i32 56, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 56, size 0, align 0, offset 0] [decl] [from ]
!19 = metadata !{i32 786484, i32 0, null, metadata !"status", metadata !"status", metadata !"", metadata !6, i32 16, metadata !9, i32 0, i32 1, i32* @status, null} ; [ DW_TAG_variable ] [status] [line 16] [def]
!20 = metadata !{i32 786484, i32 0, null, metadata !"result", metadata !"result", metadata !"", metadata !6, i32 16, metadata !9, i32 0, i32 1, i32* @result, null} ; [ DW_TAG_variable ] [result] [line 16] [def]
!21 = metadata !{i32 786484, i32 0, null, metadata !"i", metadata !"i", metadata !"", metadata !6, i32 16, metadata !9, i32 0, i32 1, i32* @i, null} ; [ DW_TAG_variable ] [i] [line 16] [def]
!22 = metadata !{i32 786484, i32 0, null, metadata !"sum", metadata !"sum", metadata !"", metadata !6, i32 17, metadata !23, i32 0, i32 1, double* @sum, null} ; [ DW_TAG_variable ] [sum] [line 17] [def]
!23 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!24 = metadata !{i32 (i32, i8**)* @main}
!25 = metadata !{metadata !"main"}
!26 = metadata !{%struct.lua_State* ()* @luaL_newstate}
!27 = metadata !{metadata !"luaL_newstate"}
!28 = metadata !{void (%struct.lua_State*)* @luaL_openlibs}
!29 = metadata !{metadata !"luaL_openlibs"}
!30 = metadata !{i32 (%struct.lua_State*, i8*, i8*)* @luaL_loadfilex}
!31 = metadata !{metadata !"luaL_loadfilex"}
!32 = metadata !{i32 (%struct._IO_FILE*, i8*, ...)* @fprintf}
!33 = metadata !{metadata !"fprintf"}
!34 = metadata !{i8* (%struct.lua_State*, i32, i32*)* @lua_tolstring}
!35 = metadata !{metadata !"lua_tolstring"}
!36 = metadata !{void (i32)* @exit}
!37 = metadata !{metadata !"exit"}
!38 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_createtable}
!39 = metadata !{metadata !"lua_createtable"}
!40 = metadata !{void (%struct.lua_State*, double)* @lua_pushnumber}
!41 = metadata !{metadata !"lua_pushnumber"}
!42 = metadata !{void (%struct.lua_State*, i32)* @lua_rawset}
!43 = metadata !{metadata !"lua_rawset"}
!44 = metadata !{void (%struct.lua_State*, i8*)* @lua_setglobal}
!45 = metadata !{metadata !"lua_setglobal"}
!46 = metadata !{i32 (%struct.lua_State*, i32, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*)* @lua_pcallk}
!47 = metadata !{metadata !"lua_pcallk"}
!48 = metadata !{double (%struct.lua_State*, i32, i32*)* @lua_tonumberx}
!49 = metadata !{metadata !"lua_tonumberx"}
!50 = metadata !{i32 (i8*, ...)* @printf}
!51 = metadata !{metadata !"printf"}
!52 = metadata !{void (%struct.lua_State*, i32)* @lua_settop}
!53 = metadata !{metadata !"lua_settop"}
!54 = metadata !{void (%struct.lua_State*)* @lua_close}
!55 = metadata !{metadata !"lua_close"}
!56 = metadata !{metadata !"int.int.0.char *[].1"}
!57 = metadata !{metadata !"lua_State ."}
!58 = metadata !{metadata !"void.lua_State *.1"}
!59 = metadata !{metadata !"int.lua_State *.1.const char *.1.const char *.1"}
!60 = metadata !{metadata !"int.FILE *restrict.1.const char *restrict.1"}
!61 = metadata !{metadata !"const char .lua_State *.1.int.0.size_t *.1"}
!62 = metadata !{metadata !"void.int.0"}
!63 = metadata !{metadata !"void.lua_State *.1.int.0.int.0"}
!64 = metadata !{metadata !"void.lua_State *.1.lua_Number.0"}
!65 = metadata !{metadata !"void.lua_State *.1.int.0"}
!66 = metadata !{metadata !"void.lua_State *.1.const char *.1"}
!67 = metadata !{metadata !"int.lua_State *.1.int.0.int.0.int.0.lua_KContext.0.lua_KFunction.1"}
!68 = metadata !{metadata !"lua_Number.lua_State *.1.int.0.int *.1"}
!69 = metadata !{metadata !"int.const char *restrict.1"}
!70 = metadata !{metadata !"C:/Users/DevolutionX/workspace/videotutorial_1/src/main.c"}
!71 = metadata !{metadata !"../include/lua\5Clauxlib.h"}
!72 = metadata !{metadata !"../include/lua\5Clualib.h"}
!73 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdio.h"}
!74 = metadata !{metadata !"../include/lua\5Clua.h"}
!75 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdlib.h"}
!76 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!77 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!78 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!79 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!80 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!81 = metadata !{i32 786689, metadata !4, metadata !"argc", metadata !6, i32 16777235, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 19]
!82 = metadata !{i32 19, i32 15, metadata !4, null}
!83 = metadata !{i32 786689, metadata !4, metadata !"argv", metadata !6, i32 33554451, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 19]
!84 = metadata !{i32 19, i32 27, metadata !4, null}
!85 = metadata !{i32 22, i32 9, metadata !4, null}
!86 = metadata !{i32 25, i32 5, metadata !4, null}
!87 = metadata !{i32 27, i32 14, metadata !4, null}
!88 = metadata !{i32 28, i32 9, metadata !89, null}
!89 = metadata !{i32 786443, metadata !5, metadata !4, i32 28, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\videotutorial_1\Debug/C:/Users/DevolutionX/workspace/videotutorial_1/src/main.c]
!90 = metadata !{i32 29, i32 9, metadata !91, null}
!91 = metadata !{i32 786443, metadata !5, metadata !89, i32 28, i32 17, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\videotutorial_1\Debug/C:/Users/DevolutionX/workspace/videotutorial_1/src/main.c]
!92 = metadata !{i32 29, i32 53, metadata !91, null}
!93 = metadata !{i32 30, i32 9, metadata !91, null}
!94 = metadata !{i32 33, i32 5, metadata !4, null}
!95 = metadata !{i32 35, i32 10, metadata !96, null}
!96 = metadata !{i32 786443, metadata !5, metadata !4, i32 35, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\videotutorial_1\Debug/C:/Users/DevolutionX/workspace/videotutorial_1/src/main.c]
!97 = metadata !{i32 35, i32 10, metadata !98, null}
!98 = metadata !{i32 786443, metadata !5, metadata !99, i32 35, i32 10, i32 2, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\videotutorial_1\Debug/C:/Users/DevolutionX/workspace/videotutorial_1/src/main.c]
!99 = metadata !{i32 786443, metadata !5, metadata !96, i32 35, i32 10, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\videotutorial_1\Debug/C:/Users/DevolutionX/workspace/videotutorial_1/src/main.c]
!100 = metadata !{i32 36, i32 9, metadata !101, null}
!101 = metadata !{i32 786443, metadata !5, metadata !96, i32 35, i32 30, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\videotutorial_1\Debug/C:/Users/DevolutionX/workspace/videotutorial_1/src/main.c]
!102 = metadata !{i32 37, i32 9, metadata !101, null}
!103 = metadata !{i32 38, i32 9, metadata !101, null}
!104 = metadata !{i32 39, i32 5, metadata !101, null}
!105 = metadata !{i32 35, i32 25, metadata !96, null}
!106 = metadata !{i32 41, i32 5, metadata !4, null}
!107 = metadata !{i32 44, i32 14, metadata !4, null}
!108 = metadata !{i32 45, i32 9, metadata !109, null}
!109 = metadata !{i32 786443, metadata !5, metadata !4, i32 45, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\videotutorial_1\Debug/C:/Users/DevolutionX/workspace/videotutorial_1/src/main.c]
!110 = metadata !{i32 46, i32 9, metadata !111, null}
!111 = metadata !{i32 786443, metadata !5, metadata !109, i32 45, i32 17, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\videotutorial_1\Debug/C:/Users/DevolutionX/workspace/videotutorial_1/src/main.c]
!112 = metadata !{i32 46, i32 55, metadata !111, null}
!113 = metadata !{i32 47, i32 9, metadata !111, null}
!114 = metadata !{i32 50, i32 11, metadata !4, null}
!115 = metadata !{i32 52, i32 5, metadata !4, null}
!116 = metadata !{i32 54, i32 5, metadata !4, null}
!117 = metadata !{i32 55, i32 5, metadata !4, null}
!118 = metadata !{i32 57, i32 2, metadata !4, null}
