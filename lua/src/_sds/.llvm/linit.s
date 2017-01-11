; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/linit.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque

@loadedlibs = internal constant [12 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_base }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8]* @.str1, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_package }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_coroutine }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_table }, %struct.luaL_Reg { i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_io }, %struct.luaL_Reg { i8* getelementptr inbounds ([3 x i8]* @.str5, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_os }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_string }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str7, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_math }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str8, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_utf8 }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_debug }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_bit32 }, %struct.luaL_Reg zeroinitializer], align 4
@.str = private unnamed_addr constant [3 x i8] c"_G\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"coroutine\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"os\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@.str8 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str9 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str10 = private unnamed_addr constant [6 x i8] c"bit32\00", align 1

; Function Attrs: nounwind
define void @luaL_openlibs(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %lib = alloca %struct.luaL_Reg*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !73), !dbg !74
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Reg** %lib}, metadata !75), !dbg !77
  store %struct.luaL_Reg* getelementptr inbounds ([12 x %struct.luaL_Reg]* @loadedlibs, i32 0, i32 0), %struct.luaL_Reg** %lib, align 4, !dbg !78
  br label %2, !dbg !78

; <label>:2                                       ; preds = %16, %0
  %3 = load %struct.luaL_Reg** %lib, align 4, !dbg !80
  %4 = getelementptr inbounds %struct.luaL_Reg* %3, i32 0, i32 1, !dbg !80
  %5 = load i32 (%struct.lua_State*)** %4, align 4, !dbg !80
  %6 = icmp ne i32 (%struct.lua_State*)* %5, null, !dbg !80
  br i1 %6, label %7, label %19, !dbg !80

; <label>:7                                       ; preds = %2
  %8 = load %struct.lua_State** %1, align 4, !dbg !83
  %9 = load %struct.luaL_Reg** %lib, align 4, !dbg !83
  %10 = getelementptr inbounds %struct.luaL_Reg* %9, i32 0, i32 0, !dbg !83
  %11 = load i8** %10, align 4, !dbg !83
  %12 = load %struct.luaL_Reg** %lib, align 4, !dbg !83
  %13 = getelementptr inbounds %struct.luaL_Reg* %12, i32 0, i32 1, !dbg !83
  %14 = load i32 (%struct.lua_State*)** %13, align 4, !dbg !83
  call void @luaL_requiref(%struct.lua_State* %8, i8* %11, i32 (%struct.lua_State*)* %14, i32 1), !dbg !83
  %15 = load %struct.lua_State** %1, align 4, !dbg !85
  call void @lua_settop(%struct.lua_State* %15, i32 -2), !dbg !85
  br label %16, !dbg !86

; <label>:16                                      ; preds = %7
  %17 = load %struct.luaL_Reg** %lib, align 4, !dbg !87
  %18 = getelementptr inbounds %struct.luaL_Reg* %17, i32 1, !dbg !87
  store %struct.luaL_Reg* %18, %struct.luaL_Reg** %lib, align 4, !dbg !87
  br label %2, !dbg !87

; <label>:19                                      ; preds = %2
  ret void, !dbg !88
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @luaL_requiref(%struct.lua_State*, i8*, i32 (%struct.lua_State*)*, i32) #2

declare void @lua_settop(%struct.lua_State*, i32) #2

declare i32 @luaopen_base(%struct.lua_State*) #2

declare i32 @luaopen_package(%struct.lua_State*) #2

declare i32 @luaopen_coroutine(%struct.lua_State*) #2

declare i32 @luaopen_table(%struct.lua_State*) #2

declare i32 @luaopen_io(%struct.lua_State*) #2

declare i32 @luaopen_os(%struct.lua_State*) #2

declare i32 @luaopen_string(%struct.lua_State*) #2

declare i32 @luaopen_math(%struct.lua_State*) #2

declare i32 @luaopen_utf8(%struct.lua_State*) #2

declare i32 @luaopen_debug(%struct.lua_State*) #2

declare i32 @luaopen_bit32(%struct.lua_State*) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!xidane.function_declaration_type = !{!33, !61, !35, !62, !37, !63, !39, !64, !41, !64, !43, !64, !45, !64, !47, !64, !49, !64, !51, !64, !53, !64, !55, !64, !57, !64, !59, !64}
!xidane.function_declaration_filename = !{!33, !65, !35, !66, !37, !67, !39, !65, !41, !65, !43, !65, !45, !65, !47, !65, !49, !65, !51, !65, !53, !65, !55, !65, !57, !65, !59, !65}
!xidane.ExternC = !{!33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59}
!llvm.module.flags = !{!68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !13, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\linit.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clinit.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaL_openlibs", metadata !"luaL_openlibs", metadata !"", i32 60, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @luaL_openlibs, null, null, metadata !2, i32 60} ; [ DW_TAG_subprogram ] [line 60] [def] [luaL_openlibs]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/linit.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/linit.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!10 = metadata !{i32 786454, metadata !11, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!11 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!12 = metadata !{i32 786451, metadata !11, null, metadata !"lua_State", i32 56, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 56, size 0, align 0, offset 0] [decl] [from ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786484, i32 0, null, metadata !"loadedlibs", metadata !"loadedlibs", metadata !"", metadata !6, i32 42, metadata !15, i32 1, i32 1, [12 x %struct.luaL_Reg]* @loadedlibs, null} ; [ DW_TAG_variable ] [loadedlibs] [line 42] [local] [def]
!15 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !16, metadata !31, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from ]
!16 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from luaL_Reg]
!17 = metadata !{i32 786454, metadata !18, null, metadata !"luaL_Reg", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [luaL_Reg] [line 26, size 0, align 0, offset 0] [from luaL_Reg]
!18 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!19 = metadata !{i32 786451, metadata !18, null, metadata !"luaL_Reg", i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !20, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Reg] [line 23, size 64, align 32, offset 0] [def] [from ]
!20 = metadata !{metadata !21, metadata !25}
!21 = metadata !{i32 786445, metadata !18, metadata !19, metadata !"name", i32 24, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [name] [line 24, size 32, align 32, offset 0] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!23 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!24 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!25 = metadata !{i32 786445, metadata !18, metadata !19, metadata !"func", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [func] [line 25, size 32, align 32, offset 32] [from lua_CFunction]
!26 = metadata !{i32 786454, metadata !11, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!28 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{metadata !30, metadata !9}
!30 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 786465, i64 0, i64 12}       ; [ DW_TAG_subrange_type ] [0, 11]
!33 = metadata !{void (%struct.lua_State*)* @luaL_openlibs}
!34 = metadata !{metadata !"luaL_openlibs"}
!35 = metadata !{void (%struct.lua_State*, i8*, i32 (%struct.lua_State*)*, i32)* @luaL_requiref}
!36 = metadata !{metadata !"luaL_requiref"}
!37 = metadata !{void (%struct.lua_State*, i32)* @lua_settop}
!38 = metadata !{metadata !"lua_settop"}
!39 = metadata !{i32 (%struct.lua_State*)* @luaopen_base}
!40 = metadata !{metadata !"luaopen_base"}
!41 = metadata !{i32 (%struct.lua_State*)* @luaopen_package}
!42 = metadata !{metadata !"luaopen_package"}
!43 = metadata !{i32 (%struct.lua_State*)* @luaopen_coroutine}
!44 = metadata !{metadata !"luaopen_coroutine"}
!45 = metadata !{i32 (%struct.lua_State*)* @luaopen_table}
!46 = metadata !{metadata !"luaopen_table"}
!47 = metadata !{i32 (%struct.lua_State*)* @luaopen_io}
!48 = metadata !{metadata !"luaopen_io"}
!49 = metadata !{i32 (%struct.lua_State*)* @luaopen_os}
!50 = metadata !{metadata !"luaopen_os"}
!51 = metadata !{i32 (%struct.lua_State*)* @luaopen_string}
!52 = metadata !{metadata !"luaopen_string"}
!53 = metadata !{i32 (%struct.lua_State*)* @luaopen_math}
!54 = metadata !{metadata !"luaopen_math"}
!55 = metadata !{i32 (%struct.lua_State*)* @luaopen_utf8}
!56 = metadata !{metadata !"luaopen_utf8"}
!57 = metadata !{i32 (%struct.lua_State*)* @luaopen_debug}
!58 = metadata !{metadata !"luaopen_debug"}
!59 = metadata !{i32 (%struct.lua_State*)* @luaopen_bit32}
!60 = metadata !{metadata !"luaopen_bit32"}
!61 = metadata !{metadata !"void.lua_State *.1"}
!62 = metadata !{metadata !"void.lua_State *.1.const char *.1.lua_CFunction.1.int.0"}
!63 = metadata !{metadata !"void.lua_State *.1.int.0"}
!64 = metadata !{metadata !"int.lua_State *.1"}
!65 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lualib.h"}
!66 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h"}
!67 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h"}
!68 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!69 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!70 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!71 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!72 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!73 = metadata !{i32 786689, metadata !4, metadata !"L", metadata !6, i32 16777276, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 60]
!74 = metadata !{i32 60, i32 43, metadata !4, null}
!75 = metadata !{i32 786688, metadata !4, metadata !"lib", metadata !6, i32 61, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lib] [line 61]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!77 = metadata !{i32 61, i32 19, metadata !4, null}
!78 = metadata !{i32 63, i32 8, metadata !79, null}
!79 = metadata !{i32 786443, metadata !5, metadata !4, i32 63, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/linit.c]
!80 = metadata !{i32 63, i32 8, metadata !81, null}
!81 = metadata !{i32 786443, metadata !5, metadata !82, i32 63, i32 8, i32 2, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/linit.c]
!82 = metadata !{i32 786443, metadata !5, metadata !79, i32 63, i32 8, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/linit.c]
!83 = metadata !{i32 64, i32 5, metadata !84, null}
!84 = metadata !{i32 786443, metadata !5, metadata !79, i32 63, i32 44, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/linit.c]
!85 = metadata !{i32 65, i32 5, metadata !84, null}
!86 = metadata !{i32 66, i32 3, metadata !84, null}
!87 = metadata !{i32 63, i32 37, metadata !79, null}
!88 = metadata !{i32 67, i32 1, metadata !4, null}
