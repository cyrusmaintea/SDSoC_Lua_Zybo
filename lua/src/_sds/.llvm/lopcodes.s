; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lopcodes.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

@.str = private unnamed_addr constant [5 x i8] c"MOVE\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"LOADK\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"LOADKX\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"LOADBOOL\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"LOADNIL\00", align 1
@.str5 = private unnamed_addr constant [9 x i8] c"GETUPVAL\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"GETTABUP\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"GETTABLE\00", align 1
@.str8 = private unnamed_addr constant [9 x i8] c"SETTABUP\00", align 1
@.str9 = private unnamed_addr constant [9 x i8] c"SETUPVAL\00", align 1
@.str10 = private unnamed_addr constant [9 x i8] c"SETTABLE\00", align 1
@.str11 = private unnamed_addr constant [9 x i8] c"NEWTABLE\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"SELF\00", align 1
@.str13 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"SUB\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"MUL\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"MOD\00", align 1
@.str17 = private unnamed_addr constant [4 x i8] c"POW\00", align 1
@.str18 = private unnamed_addr constant [4 x i8] c"DIV\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"IDIV\00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c"BAND\00", align 1
@.str21 = private unnamed_addr constant [4 x i8] c"BOR\00", align 1
@.str22 = private unnamed_addr constant [5 x i8] c"BXOR\00", align 1
@.str23 = private unnamed_addr constant [4 x i8] c"SHL\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"SHR\00", align 1
@.str25 = private unnamed_addr constant [4 x i8] c"UNM\00", align 1
@.str26 = private unnamed_addr constant [5 x i8] c"BNOT\00", align 1
@.str27 = private unnamed_addr constant [4 x i8] c"NOT\00", align 1
@.str28 = private unnamed_addr constant [4 x i8] c"LEN\00", align 1
@.str29 = private unnamed_addr constant [7 x i8] c"CONCAT\00", align 1
@.str30 = private unnamed_addr constant [4 x i8] c"JMP\00", align 1
@.str31 = private unnamed_addr constant [3 x i8] c"EQ\00", align 1
@.str32 = private unnamed_addr constant [3 x i8] c"LT\00", align 1
@.str33 = private unnamed_addr constant [3 x i8] c"LE\00", align 1
@.str34 = private unnamed_addr constant [5 x i8] c"TEST\00", align 1
@.str35 = private unnamed_addr constant [8 x i8] c"TESTSET\00", align 1
@.str36 = private unnamed_addr constant [5 x i8] c"CALL\00", align 1
@.str37 = private unnamed_addr constant [9 x i8] c"TAILCALL\00", align 1
@.str38 = private unnamed_addr constant [7 x i8] c"RETURN\00", align 1
@.str39 = private unnamed_addr constant [8 x i8] c"FORLOOP\00", align 1
@.str40 = private unnamed_addr constant [8 x i8] c"FORPREP\00", align 1
@.str41 = private unnamed_addr constant [9 x i8] c"TFORCALL\00", align 1
@.str42 = private unnamed_addr constant [9 x i8] c"TFORLOOP\00", align 1
@.str43 = private unnamed_addr constant [8 x i8] c"SETLIST\00", align 1
@.str44 = private unnamed_addr constant [8 x i8] c"CLOSURE\00", align 1
@.str45 = private unnamed_addr constant [7 x i8] c"VARARG\00", align 1
@.str46 = private unnamed_addr constant [9 x i8] c"EXTRAARG\00", align 1
@luaP_opnames = hidden constant [48 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str45, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str46, i32 0, i32 0), i8* null], align 4
@luaP_opmodes = hidden constant [47 x i8] c"`qATPP\5Cl<\10<Tl||||||||||||````h\22\BC\BC\BC\84\E4TT\10bb\04b\14QP\17", align 1

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !2, metadata !3, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lopcodes.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clopcodes.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !14}
!4 = metadata !{i32 786484, i32 0, null, metadata !"luaP_opnames", metadata !"luaP_opnames", metadata !"", metadata !5, i32 20, metadata !7, i32 0, i32 1, [48 x i8*]* @luaP_opnames, null} ; [ DW_TAG_variable ] [luaP_opnames] [line 20] [def]
!5 = metadata !{i32 786473, metadata !6}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lopcodes.c]
!6 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lopcodes.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!7 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 32, i32 0, i32 0, metadata !8, metadata !12, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1536, align 32, offset 0] [from ]
!8 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!10 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!11 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786465, i64 0, i64 48}       ; [ DW_TAG_subrange_type ] [0, 47]
!14 = metadata !{i32 786484, i32 0, null, metadata !"luaP_opmodes", metadata !"luaP_opmodes", metadata !"", metadata !5, i32 74, metadata !15, i32 0, i32 1, [47 x i8]* @luaP_opmodes, null} ; [ DW_TAG_variable ] [luaP_opmodes] [line 74] [def]
!15 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 376, i64 8, i32 0, i32 0, metadata !16, metadata !20, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 376, align 8, offset 0] [from ]
!16 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lu_byte]
!17 = metadata !{i32 786454, metadata !18, null, metadata !"lu_byte", i32 35, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [lu_byte] [line 35, size 0, align 0, offset 0] [from unsigned char]
!18 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llimits.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!19 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786465, i64 0, i64 47}       ; [ DW_TAG_subrange_type ] [0, 46]
!22 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!23 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!24 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!25 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!26 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
