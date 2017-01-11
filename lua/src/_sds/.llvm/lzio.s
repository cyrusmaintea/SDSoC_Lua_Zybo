; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lzio.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.Zio = type { i32, i8*, i8* (%struct.lua_State*, i8*, i32*)*, i8*, %struct.lua_State* }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i32, i32)*, i8*, i32, i32, i32, i32, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { i64 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { i32 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon }
%struct.anon = type { %union.Value, i32, i32 }
%struct.UpVal = type opaque
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, i32, i16, i8 }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { i32 (%struct.lua_State*, i32, i32)*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }

; Function Attrs: nounwind
define hidden i32 @luaZ_fill(%struct.Zio* %z) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Zio*, align 4
  %size = alloca i32, align 4
  %L = alloca %struct.lua_State*, align 4
  %buff = alloca i8*, align 4
  store %struct.Zio* %z, %struct.Zio** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Zio** %2}, metadata !304), !dbg !305
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !306), !dbg !307
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L}, metadata !308), !dbg !309
  %3 = load %struct.Zio** %2, align 4, !dbg !310
  %4 = getelementptr inbounds %struct.Zio* %3, i32 0, i32 4, !dbg !310
  %5 = load %struct.lua_State** %4, align 4, !dbg !310
  store %struct.lua_State* %5, %struct.lua_State** %L, align 4, !dbg !310
  call void @llvm.dbg.declare(metadata !{i8** %buff}, metadata !311), !dbg !312
  %6 = load %struct.Zio** %2, align 4, !dbg !313
  %7 = getelementptr inbounds %struct.Zio* %6, i32 0, i32 2, !dbg !313
  %8 = load i8* (%struct.lua_State*, i8*, i32*)** %7, align 4, !dbg !313
  %9 = load %struct.lua_State** %L, align 4, !dbg !313
  %10 = load %struct.Zio** %2, align 4, !dbg !313
  %11 = getelementptr inbounds %struct.Zio* %10, i32 0, i32 3, !dbg !313
  %12 = load i8** %11, align 4, !dbg !313
  %13 = call i8* %8(%struct.lua_State* %9, i8* %12, i32* %size), !dbg !313
  store i8* %13, i8** %buff, align 4, !dbg !313
  %14 = load i8** %buff, align 4, !dbg !314
  %15 = icmp eq i8* %14, null, !dbg !314
  br i1 %15, label %19, label %16, !dbg !314

; <label>:16                                      ; preds = %0
  %17 = load i32* %size, align 4, !dbg !316
  %18 = icmp eq i32 %17, 0, !dbg !316
  br i1 %18, label %19, label %20, !dbg !316

; <label>:19                                      ; preds = %16, %0
  store i32 -1, i32* %1, !dbg !318
  br label %34, !dbg !318

; <label>:20                                      ; preds = %16
  %21 = load i32* %size, align 4, !dbg !319
  %22 = sub i32 %21, 1, !dbg !319
  %23 = load %struct.Zio** %2, align 4, !dbg !319
  %24 = getelementptr inbounds %struct.Zio* %23, i32 0, i32 0, !dbg !319
  store i32 %22, i32* %24, align 4, !dbg !319
  %25 = load i8** %buff, align 4, !dbg !320
  %26 = load %struct.Zio** %2, align 4, !dbg !320
  %27 = getelementptr inbounds %struct.Zio* %26, i32 0, i32 1, !dbg !320
  store i8* %25, i8** %27, align 4, !dbg !320
  %28 = load %struct.Zio** %2, align 4, !dbg !321
  %29 = getelementptr inbounds %struct.Zio* %28, i32 0, i32 1, !dbg !321
  %30 = load i8** %29, align 4, !dbg !321
  %31 = getelementptr inbounds i8* %30, i32 1, !dbg !321
  store i8* %31, i8** %29, align 4, !dbg !321
  %32 = load i8* %30, align 1, !dbg !321
  %33 = zext i8 %32 to i32, !dbg !321
  store i32 %33, i32* %1, !dbg !321
  br label %34, !dbg !321

; <label>:34                                      ; preds = %20, %19
  %35 = load i32* %1, !dbg !322
  ret i32 %35, !dbg !322
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define hidden void @luaZ_init(%struct.lua_State* %L, %struct.Zio* %z, i8* (%struct.lua_State*, i8*, i32*)* %reader, i8* %data) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.Zio*, align 4
  %3 = alloca i8* (%struct.lua_State*, i8*, i32*)*, align 4
  %4 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !323), !dbg !324
  store %struct.Zio* %z, %struct.Zio** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Zio** %2}, metadata !325), !dbg !326
  store i8* (%struct.lua_State*, i8*, i32*)* %reader, i8* (%struct.lua_State*, i8*, i32*)** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8* (%struct.lua_State*, i8*, i32*)** %3}, metadata !327), !dbg !328
  store i8* %data, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !329), !dbg !330
  %5 = load %struct.lua_State** %1, align 4, !dbg !331
  %6 = load %struct.Zio** %2, align 4, !dbg !331
  %7 = getelementptr inbounds %struct.Zio* %6, i32 0, i32 4, !dbg !331
  store %struct.lua_State* %5, %struct.lua_State** %7, align 4, !dbg !331
  %8 = load i8* (%struct.lua_State*, i8*, i32*)** %3, align 4, !dbg !332
  %9 = load %struct.Zio** %2, align 4, !dbg !332
  %10 = getelementptr inbounds %struct.Zio* %9, i32 0, i32 2, !dbg !332
  store i8* (%struct.lua_State*, i8*, i32*)* %8, i8* (%struct.lua_State*, i8*, i32*)** %10, align 4, !dbg !332
  %11 = load i8** %4, align 4, !dbg !333
  %12 = load %struct.Zio** %2, align 4, !dbg !333
  %13 = getelementptr inbounds %struct.Zio* %12, i32 0, i32 3, !dbg !333
  store i8* %11, i8** %13, align 4, !dbg !333
  %14 = load %struct.Zio** %2, align 4, !dbg !334
  %15 = getelementptr inbounds %struct.Zio* %14, i32 0, i32 0, !dbg !334
  store i32 0, i32* %15, align 4, !dbg !334
  %16 = load %struct.Zio** %2, align 4, !dbg !335
  %17 = getelementptr inbounds %struct.Zio* %16, i32 0, i32 1, !dbg !335
  store i8* null, i8** %17, align 4, !dbg !335
  ret void, !dbg !336
}

; Function Attrs: nounwind
define hidden i32 @luaZ_read(%struct.Zio* %z, i8* %b, i32 %n) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Zio*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %m = alloca i32, align 4
  store %struct.Zio* %z, %struct.Zio** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Zio** %2}, metadata !337), !dbg !338
  store i8* %b, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !339), !dbg !340
  store i32 %n, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !341), !dbg !342
  br label %5, !dbg !343

; <label>:5                                       ; preds = %41, %0
  %6 = load i32* %4, align 4, !dbg !344
  %7 = icmp ne i32 %6, 0, !dbg !344
  br i1 %7, label %8, label %64, !dbg !344

; <label>:8                                       ; preds = %5
  call void @llvm.dbg.declare(metadata !{i32* %m}, metadata !346), !dbg !348
  %9 = load %struct.Zio** %2, align 4, !dbg !349
  %10 = getelementptr inbounds %struct.Zio* %9, i32 0, i32 0, !dbg !349
  %11 = load i32* %10, align 4, !dbg !349
  %12 = icmp eq i32 %11, 0, !dbg !349
  br i1 %12, label %13, label %29, !dbg !349

; <label>:13                                      ; preds = %8
  %14 = load %struct.Zio** %2, align 4, !dbg !351
  %15 = call i32 @luaZ_fill(%struct.Zio* %14), !dbg !351
  %16 = icmp eq i32 %15, -1, !dbg !351
  br i1 %16, label %17, label %19, !dbg !351

; <label>:17                                      ; preds = %13
  %18 = load i32* %4, align 4, !dbg !354
  store i32 %18, i32* %1, !dbg !354
  br label %65, !dbg !354

; <label>:19                                      ; preds = %13
  %20 = load %struct.Zio** %2, align 4, !dbg !355
  %21 = getelementptr inbounds %struct.Zio* %20, i32 0, i32 0, !dbg !355
  %22 = load i32* %21, align 4, !dbg !355
  %23 = add i32 %22, 1, !dbg !355
  store i32 %23, i32* %21, align 4, !dbg !355
  %24 = load %struct.Zio** %2, align 4, !dbg !357
  %25 = getelementptr inbounds %struct.Zio* %24, i32 0, i32 1, !dbg !357
  %26 = load i8** %25, align 4, !dbg !357
  %27 = getelementptr inbounds i8* %26, i32 -1, !dbg !357
  store i8* %27, i8** %25, align 4, !dbg !357
  br label %28

; <label>:28                                      ; preds = %19
  br label %29, !dbg !358

; <label>:29                                      ; preds = %28, %8
  %30 = load i32* %4, align 4, !dbg !359
  %31 = load %struct.Zio** %2, align 4, !dbg !359
  %32 = getelementptr inbounds %struct.Zio* %31, i32 0, i32 0, !dbg !359
  %33 = load i32* %32, align 4, !dbg !359
  %34 = icmp ule i32 %30, %33, !dbg !359
  br i1 %34, label %35, label %37, !dbg !359

; <label>:35                                      ; preds = %29
  %36 = load i32* %4, align 4, !dbg !360
  br label %41, !dbg !360

; <label>:37                                      ; preds = %29
  %38 = load %struct.Zio** %2, align 4, !dbg !362
  %39 = getelementptr inbounds %struct.Zio* %38, i32 0, i32 0, !dbg !362
  %40 = load i32* %39, align 4, !dbg !362
  br label %41, !dbg !362

; <label>:41                                      ; preds = %37, %35
  %42 = phi i32 [ %36, %35 ], [ %40, %37 ], !dbg !359
  store i32 %42, i32* %m, align 4, !dbg !364
  %43 = load i8** %3, align 4, !dbg !367
  %44 = load %struct.Zio** %2, align 4, !dbg !367
  %45 = getelementptr inbounds %struct.Zio* %44, i32 0, i32 1, !dbg !367
  %46 = load i8** %45, align 4, !dbg !367
  %47 = load i32* %m, align 4, !dbg !367
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %43, i8* %46, i32 %47, i32 1, i1 false), !dbg !367
  %48 = load i32* %m, align 4, !dbg !368
  %49 = load %struct.Zio** %2, align 4, !dbg !368
  %50 = getelementptr inbounds %struct.Zio* %49, i32 0, i32 0, !dbg !368
  %51 = load i32* %50, align 4, !dbg !368
  %52 = sub i32 %51, %48, !dbg !368
  store i32 %52, i32* %50, align 4, !dbg !368
  %53 = load i32* %m, align 4, !dbg !369
  %54 = load %struct.Zio** %2, align 4, !dbg !369
  %55 = getelementptr inbounds %struct.Zio* %54, i32 0, i32 1, !dbg !369
  %56 = load i8** %55, align 4, !dbg !369
  %57 = getelementptr inbounds i8* %56, i32 %53, !dbg !369
  store i8* %57, i8** %55, align 4, !dbg !369
  %58 = load i8** %3, align 4, !dbg !370
  %59 = load i32* %m, align 4, !dbg !370
  %60 = getelementptr inbounds i8* %58, i32 %59, !dbg !370
  store i8* %60, i8** %3, align 4, !dbg !370
  %61 = load i32* %m, align 4, !dbg !371
  %62 = load i32* %4, align 4, !dbg !371
  %63 = sub i32 %62, %61, !dbg !371
  store i32 %63, i32* %4, align 4, !dbg !371
  br label %5, !dbg !372

; <label>:64                                      ; preds = %5
  store i32 0, i32* %1, !dbg !373
  br label %65, !dbg !373

; <label>:65                                      ; preds = %64, %17
  %66 = load i32* %1, !dbg !374
  ret i32 %66, !dbg !374
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!289, !290, !291, !292, !293, !294}
!xidane.function_declaration_type = !{!289, !295, !291, !296, !293, !297}
!xidane.function_declaration_filename = !{!289, !298, !291, !298, !293, !298}
!xidane.ExternC = !{!289, !291, !293}
!llvm.module.flags = !{!299, !300, !301, !302}
!llvm.ident = !{!303}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lzio.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clzio.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !283, metadata !286}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaZ_fill", metadata !"luaZ_fill", metadata !"", i32 23, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.Zio*)* @luaZ_fill, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 23] [def] [luaZ_fill]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lzio.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lzio.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ZIO]
!11 = metadata !{i32 786454, metadata !12, null, metadata !"ZIO", i32 18, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [ZIO] [line 18, size 0, align 0, offset 0] [from Zio]
!12 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lzio.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!13 = metadata !{i32 786451, metadata !12, null, metadata !"Zio", i32 55, i64 160, i64 32, i32 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Zio] [line 55, size 160, align 32, offset 0] [def] [from ]
!14 = metadata !{metadata !15, metadata !19, metadata !23, metadata !281, metadata !282}
!15 = metadata !{i32 786445, metadata !12, metadata !13, metadata !"n", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [n] [line 56, size 32, align 32, offset 0] [from size_t]
!16 = metadata !{i32 786454, metadata !17, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!17 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!18 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!19 = metadata !{i32 786445, metadata !12, metadata !13, metadata !"p", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [p] [line 57, size 32, align 32, offset 32] [from ]
!20 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!21 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!22 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!23 = metadata !{i32 786445, metadata !12, metadata !13, metadata !"reader", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [reader] [line 58, size 32, align 32, offset 64] [from lua_Reader]
!24 = metadata !{i32 786454, metadata !25, null, metadata !"lua_Reader", i32 116, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [lua_Reader] [line 116, size 0, align 0, offset 0] [from ]
!25 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!27 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{metadata !20, metadata !29, metadata !63, metadata !280}
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!30 = metadata !{i32 786454, metadata !25, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"lua_State", i32 159, i64 960, i64 32, i32 0, i32 0, null, metadata !33, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 159, size 960, align 32, offset 0] [def] [from ]
!32 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!33 = metadata !{metadata !34, metadata !46, metadata !47, metadata !48, metadata !50, metadata !51, metadata !77, metadata !190, metadata !228, metadata !229, metadata !230, metadata !231, metadata !235, metadata !236, metadata !237, metadata !240, metadata !241, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !279}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"next", i32 160, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [next] [line 160, size 32, align 32, offset 0] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from GCObject]
!36 = metadata !{i32 786454, metadata !37, null, metadata !"GCObject", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [GCObject] [line 72, size 0, align 0, offset 0] [from GCObject]
!37 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!38 = metadata !{i32 786451, metadata !37, null, metadata !"GCObject", i32 85, i64 64, i64 32, i32 0, i32 0, null, metadata !39, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [GCObject] [line 85, size 64, align 32, offset 0] [def] [from ]
!39 = metadata !{metadata !40, metadata !41, metadata !45}
!40 = metadata !{i32 786445, metadata !37, metadata !38, metadata !"next", i32 86, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [next] [line 86, size 32, align 32, offset 0] [from ]
!41 = metadata !{i32 786445, metadata !37, metadata !38, metadata !"tt", i32 86, i64 8, i64 8, i64 32, i32 0, metadata !42} ; [ DW_TAG_member ] [tt] [line 86, size 8, align 8, offset 32] [from lu_byte]
!42 = metadata !{i32 786454, metadata !43, null, metadata !"lu_byte", i32 35, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [lu_byte] [line 35, size 0, align 0, offset 0] [from unsigned char]
!43 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llimits.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!44 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!45 = metadata !{i32 786445, metadata !37, metadata !38, metadata !"marked", i32 86, i64 8, i64 8, i64 40, i32 0, metadata !42} ; [ DW_TAG_member ] [marked] [line 86, size 8, align 8, offset 40] [from lu_byte]
!46 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"tt", i32 160, i64 8, i64 8, i64 32, i32 0, metadata !42} ; [ DW_TAG_member ] [tt] [line 160, size 8, align 8, offset 32] [from lu_byte]
!47 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"marked", i32 160, i64 8, i64 8, i64 40, i32 0, metadata !42} ; [ DW_TAG_member ] [marked] [line 160, size 8, align 8, offset 40] [from lu_byte]
!48 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"nci", i32 161, i64 16, i64 16, i64 48, i32 0, metadata !49} ; [ DW_TAG_member ] [nci] [line 161, size 16, align 16, offset 48] [from unsigned short]
!49 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!50 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"status", i32 162, i64 8, i64 8, i64 64, i32 0, metadata !42} ; [ DW_TAG_member ] [status] [line 162, size 8, align 8, offset 64] [from lu_byte]
!51 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"top", i32 163, i64 32, i64 32, i64 96, i32 0, metadata !52} ; [ DW_TAG_member ] [top] [line 163, size 32, align 32, offset 96] [from StkId]
!52 = metadata !{i32 786454, metadata !37, null, metadata !"StkId", i32 294, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [StkId] [line 294, size 0, align 0, offset 0] [from ]
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TValue]
!54 = metadata !{i32 786454, metadata !37, null, metadata !"TValue", i32 115, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [TValue] [line 115, size 0, align 0, offset 0] [from lua_TValue]
!55 = metadata !{i32 786451, metadata !37, null, metadata !"lua_TValue", i32 113, i64 128, i64 64, i32 0, i32 0, null, metadata !56, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_TValue] [line 113, size 128, align 64, offset 0] [def] [from ]
!56 = metadata !{metadata !57, metadata !76}
!57 = metadata !{i32 786445, metadata !37, metadata !55, metadata !"value_", i32 114, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_member ] [value_] [line 114, size 64, align 64, offset 0] [from Value]
!58 = metadata !{i32 786454, metadata !37, null, metadata !"Value", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [Value] [line 107, size 0, align 0, offset 0] [from Value]
!59 = metadata !{i32 786455, metadata !37, null, metadata !"Value", i32 100, i64 64, i64 64, i64 0, i32 0, null, metadata !60, i32 0, null, null, null} ; [ DW_TAG_union_type ] [Value] [line 100, size 64, align 64, offset 0] [def] [from ]
!60 = metadata !{metadata !61, metadata !62, metadata !64, metadata !65, metadata !70, metadata !73}
!61 = metadata !{i32 786445, metadata !37, metadata !59, metadata !"gc", i32 101, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [gc] [line 101, size 32, align 32, offset 0] [from ]
!62 = metadata !{i32 786445, metadata !37, metadata !59, metadata !"p", i32 102, i64 32, i64 32, i64 0, i32 0, metadata !63} ; [ DW_TAG_member ] [p] [line 102, size 32, align 32, offset 0] [from ]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!64 = metadata !{i32 786445, metadata !37, metadata !59, metadata !"b", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [b] [line 103, size 32, align 32, offset 0] [from int]
!65 = metadata !{i32 786445, metadata !37, metadata !59, metadata !"f", i32 104, i64 32, i64 32, i64 0, i32 0, metadata !66} ; [ DW_TAG_member ] [f] [line 104, size 32, align 32, offset 0] [from lua_CFunction]
!66 = metadata !{i32 786454, metadata !25, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!67 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!68 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{metadata !9, metadata !29}
!70 = metadata !{i32 786445, metadata !37, metadata !59, metadata !"i", i32 105, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_member ] [i] [line 105, size 64, align 64, offset 0] [from lua_Integer]
!71 = metadata !{i32 786454, metadata !25, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!72 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!73 = metadata !{i32 786445, metadata !37, metadata !59, metadata !"n", i32 106, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [n] [line 106, size 64, align 64, offset 0] [from lua_Number]
!74 = metadata !{i32 786454, metadata !25, null, metadata !"lua_Number", i32 89, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [lua_Number] [line 89, size 0, align 0, offset 0] [from double]
!75 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!76 = metadata !{i32 786445, metadata !37, metadata !55, metadata !"tt_", i32 114, i64 32, i64 32, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [tt_] [line 114, size 32, align 32, offset 64] [from int]
!77 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"l_G", i32 164, i64 32, i64 32, i64 128, i32 0, metadata !78} ; [ DW_TAG_member ] [l_G] [line 164, size 32, align 32, offset 128] [from ]
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from global_State]
!79 = metadata !{i32 786454, metadata !32, null, metadata !"global_State", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [global_State] [line 153, size 0, align 0, offset 0] [from global_State]
!80 = metadata !{i32 786451, metadata !32, null, metadata !"global_State", i32 118, i64 5568, i64 64, i32 0, i32 0, null, metadata !81, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [global_State] [line 118, size 5568, align 64, offset 0] [def] [from ]
!81 = metadata !{metadata !82, metadata !87, metadata !88, metadata !91, metadata !92, metadata !94, metadata !95, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !146, metadata !147, metadata !151, metadata !185}
!82 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"frealloc", i32 119, i64 32, i64 32, i64 0, i32 0, metadata !83} ; [ DW_TAG_member ] [frealloc] [line 119, size 32, align 32, offset 0] [from lua_Alloc]
!83 = metadata !{i32 786454, metadata !25, null, metadata !"lua_Alloc", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ] [lua_Alloc] [line 124, size 0, align 0, offset 0] [from ]
!84 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!85 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!86 = metadata !{metadata !63, metadata !63, metadata !63, metadata !16, metadata !16}
!87 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"ud", i32 120, i64 32, i64 32, i64 32, i32 0, metadata !63} ; [ DW_TAG_member ] [ud] [line 120, size 32, align 32, offset 32] [from ]
!88 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"totalbytes", i32 121, i64 32, i64 32, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [totalbytes] [line 121, size 32, align 32, offset 64] [from l_mem]
!89 = metadata !{i32 786454, metadata !43, null, metadata !"l_mem", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !90} ; [ DW_TAG_typedef ] [l_mem] [line 27, size 0, align 0, offset 0] [from ptrdiff_t]
!90 = metadata !{i32 786454, metadata !17, null, metadata !"ptrdiff_t", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 149, size 0, align 0, offset 0] [from int]
!91 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"GCdebt", i32 122, i64 32, i64 32, i64 96, i32 0, metadata !89} ; [ DW_TAG_member ] [GCdebt] [line 122, size 32, align 32, offset 96] [from l_mem]
!92 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"GCmemtrav", i32 123, i64 32, i64 32, i64 128, i32 0, metadata !93} ; [ DW_TAG_member ] [GCmemtrav] [line 123, size 32, align 32, offset 128] [from lu_mem]
!93 = metadata !{i32 786454, metadata !43, null, metadata !"lu_mem", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [lu_mem] [line 26, size 0, align 0, offset 0] [from size_t]
!94 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"GCestimate", i32 124, i64 32, i64 32, i64 160, i32 0, metadata !93} ; [ DW_TAG_member ] [GCestimate] [line 124, size 32, align 32, offset 160] [from lu_mem]
!95 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"strt", i32 125, i64 96, i64 32, i64 192, i32 0, metadata !96} ; [ DW_TAG_member ] [strt] [line 125, size 96, align 32, offset 192] [from stringtable]
!96 = metadata !{i32 786454, metadata !32, null, metadata !"stringtable", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [stringtable] [line 62, size 0, align 0, offset 0] [from stringtable]
!97 = metadata !{i32 786451, metadata !32, null, metadata !"stringtable", i32 58, i64 96, i64 32, i32 0, i32 0, null, metadata !98, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stringtable] [line 58, size 96, align 32, offset 0] [def] [from ]
!98 = metadata !{metadata !99, metadata !117, metadata !118}
!99 = metadata !{i32 786445, metadata !32, metadata !97, metadata !"hash", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [hash] [line 59, size 32, align 32, offset 0] [from ]
!100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!101 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !102} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!102 = metadata !{i32 786454, metadata !37, null, metadata !"TString", i32 312, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [TString] [line 312, size 0, align 0, offset 0] [from TString]
!103 = metadata !{i32 786451, metadata !37, null, metadata !"TString", i32 303, i64 128, i64 32, i32 0, i32 0, null, metadata !104, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [TString] [line 303, size 128, align 32, offset 0] [def] [from ]
!104 = metadata !{metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111}
!105 = metadata !{i32 786445, metadata !37, metadata !103, metadata !"next", i32 304, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [next] [line 304, size 32, align 32, offset 0] [from ]
!106 = metadata !{i32 786445, metadata !37, metadata !103, metadata !"tt", i32 304, i64 8, i64 8, i64 32, i32 0, metadata !42} ; [ DW_TAG_member ] [tt] [line 304, size 8, align 8, offset 32] [from lu_byte]
!107 = metadata !{i32 786445, metadata !37, metadata !103, metadata !"marked", i32 304, i64 8, i64 8, i64 40, i32 0, metadata !42} ; [ DW_TAG_member ] [marked] [line 304, size 8, align 8, offset 40] [from lu_byte]
!108 = metadata !{i32 786445, metadata !37, metadata !103, metadata !"extra", i32 305, i64 8, i64 8, i64 48, i32 0, metadata !42} ; [ DW_TAG_member ] [extra] [line 305, size 8, align 8, offset 48] [from lu_byte]
!109 = metadata !{i32 786445, metadata !37, metadata !103, metadata !"shrlen", i32 306, i64 8, i64 8, i64 56, i32 0, metadata !42} ; [ DW_TAG_member ] [shrlen] [line 306, size 8, align 8, offset 56] [from lu_byte]
!110 = metadata !{i32 786445, metadata !37, metadata !103, metadata !"hash", i32 307, i64 32, i64 32, i64 64, i32 0, metadata !18} ; [ DW_TAG_member ] [hash] [line 307, size 32, align 32, offset 64] [from unsigned int]
!111 = metadata !{i32 786445, metadata !37, metadata !103, metadata !"u", i32 311, i64 32, i64 32, i64 96, i32 0, metadata !112} ; [ DW_TAG_member ] [u] [line 311, size 32, align 32, offset 96] [from ]
!112 = metadata !{i32 786455, metadata !37, metadata !103, metadata !"", i32 308, i64 32, i64 32, i64 0, i32 0, null, metadata !113, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 308, size 32, align 32, offset 0] [def] [from ]
!113 = metadata !{metadata !114, metadata !115}
!114 = metadata !{i32 786445, metadata !37, metadata !112, metadata !"lnglen", i32 309, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [lnglen] [line 309, size 32, align 32, offset 0] [from size_t]
!115 = metadata !{i32 786445, metadata !37, metadata !112, metadata !"hnext", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !116} ; [ DW_TAG_member ] [hnext] [line 310, size 32, align 32, offset 0] [from ]
!116 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!117 = metadata !{i32 786445, metadata !32, metadata !97, metadata !"nuse", i32 60, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [nuse] [line 60, size 32, align 32, offset 32] [from int]
!118 = metadata !{i32 786445, metadata !32, metadata !97, metadata !"size", i32 61, i64 32, i64 32, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [size] [line 61, size 32, align 32, offset 64] [from int]
!119 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"l_registry", i32 126, i64 128, i64 64, i64 320, i32 0, metadata !54} ; [ DW_TAG_member ] [l_registry] [line 126, size 128, align 64, offset 320] [from TValue]
!120 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"seed", i32 127, i64 32, i64 32, i64 448, i32 0, metadata !18} ; [ DW_TAG_member ] [seed] [line 127, size 32, align 32, offset 448] [from unsigned int]
!121 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"currentwhite", i32 128, i64 8, i64 8, i64 480, i32 0, metadata !42} ; [ DW_TAG_member ] [currentwhite] [line 128, size 8, align 8, offset 480] [from lu_byte]
!122 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"gcstate", i32 129, i64 8, i64 8, i64 488, i32 0, metadata !42} ; [ DW_TAG_member ] [gcstate] [line 129, size 8, align 8, offset 488] [from lu_byte]
!123 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"gckind", i32 130, i64 8, i64 8, i64 496, i32 0, metadata !42} ; [ DW_TAG_member ] [gckind] [line 130, size 8, align 8, offset 496] [from lu_byte]
!124 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"gcrunning", i32 131, i64 8, i64 8, i64 504, i32 0, metadata !42} ; [ DW_TAG_member ] [gcrunning] [line 131, size 8, align 8, offset 504] [from lu_byte]
!125 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"allgc", i32 132, i64 32, i64 32, i64 512, i32 0, metadata !35} ; [ DW_TAG_member ] [allgc] [line 132, size 32, align 32, offset 512] [from ]
!126 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"sweepgc", i32 133, i64 32, i64 32, i64 544, i32 0, metadata !127} ; [ DW_TAG_member ] [sweepgc] [line 133, size 32, align 32, offset 544] [from ]
!127 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!128 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"finobj", i32 134, i64 32, i64 32, i64 576, i32 0, metadata !35} ; [ DW_TAG_member ] [finobj] [line 134, size 32, align 32, offset 576] [from ]
!129 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"gray", i32 135, i64 32, i64 32, i64 608, i32 0, metadata !35} ; [ DW_TAG_member ] [gray] [line 135, size 32, align 32, offset 608] [from ]
!130 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"grayagain", i32 136, i64 32, i64 32, i64 640, i32 0, metadata !35} ; [ DW_TAG_member ] [grayagain] [line 136, size 32, align 32, offset 640] [from ]
!131 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"weak", i32 137, i64 32, i64 32, i64 672, i32 0, metadata !35} ; [ DW_TAG_member ] [weak] [line 137, size 32, align 32, offset 672] [from ]
!132 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"ephemeron", i32 138, i64 32, i64 32, i64 704, i32 0, metadata !35} ; [ DW_TAG_member ] [ephemeron] [line 138, size 32, align 32, offset 704] [from ]
!133 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"allweak", i32 139, i64 32, i64 32, i64 736, i32 0, metadata !35} ; [ DW_TAG_member ] [allweak] [line 139, size 32, align 32, offset 736] [from ]
!134 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"tobefnz", i32 140, i64 32, i64 32, i64 768, i32 0, metadata !35} ; [ DW_TAG_member ] [tobefnz] [line 140, size 32, align 32, offset 768] [from ]
!135 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"fixedgc", i32 141, i64 32, i64 32, i64 800, i32 0, metadata !35} ; [ DW_TAG_member ] [fixedgc] [line 141, size 32, align 32, offset 800] [from ]
!136 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"twups", i32 142, i64 32, i64 32, i64 832, i32 0, metadata !137} ; [ DW_TAG_member ] [twups] [line 142, size 32, align 32, offset 832] [from ]
!137 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!138 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"gcfinnum", i32 143, i64 32, i64 32, i64 864, i32 0, metadata !18} ; [ DW_TAG_member ] [gcfinnum] [line 143, size 32, align 32, offset 864] [from unsigned int]
!139 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"gcpause", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !9} ; [ DW_TAG_member ] [gcpause] [line 144, size 32, align 32, offset 896] [from int]
!140 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"gcstepmul", i32 145, i64 32, i64 32, i64 928, i32 0, metadata !9} ; [ DW_TAG_member ] [gcstepmul] [line 145, size 32, align 32, offset 928] [from int]
!141 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"panic", i32 146, i64 32, i64 32, i64 960, i32 0, metadata !66} ; [ DW_TAG_member ] [panic] [line 146, size 32, align 32, offset 960] [from lua_CFunction]
!142 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"mainthread", i32 147, i64 32, i64 32, i64 992, i32 0, metadata !137} ; [ DW_TAG_member ] [mainthread] [line 147, size 32, align 32, offset 992] [from ]
!143 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"version", i32 148, i64 32, i64 32, i64 1024, i32 0, metadata !144} ; [ DW_TAG_member ] [version] [line 148, size 32, align 32, offset 1024] [from ]
!144 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !145} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!145 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lua_Number]
!146 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"memerrmsg", i32 149, i64 32, i64 32, i64 1056, i32 0, metadata !101} ; [ DW_TAG_member ] [memerrmsg] [line 149, size 32, align 32, offset 1056] [from ]
!147 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"tmname", i32 150, i64 768, i64 32, i64 1088, i32 0, metadata !148} ; [ DW_TAG_member ] [tmname] [line 150, size 768, align 32, offset 1088] [from ]
!148 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !101, metadata !149, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from ]
!149 = metadata !{metadata !150}
!150 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!151 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"mt", i32 151, i64 288, i64 32, i64 1856, i32 0, metadata !152} ; [ DW_TAG_member ] [mt] [line 151, size 288, align 32, offset 1856] [from ]
!152 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !153, metadata !183, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from ]
!153 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !154} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!154 = metadata !{i32 786451, metadata !37, null, metadata !"Table", i32 497, i64 256, i64 32, i32 0, i32 0, null, metadata !155, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Table] [line 497, size 256, align 32, offset 0] [def] [from ]
!155 = metadata !{metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !180, metadata !181, metadata !182}
!156 = metadata !{i32 786445, metadata !37, metadata !154, metadata !"next", i32 498, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [next] [line 498, size 32, align 32, offset 0] [from ]
!157 = metadata !{i32 786445, metadata !37, metadata !154, metadata !"tt", i32 498, i64 8, i64 8, i64 32, i32 0, metadata !42} ; [ DW_TAG_member ] [tt] [line 498, size 8, align 8, offset 32] [from lu_byte]
!158 = metadata !{i32 786445, metadata !37, metadata !154, metadata !"marked", i32 498, i64 8, i64 8, i64 40, i32 0, metadata !42} ; [ DW_TAG_member ] [marked] [line 498, size 8, align 8, offset 40] [from lu_byte]
!159 = metadata !{i32 786445, metadata !37, metadata !154, metadata !"flags", i32 499, i64 8, i64 8, i64 48, i32 0, metadata !42} ; [ DW_TAG_member ] [flags] [line 499, size 8, align 8, offset 48] [from lu_byte]
!160 = metadata !{i32 786445, metadata !37, metadata !154, metadata !"lsizenode", i32 500, i64 8, i64 8, i64 56, i32 0, metadata !42} ; [ DW_TAG_member ] [lsizenode] [line 500, size 8, align 8, offset 56] [from lu_byte]
!161 = metadata !{i32 786445, metadata !37, metadata !154, metadata !"sizearray", i32 501, i64 32, i64 32, i64 64, i32 0, metadata !18} ; [ DW_TAG_member ] [sizearray] [line 501, size 32, align 32, offset 64] [from unsigned int]
!162 = metadata !{i32 786445, metadata !37, metadata !154, metadata !"array", i32 502, i64 32, i64 32, i64 96, i32 0, metadata !53} ; [ DW_TAG_member ] [array] [line 502, size 32, align 32, offset 96] [from ]
!163 = metadata !{i32 786445, metadata !37, metadata !154, metadata !"node", i32 503, i64 32, i64 32, i64 128, i32 0, metadata !164} ; [ DW_TAG_member ] [node] [line 503, size 32, align 32, offset 128] [from ]
!164 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !165} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Node]
!165 = metadata !{i32 786454, metadata !37, null, metadata !"Node", i32 494, i64 0, i64 0, i64 0, i32 0, metadata !166} ; [ DW_TAG_typedef ] [Node] [line 494, size 0, align 0, offset 0] [from Node]
!166 = metadata !{i32 786451, metadata !37, null, metadata !"Node", i32 491, i64 256, i64 64, i32 0, i32 0, null, metadata !167, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Node] [line 491, size 256, align 64, offset 0] [def] [from ]
!167 = metadata !{metadata !168, metadata !169}
!168 = metadata !{i32 786445, metadata !37, metadata !166, metadata !"i_val", i32 492, i64 128, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ] [i_val] [line 492, size 128, align 64, offset 0] [from TValue]
!169 = metadata !{i32 786445, metadata !37, metadata !166, metadata !"i_key", i32 493, i64 128, i64 64, i64 128, i32 0, metadata !170} ; [ DW_TAG_member ] [i_key] [line 493, size 128, align 64, offset 128] [from TKey]
!170 = metadata !{i32 786454, metadata !37, null, metadata !"TKey", i32 481, i64 0, i64 0, i64 0, i32 0, metadata !171} ; [ DW_TAG_typedef ] [TKey] [line 481, size 0, align 0, offset 0] [from TKey]
!171 = metadata !{i32 786455, metadata !37, null, metadata !"TKey", i32 475, i64 128, i64 64, i64 0, i32 0, null, metadata !172, i32 0, null, null, null} ; [ DW_TAG_union_type ] [TKey] [line 475, size 128, align 64, offset 0] [def] [from ]
!172 = metadata !{metadata !173, metadata !179}
!173 = metadata !{i32 786445, metadata !37, metadata !171, metadata !"nk", i32 479, i64 128, i64 64, i64 0, i32 0, metadata !174} ; [ DW_TAG_member ] [nk] [line 479, size 128, align 64, offset 0] [from ]
!174 = metadata !{i32 786451, metadata !37, metadata !171, metadata !"", i32 476, i64 128, i64 64, i32 0, i32 0, null, metadata !175, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 476, size 128, align 64, offset 0] [def] [from ]
!175 = metadata !{metadata !176, metadata !177, metadata !178}
!176 = metadata !{i32 786445, metadata !37, metadata !174, metadata !"value_", i32 477, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_member ] [value_] [line 477, size 64, align 64, offset 0] [from Value]
!177 = metadata !{i32 786445, metadata !37, metadata !174, metadata !"tt_", i32 477, i64 32, i64 32, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [tt_] [line 477, size 32, align 32, offset 64] [from int]
!178 = metadata !{i32 786445, metadata !37, metadata !174, metadata !"next", i32 478, i64 32, i64 32, i64 96, i32 0, metadata !9} ; [ DW_TAG_member ] [next] [line 478, size 32, align 32, offset 96] [from int]
!179 = metadata !{i32 786445, metadata !37, metadata !171, metadata !"tvk", i32 480, i64 128, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ] [tvk] [line 480, size 128, align 64, offset 0] [from TValue]
!180 = metadata !{i32 786445, metadata !37, metadata !154, metadata !"lastfree", i32 504, i64 32, i64 32, i64 160, i32 0, metadata !164} ; [ DW_TAG_member ] [lastfree] [line 504, size 32, align 32, offset 160] [from ]
!181 = metadata !{i32 786445, metadata !37, metadata !154, metadata !"metatable", i32 505, i64 32, i64 32, i64 192, i32 0, metadata !153} ; [ DW_TAG_member ] [metatable] [line 505, size 32, align 32, offset 192] [from ]
!182 = metadata !{i32 786445, metadata !37, metadata !154, metadata !"gclist", i32 506, i64 32, i64 32, i64 224, i32 0, metadata !35} ; [ DW_TAG_member ] [gclist] [line 506, size 32, align 32, offset 224] [from ]
!183 = metadata !{metadata !184}
!184 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!185 = metadata !{i32 786445, metadata !32, metadata !80, metadata !"strcache", i32 152, i64 3392, i64 32, i64 2144, i32 0, metadata !186} ; [ DW_TAG_member ] [strcache] [line 152, size 3392, align 32, offset 2144] [from ]
!186 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3392, i64 32, i32 0, i32 0, metadata !101, metadata !187, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3392, align 32, offset 0] [from ]
!187 = metadata !{metadata !188, metadata !189}
!188 = metadata !{i32 786465, i64 0, i64 53}      ; [ DW_TAG_subrange_type ] [0, 52]
!189 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!190 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"ci", i32 165, i64 32, i64 32, i64 160, i32 0, metadata !191} ; [ DW_TAG_member ] [ci] [line 165, size 32, align 32, offset 160] [from ]
!191 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !192} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!192 = metadata !{i32 786454, metadata !32, null, metadata !"CallInfo", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !193} ; [ DW_TAG_typedef ] [CallInfo] [line 92, size 0, align 0, offset 0] [from CallInfo]
!193 = metadata !{i32 786451, metadata !32, null, metadata !"CallInfo", i32 74, i64 288, i64 32, i32 0, i32 0, null, metadata !194, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CallInfo] [line 74, size 288, align 32, offset 0] [def] [from ]
!194 = metadata !{metadata !195, metadata !196, metadata !197, metadata !199, metadata !200, metadata !224, metadata !225, metadata !227}
!195 = metadata !{i32 786445, metadata !32, metadata !193, metadata !"func", i32 75, i64 32, i64 32, i64 0, i32 0, metadata !52} ; [ DW_TAG_member ] [func] [line 75, size 32, align 32, offset 0] [from StkId]
!196 = metadata !{i32 786445, metadata !32, metadata !193, metadata !"top", i32 76, i64 32, i64 32, i64 32, i32 0, metadata !52} ; [ DW_TAG_member ] [top] [line 76, size 32, align 32, offset 32] [from StkId]
!197 = metadata !{i32 786445, metadata !32, metadata !193, metadata !"previous", i32 77, i64 32, i64 32, i64 64, i32 0, metadata !198} ; [ DW_TAG_member ] [previous] [line 77, size 32, align 32, offset 64] [from ]
!198 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !193} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!199 = metadata !{i32 786445, metadata !32, metadata !193, metadata !"next", i32 77, i64 32, i64 32, i64 96, i32 0, metadata !198} ; [ DW_TAG_member ] [next] [line 77, size 32, align 32, offset 96] [from ]
!200 = metadata !{i32 786445, metadata !32, metadata !193, metadata !"u", i32 88, i64 96, i64 32, i64 128, i32 0, metadata !201} ; [ DW_TAG_member ] [u] [line 88, size 96, align 32, offset 128] [from ]
!201 = metadata !{i32 786455, metadata !32, metadata !193, metadata !"", i32 78, i64 96, i64 32, i64 0, i32 0, null, metadata !202, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 78, size 96, align 32, offset 0] [def] [from ]
!202 = metadata !{metadata !203, metadata !211}
!203 = metadata !{i32 786445, metadata !32, metadata !201, metadata !"l", i32 82, i64 64, i64 32, i64 0, i32 0, metadata !204} ; [ DW_TAG_member ] [l] [line 82, size 64, align 32, offset 0] [from ]
!204 = metadata !{i32 786451, metadata !32, metadata !201, metadata !"", i32 79, i64 64, i64 32, i32 0, i32 0, null, metadata !205, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 79, size 64, align 32, offset 0] [def] [from ]
!205 = metadata !{metadata !206, metadata !207}
!206 = metadata !{i32 786445, metadata !32, metadata !204, metadata !"base", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !52} ; [ DW_TAG_member ] [base] [line 80, size 32, align 32, offset 0] [from StkId]
!207 = metadata !{i32 786445, metadata !32, metadata !204, metadata !"savedpc", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !208} ; [ DW_TAG_member ] [savedpc] [line 81, size 32, align 32, offset 32] [from ]
!208 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!209 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !210} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Instruction]
!210 = metadata !{i32 786454, metadata !43, null, metadata !"Instruction", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [Instruction] [line 163, size 0, align 0, offset 0] [from unsigned int]
!211 = metadata !{i32 786445, metadata !32, metadata !201, metadata !"c", i32 87, i64 96, i64 32, i64 0, i32 0, metadata !212} ; [ DW_TAG_member ] [c] [line 87, size 96, align 32, offset 0] [from ]
!212 = metadata !{i32 786451, metadata !32, metadata !201, metadata !"", i32 83, i64 96, i64 32, i32 0, i32 0, null, metadata !213, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 83, size 96, align 32, offset 0] [def] [from ]
!213 = metadata !{metadata !214, metadata !222, metadata !223}
!214 = metadata !{i32 786445, metadata !32, metadata !212, metadata !"k", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !215} ; [ DW_TAG_member ] [k] [line 84, size 32, align 32, offset 0] [from lua_KFunction]
!215 = metadata !{i32 786454, metadata !25, null, metadata !"lua_KFunction", i32 110, i64 0, i64 0, i64 0, i32 0, metadata !216} ; [ DW_TAG_typedef ] [lua_KFunction] [line 110, size 0, align 0, offset 0] [from ]
!216 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!217 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !218, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!218 = metadata !{metadata !9, metadata !29, metadata !9, metadata !219}
!219 = metadata !{i32 786454, metadata !25, null, metadata !"lua_KContext", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !220} ; [ DW_TAG_typedef ] [lua_KContext] [line 99, size 0, align 0, offset 0] [from intptr_t]
!220 = metadata !{i32 786454, metadata !221, null, metadata !"intptr_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [intptr_t] [line 125, size 0, align 0, offset 0] [from int]
!221 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdint.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!222 = metadata !{i32 786445, metadata !32, metadata !212, metadata !"old_errfunc", i32 85, i64 32, i64 32, i64 32, i32 0, metadata !90} ; [ DW_TAG_member ] [old_errfunc] [line 85, size 32, align 32, offset 32] [from ptrdiff_t]
!223 = metadata !{i32 786445, metadata !32, metadata !212, metadata !"ctx", i32 86, i64 32, i64 32, i64 64, i32 0, metadata !219} ; [ DW_TAG_member ] [ctx] [line 86, size 32, align 32, offset 64] [from lua_KContext]
!224 = metadata !{i32 786445, metadata !32, metadata !193, metadata !"extra", i32 89, i64 32, i64 32, i64 224, i32 0, metadata !90} ; [ DW_TAG_member ] [extra] [line 89, size 32, align 32, offset 224] [from ptrdiff_t]
!225 = metadata !{i32 786445, metadata !32, metadata !193, metadata !"nresults", i32 90, i64 16, i64 16, i64 256, i32 0, metadata !226} ; [ DW_TAG_member ] [nresults] [line 90, size 16, align 16, offset 256] [from short]
!226 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!227 = metadata !{i32 786445, metadata !32, metadata !193, metadata !"callstatus", i32 91, i64 8, i64 8, i64 272, i32 0, metadata !42} ; [ DW_TAG_member ] [callstatus] [line 91, size 8, align 8, offset 272] [from lu_byte]
!228 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"oldpc", i32 166, i64 32, i64 32, i64 192, i32 0, metadata !208} ; [ DW_TAG_member ] [oldpc] [line 166, size 32, align 32, offset 192] [from ]
!229 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"stack_last", i32 167, i64 32, i64 32, i64 224, i32 0, metadata !52} ; [ DW_TAG_member ] [stack_last] [line 167, size 32, align 32, offset 224] [from StkId]
!230 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"stack", i32 168, i64 32, i64 32, i64 256, i32 0, metadata !52} ; [ DW_TAG_member ] [stack] [line 168, size 32, align 32, offset 256] [from StkId]
!231 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"openupval", i32 169, i64 32, i64 32, i64 288, i32 0, metadata !232} ; [ DW_TAG_member ] [openupval] [line 169, size 32, align 32, offset 288] [from ]
!232 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !233} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from UpVal]
!233 = metadata !{i32 786454, metadata !37, null, metadata !"UpVal", i32 436, i64 0, i64 0, i64 0, i32 0, metadata !234} ; [ DW_TAG_typedef ] [UpVal] [line 436, size 0, align 0, offset 0] [from UpVal]
!234 = metadata !{i32 786451, metadata !37, null, metadata !"UpVal", i32 436, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [UpVal] [line 436, size 0, align 0, offset 0] [decl] [from ]
!235 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"gclist", i32 170, i64 32, i64 32, i64 320, i32 0, metadata !35} ; [ DW_TAG_member ] [gclist] [line 170, size 32, align 32, offset 320] [from ]
!236 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"twups", i32 171, i64 32, i64 32, i64 352, i32 0, metadata !137} ; [ DW_TAG_member ] [twups] [line 171, size 32, align 32, offset 352] [from ]
!237 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"errorJmp", i32 172, i64 32, i64 32, i64 384, i32 0, metadata !238} ; [ DW_TAG_member ] [errorJmp] [line 172, size 32, align 32, offset 384] [from ]
!238 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !239} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_longjmp]
!239 = metadata !{i32 786451, metadata !32, null, metadata !"lua_longjmp", i32 33, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_longjmp] [line 33, size 0, align 0, offset 0] [decl] [from ]
!240 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"base_ci", i32 173, i64 288, i64 32, i64 416, i32 0, metadata !192} ; [ DW_TAG_member ] [base_ci] [line 173, size 288, align 32, offset 416] [from CallInfo]
!241 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"hook", i32 174, i64 32, i64 32, i64 704, i32 0, metadata !242} ; [ DW_TAG_member ] [hook] [line 174, size 32, align 32, offset 704] [from ]
!242 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !243} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from lua_Hook]
!243 = metadata !{i32 786454, metadata !25, null, metadata !"lua_Hook", i32 421, i64 0, i64 0, i64 0, i32 0, metadata !244} ; [ DW_TAG_typedef ] [lua_Hook] [line 421, size 0, align 0, offset 0] [from ]
!244 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !245} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!245 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !246, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!246 = metadata !{null, metadata !29, metadata !247}
!247 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !248} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!248 = metadata !{i32 786454, metadata !25, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !249} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!249 = metadata !{i32 786451, metadata !25, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !250, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!250 = metadata !{metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !267}
!251 = metadata !{i32 786445, metadata !25, metadata !249, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!252 = metadata !{i32 786445, metadata !25, metadata !249, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!253 = metadata !{i32 786445, metadata !25, metadata !249, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!254 = metadata !{i32 786445, metadata !25, metadata !249, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!255 = metadata !{i32 786445, metadata !25, metadata !249, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!256 = metadata !{i32 786445, metadata !25, metadata !249, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !9} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!257 = metadata !{i32 786445, metadata !25, metadata !249, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!258 = metadata !{i32 786445, metadata !25, metadata !249, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !9} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!259 = metadata !{i32 786445, metadata !25, metadata !249, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!260 = metadata !{i32 786445, metadata !25, metadata !249, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !44} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!261 = metadata !{i32 786445, metadata !25, metadata !249, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !22} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!262 = metadata !{i32 786445, metadata !25, metadata !249, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !22} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!263 = metadata !{i32 786445, metadata !25, metadata !249, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !264} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!264 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !22, metadata !265, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!265 = metadata !{metadata !266}
!266 = metadata !{i32 786465, i64 0, i64 60}      ; [ DW_TAG_subrange_type ] [0, 59]
!267 = metadata !{i32 786445, metadata !25, metadata !249, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !198} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!268 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"errfunc", i32 175, i64 32, i64 32, i64 736, i32 0, metadata !90} ; [ DW_TAG_member ] [errfunc] [line 175, size 32, align 32, offset 736] [from ptrdiff_t]
!269 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"stacksize", i32 176, i64 32, i64 32, i64 768, i32 0, metadata !9} ; [ DW_TAG_member ] [stacksize] [line 176, size 32, align 32, offset 768] [from int]
!270 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"basehookcount", i32 177, i64 32, i64 32, i64 800, i32 0, metadata !9} ; [ DW_TAG_member ] [basehookcount] [line 177, size 32, align 32, offset 800] [from int]
!271 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"hookcount", i32 178, i64 32, i64 32, i64 832, i32 0, metadata !9} ; [ DW_TAG_member ] [hookcount] [line 178, size 32, align 32, offset 832] [from int]
!272 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"nny", i32 179, i64 16, i64 16, i64 864, i32 0, metadata !49} ; [ DW_TAG_member ] [nny] [line 179, size 16, align 16, offset 864] [from unsigned short]
!273 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"nCcalls", i32 180, i64 16, i64 16, i64 880, i32 0, metadata !49} ; [ DW_TAG_member ] [nCcalls] [line 180, size 16, align 16, offset 880] [from unsigned short]
!274 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"hookmask", i32 181, i64 32, i64 32, i64 896, i32 0, metadata !275} ; [ DW_TAG_member ] [hookmask] [line 181, size 32, align 32, offset 896] [from sig_atomic_t]
!275 = metadata !{i32 786454, metadata !276, null, metadata !"sig_atomic_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !277} ; [ DW_TAG_typedef ] [sig_atomic_t] [line 40, size 0, align 0, offset 0] [from __sig_atomic_t]
!276 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csignal.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!277 = metadata !{i32 786454, metadata !278, null, metadata !"__sig_atomic_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [__sig_atomic_t] [line 22, size 0, align 0, offset 0] [from int]
!278 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/sigset.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!279 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"allowhook", i32 182, i64 8, i64 8, i64 928, i32 0, metadata !42} ; [ DW_TAG_member ] [allowhook] [line 182, size 8, align 8, offset 928] [from lu_byte]
!280 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from size_t]
!281 = metadata !{i32 786445, metadata !12, metadata !13, metadata !"data", i32 59, i64 32, i64 32, i64 96, i32 0, metadata !63} ; [ DW_TAG_member ] [data] [line 59, size 32, align 32, offset 96] [from ]
!282 = metadata !{i32 786445, metadata !12, metadata !13, metadata !"L", i32 60, i64 32, i64 32, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [L] [line 60, size 32, align 32, offset 128] [from ]
!283 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaZ_init", metadata !"luaZ_init", metadata !"", i32 38, metadata !284, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.Zio*, i8* (%struct.lua_State*, i8*, i32*)*, i8*)* @luaZ_init, null, null, metadata !2, i32 38} ; [ DW_TAG_subprogram ] [line 38] [def] [luaZ_init]
!284 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !285, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!285 = metadata !{null, metadata !29, metadata !10, metadata !24, metadata !63}
!286 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaZ_read", metadata !"luaZ_read", metadata !"", i32 48, metadata !287, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.Zio*, i8*, i32)* @luaZ_read, null, null, metadata !2, i32 48} ; [ DW_TAG_subprogram ] [line 48] [def] [luaZ_read]
!287 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !288, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!288 = metadata !{metadata !16, metadata !10, metadata !63, metadata !16}
!289 = metadata !{i32 (%struct.Zio*)* @luaZ_fill}
!290 = metadata !{metadata !"luaZ_fill"}
!291 = metadata !{void (%struct.lua_State*, %struct.Zio*, i8* (%struct.lua_State*, i8*, i32*)*, i8*)* @luaZ_init}
!292 = metadata !{metadata !"luaZ_init"}
!293 = metadata !{i32 (%struct.Zio*, i8*, i32)* @luaZ_read}
!294 = metadata !{metadata !"luaZ_read"}
!295 = metadata !{metadata !"int.ZIO *.1"}
!296 = metadata !{metadata !"void.lua_State *.1.ZIO *.1.lua_Reader.1.void *.1"}
!297 = metadata !{metadata !"size_t.ZIO *.1.void *.1.size_t.0"}
!298 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lzio.h"}
!299 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!300 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!301 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!302 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!303 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!304 = metadata !{i32 786689, metadata !4, metadata !"z", metadata !6, i32 16777239, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 23]
!305 = metadata !{i32 23, i32 21, metadata !4, null}
!306 = metadata !{i32 786688, metadata !4, metadata !"size", metadata !6, i32 24, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 24]
!307 = metadata !{i32 24, i32 10, metadata !4, null}
!308 = metadata !{i32 786688, metadata !4, metadata !"L", metadata !6, i32 25, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L] [line 25]
!309 = metadata !{i32 25, i32 14, metadata !4, null}
!310 = metadata !{i32 25, i32 3, metadata !4, null}
!311 = metadata !{i32 786688, metadata !4, metadata !"buff", metadata !6, i32 26, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 26]
!312 = metadata !{i32 26, i32 15, metadata !4, null}
!313 = metadata !{i32 28, i32 10, metadata !4, null}
!314 = metadata !{i32 30, i32 7, metadata !315, null}
!315 = metadata !{i32 786443, metadata !5, metadata !4, i32 30, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lzio.c]
!316 = metadata !{i32 30, i32 7, metadata !317, null}
!317 = metadata !{i32 786443, metadata !5, metadata !315, i32 30, i32 7, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lzio.c]
!318 = metadata !{i32 31, i32 5, metadata !315, null}
!319 = metadata !{i32 32, i32 3, metadata !4, null}
!320 = metadata !{i32 33, i32 3, metadata !4, null}
!321 = metadata !{i32 34, i32 3, metadata !4, null}
!322 = metadata !{i32 35, i32 1, metadata !4, null}
!323 = metadata !{i32 786689, metadata !283, metadata !"L", metadata !6, i32 16777254, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 38]
!324 = metadata !{i32 38, i32 28, metadata !283, null}
!325 = metadata !{i32 786689, metadata !283, metadata !"z", metadata !6, i32 33554470, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 38]
!326 = metadata !{i32 38, i32 36, metadata !283, null}
!327 = metadata !{i32 786689, metadata !283, metadata !"reader", metadata !6, i32 50331686, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [reader] [line 38]
!328 = metadata !{i32 38, i32 50, metadata !283, null}
!329 = metadata !{i32 786689, metadata !283, metadata !"data", metadata !6, i32 67108902, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 38]
!330 = metadata !{i32 38, i32 64, metadata !283, null}
!331 = metadata !{i32 39, i32 3, metadata !283, null}
!332 = metadata !{i32 40, i32 3, metadata !283, null}
!333 = metadata !{i32 41, i32 3, metadata !283, null}
!334 = metadata !{i32 42, i32 3, metadata !283, null}
!335 = metadata !{i32 43, i32 3, metadata !283, null}
!336 = metadata !{i32 44, i32 1, metadata !283, null}
!337 = metadata !{i32 786689, metadata !286, metadata !"z", metadata !6, i32 16777264, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 48]
!338 = metadata !{i32 48, i32 24, metadata !286, null}
!339 = metadata !{i32 786689, metadata !286, metadata !"b", metadata !6, i32 33554480, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 48]
!340 = metadata !{i32 48, i32 33, metadata !286, null}
!341 = metadata !{i32 786689, metadata !286, metadata !"n", metadata !6, i32 50331696, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 48]
!342 = metadata !{i32 48, i32 43, metadata !286, null}
!343 = metadata !{i32 49, i32 3, metadata !286, null}
!344 = metadata !{i32 49, i32 3, metadata !345, null}
!345 = metadata !{i32 786443, metadata !5, metadata !286, i32 49, i32 3, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lzio.c]
!346 = metadata !{i32 786688, metadata !347, metadata !"m", metadata !6, i32 50, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 50]
!347 = metadata !{i32 786443, metadata !5, metadata !286, i32 49, i32 13, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lzio.c]
!348 = metadata !{i32 50, i32 12, metadata !347, null}
!349 = metadata !{i32 51, i32 9, metadata !350, null}
!350 = metadata !{i32 786443, metadata !5, metadata !347, i32 51, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lzio.c]
!351 = metadata !{i32 52, i32 11, metadata !352, null}
!352 = metadata !{i32 786443, metadata !5, metadata !353, i32 52, i32 11, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lzio.c]
!353 = metadata !{i32 786443, metadata !5, metadata !350, i32 51, i32 20, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lzio.c]
!354 = metadata !{i32 53, i32 9, metadata !352, null}
!355 = metadata !{i32 55, i32 9, metadata !356, null}
!356 = metadata !{i32 786443, metadata !5, metadata !352, i32 54, i32 12, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lzio.c]
!357 = metadata !{i32 56, i32 9, metadata !356, null}
!358 = metadata !{i32 58, i32 5, metadata !353, null} ; [ DW_TAG_imported_module ]
!359 = metadata !{i32 59, i32 5, metadata !347, null}
!360 = metadata !{i32 59, i32 5, metadata !361, null}
!361 = metadata !{i32 786443, metadata !5, metadata !347, i32 59, i32 5, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lzio.c]
!362 = metadata !{i32 59, i32 5, metadata !363, null}
!363 = metadata !{i32 786443, metadata !5, metadata !347, i32 59, i32 5, i32 2, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lzio.c]
!364 = metadata !{i32 59, i32 5, metadata !365, null}
!365 = metadata !{i32 786443, metadata !5, metadata !366, i32 59, i32 5, i32 4, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lzio.c]
!366 = metadata !{i32 786443, metadata !5, metadata !347, i32 59, i32 5, i32 3, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lzio.c]
!367 = metadata !{i32 60, i32 5, metadata !347, null}
!368 = metadata !{i32 61, i32 5, metadata !347, null}
!369 = metadata !{i32 62, i32 5, metadata !347, null}
!370 = metadata !{i32 63, i32 5, metadata !347, null}
!371 = metadata !{i32 64, i32 5, metadata !347, null}
!372 = metadata !{i32 65, i32 3, metadata !347, null}
!373 = metadata !{i32 66, i32 3, metadata !286, null}
!374 = metadata !{i32 67, i32 1, metadata !286, null}
