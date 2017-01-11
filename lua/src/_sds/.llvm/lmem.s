; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lmem.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

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

@.str = private unnamed_addr constant [26 x i8] c"too many %s (limit is %d)\00", align 1
@.str1 = private unnamed_addr constant [39 x i8] c"memory allocation error: block too big\00", align 1

; Function Attrs: nounwind
define hidden i8* @luaM_growaux_(%struct.lua_State* %L, i8* %block, i32* %size, i32 %size_elems, i32 %limit, i8* %what) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 4
  %newblock = alloca i8*, align 4
  %newsize = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !301), !dbg !302
  store i8* %block, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !303), !dbg !304
  store i32* %size, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !305), !dbg !306
  store i32 %size_elems, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !307), !dbg !308
  store i32 %limit, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !309), !dbg !310
  store i8* %what, i8** %6, align 4
  call void @llvm.dbg.declare(metadata !{i8** %6}, metadata !311), !dbg !312
  call void @llvm.dbg.declare(metadata !{i8** %newblock}, metadata !313), !dbg !314
  call void @llvm.dbg.declare(metadata !{i32* %newsize}, metadata !315), !dbg !316
  %7 = load i32** %3, align 4, !dbg !317
  %8 = load i32* %7, align 4, !dbg !317
  %9 = load i32* %5, align 4, !dbg !317
  %10 = sdiv i32 %9, 2, !dbg !317
  %11 = icmp sge i32 %8, %10, !dbg !317
  br i1 %11, label %12, label %23, !dbg !317

; <label>:12                                      ; preds = %0
  %13 = load i32** %3, align 4, !dbg !319
  %14 = load i32* %13, align 4, !dbg !319
  %15 = load i32* %5, align 4, !dbg !319
  %16 = icmp sge i32 %14, %15, !dbg !319
  br i1 %16, label %17, label %21, !dbg !319

; <label>:17                                      ; preds = %12
  %18 = load %struct.lua_State** %1, align 4, !dbg !322
  %19 = load i8** %6, align 4, !dbg !322
  %20 = load i32* %5, align 4, !dbg !322
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %18, i8* getelementptr inbounds ([26 x i8]* @.str, i32 0, i32 0), i8* %19, i32 %20) #5, !dbg !322
  unreachable, !dbg !322

; <label>:21                                      ; preds = %12
  %22 = load i32* %5, align 4, !dbg !323
  store i32 %22, i32* %newsize, align 4, !dbg !323
  br label %31, !dbg !324

; <label>:23                                      ; preds = %0
  %24 = load i32** %3, align 4, !dbg !325
  %25 = load i32* %24, align 4, !dbg !325
  %26 = mul nsw i32 %25, 2, !dbg !325
  store i32 %26, i32* %newsize, align 4, !dbg !325
  %27 = load i32* %newsize, align 4, !dbg !327
  %28 = icmp slt i32 %27, 4, !dbg !327
  br i1 %28, label %29, label %30, !dbg !327

; <label>:29                                      ; preds = %23
  store i32 4, i32* %newsize, align 4, !dbg !329
  br label %30, !dbg !329

; <label>:30                                      ; preds = %29, %23
  br label %31

; <label>:31                                      ; preds = %30, %21
  %32 = load i32* %newsize, align 4, !dbg !330
  %33 = add i32 %32, 1, !dbg !330
  %34 = load i32* %4, align 4, !dbg !330
  %35 = udiv i32 -1, %34, !dbg !330
  %36 = icmp ugt i32 %33, %35, !dbg !330
  br i1 %36, label %37, label %40, !dbg !330

; <label>:37                                      ; preds = %31
  %38 = load %struct.lua_State** %1, align 4, !dbg !331
  call void @luaM_toobig(%struct.lua_State* %38) #5, !dbg !331
  unreachable, !dbg !331
                                                  ; No predecessors!
  br label %41, !dbg !333

; <label>:40                                      ; preds = %31
  br label %41, !dbg !334

; <label>:41                                      ; preds = %40, %39
  %42 = load %struct.lua_State** %1, align 4, !dbg !336
  %43 = load i8** %2, align 4, !dbg !336
  %44 = load i32** %3, align 4, !dbg !336
  %45 = load i32* %44, align 4, !dbg !336
  %46 = load i32* %4, align 4, !dbg !336
  %47 = mul i32 %45, %46, !dbg !336
  %48 = load i32* %newsize, align 4, !dbg !336
  %49 = load i32* %4, align 4, !dbg !336
  %50 = mul i32 %48, %49, !dbg !336
  %51 = call i8* @luaM_realloc_(%struct.lua_State* %42, i8* %43, i32 %47, i32 %50), !dbg !336
  store i8* %51, i8** %newblock, align 4, !dbg !336
  %52 = load i32* %newsize, align 4, !dbg !339
  %53 = load i32** %3, align 4, !dbg !339
  store i32 %52, i32* %53, align 4, !dbg !339
  %54 = load i8** %newblock, align 4, !dbg !340
  ret i8* %54, !dbg !340
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #2

; Function Attrs: noreturn nounwind
define hidden void @luaM_toobig(%struct.lua_State* %L) #3 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !341), !dbg !342
  %2 = load %struct.lua_State** %1, align 4, !dbg !343
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %2, i8* getelementptr inbounds ([39 x i8]* @.str1, i32 0, i32 0)) #5, !dbg !343
  unreachable, !dbg !343
                                                  ; No predecessors!
  ret void, !dbg !344
}

; Function Attrs: nounwind
define hidden i8* @luaM_realloc_(%struct.lua_State* %L, i8* %block, i32 %osize, i32 %nsize) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %newblock = alloca i8*, align 4
  %g = alloca %struct.global_State*, align 4
  %realosize = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !345), !dbg !346
  store i8* %block, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !347), !dbg !348
  store i32 %osize, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !349), !dbg !350
  store i32 %nsize, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !351), !dbg !352
  call void @llvm.dbg.declare(metadata !{i8** %newblock}, metadata !353), !dbg !354
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !355), !dbg !356
  %5 = load %struct.lua_State** %1, align 4, !dbg !357
  %6 = getelementptr inbounds %struct.lua_State* %5, i32 0, i32 6, !dbg !357
  %7 = load %struct.global_State** %6, align 4, !dbg !357
  store %struct.global_State* %7, %struct.global_State** %g, align 4, !dbg !357
  call void @llvm.dbg.declare(metadata !{i32* %realosize}, metadata !358), !dbg !359
  %8 = load i8** %2, align 4, !dbg !360
  %9 = icmp ne i8* %8, null, !dbg !360
  br i1 %9, label %10, label %12, !dbg !360

; <label>:10                                      ; preds = %0
  %11 = load i32* %3, align 4, !dbg !361
  br label %13, !dbg !361

; <label>:12                                      ; preds = %0
  br label %13, !dbg !363

; <label>:13                                      ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 0, %12 ], !dbg !360
  store i32 %14, i32* %realosize, align 4, !dbg !365
  %15 = load %struct.global_State** %g, align 4, !dbg !368
  %16 = getelementptr inbounds %struct.global_State* %15, i32 0, i32 0, !dbg !368
  %17 = load i8* (i8*, i8*, i32, i32)** %16, align 4, !dbg !368
  %18 = load %struct.global_State** %g, align 4, !dbg !368
  %19 = getelementptr inbounds %struct.global_State* %18, i32 0, i32 1, !dbg !368
  %20 = load i8** %19, align 4, !dbg !368
  %21 = load i8** %2, align 4, !dbg !368
  %22 = load i32* %3, align 4, !dbg !368
  %23 = load i32* %4, align 4, !dbg !368
  %24 = call i8* %17(i8* %20, i8* %21, i32 %22, i32 %23), !dbg !368
  store i8* %24, i8** %newblock, align 4, !dbg !368
  %25 = load i8** %newblock, align 4, !dbg !369
  %26 = icmp eq i8* %25, null, !dbg !369
  br i1 %26, label %27, label %53, !dbg !369

; <label>:27                                      ; preds = %13
  %28 = load i32* %4, align 4, !dbg !371
  %29 = icmp ugt i32 %28, 0, !dbg !371
  br i1 %29, label %30, label %53, !dbg !371

; <label>:30                                      ; preds = %27
  %31 = load %struct.global_State** %g, align 4, !dbg !373
  %32 = getelementptr inbounds %struct.global_State* %31, i32 0, i32 29, !dbg !373
  %33 = load double** %32, align 4, !dbg !373
  %34 = icmp ne double* %33, null, !dbg !373
  br i1 %34, label %35, label %47, !dbg !373

; <label>:35                                      ; preds = %30
  %36 = load %struct.lua_State** %1, align 4, !dbg !376
  call void @luaC_fullgc(%struct.lua_State* %36, i32 1), !dbg !376
  %37 = load %struct.global_State** %g, align 4, !dbg !378
  %38 = getelementptr inbounds %struct.global_State* %37, i32 0, i32 0, !dbg !378
  %39 = load i8* (i8*, i8*, i32, i32)** %38, align 4, !dbg !378
  %40 = load %struct.global_State** %g, align 4, !dbg !378
  %41 = getelementptr inbounds %struct.global_State* %40, i32 0, i32 1, !dbg !378
  %42 = load i8** %41, align 4, !dbg !378
  %43 = load i8** %2, align 4, !dbg !378
  %44 = load i32* %3, align 4, !dbg !378
  %45 = load i32* %4, align 4, !dbg !378
  %46 = call i8* %39(i8* %42, i8* %43, i32 %44, i32 %45), !dbg !378
  store i8* %46, i8** %newblock, align 4, !dbg !378
  br label %47, !dbg !379

; <label>:47                                      ; preds = %35, %30
  %48 = load i8** %newblock, align 4, !dbg !380
  %49 = icmp eq i8* %48, null, !dbg !380
  br i1 %49, label %50, label %52, !dbg !380

; <label>:50                                      ; preds = %47
  %51 = load %struct.lua_State** %1, align 4, !dbg !382
  call void @luaD_throw(%struct.lua_State* %51, i32 4) #5, !dbg !382
  unreachable, !dbg !382

; <label>:52                                      ; preds = %47
  br label %53, !dbg !383

; <label>:53                                      ; preds = %52, %27, %13
  %54 = load %struct.global_State** %g, align 4, !dbg !384
  %55 = getelementptr inbounds %struct.global_State* %54, i32 0, i32 3, !dbg !384
  %56 = load i32* %55, align 4, !dbg !384
  %57 = load i32* %4, align 4, !dbg !384
  %58 = add i32 %56, %57, !dbg !384
  %59 = load i32* %realosize, align 4, !dbg !384
  %60 = sub i32 %58, %59, !dbg !384
  %61 = load %struct.global_State** %g, align 4, !dbg !384
  %62 = getelementptr inbounds %struct.global_State* %61, i32 0, i32 3, !dbg !384
  store i32 %60, i32* %62, align 4, !dbg !384
  %63 = load i8** %newblock, align 4, !dbg !385
  ret i8* %63, !dbg !385
}

declare hidden void @luaC_fullgc(%struct.lua_State*, i32) #4

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286}
!xidane.function_declaration_type = !{!275, !287, !277, !288, !279, !289, !281, !290, !283, !291, !285, !291}
!xidane.function_declaration_filename = !{!275, !292, !277, !293, !279, !292, !281, !292, !283, !294, !285, !295}
!xidane.ExternC = !{!275, !277, !279, !281, !283, !285}
!llvm.module.flags = !{!296, !297, !298, !299}
!llvm.ident = !{!300}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lmem.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clmem.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !269, metadata !272}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaM_growaux_", metadata !"luaM_growaux_", metadata !"", i32 48, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*, i32*, i32, i32, i8*)* @luaM_growaux_, null, null, metadata !2, i32 49} ; [ DW_TAG_subprogram ] [line 48] [def] [scope 49] [luaM_growaux_]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lmem.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmem.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !10, metadata !9, metadata !268, metadata !69, metadata !46, metadata !238}
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!11 = metadata !{i32 786454, metadata !12, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!12 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!13 = metadata !{i32 786451, metadata !14, null, metadata !"lua_State", i32 159, i64 960, i64 32, i32 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 159, size 960, align 32, offset 0] [def] [from ]
!14 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!15 = metadata !{metadata !16, metadata !28, metadata !29, metadata !30, metadata !32, metadata !33, metadata !59, metadata !175, metadata !213, metadata !214, metadata !215, metadata !216, metadata !220, metadata !221, metadata !222, metadata !225, metadata !226, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !267}
!16 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"next", i32 160, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [next] [line 160, size 32, align 32, offset 0] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from GCObject]
!18 = metadata !{i32 786454, metadata !19, null, metadata !"GCObject", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [GCObject] [line 72, size 0, align 0, offset 0] [from GCObject]
!19 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!20 = metadata !{i32 786451, metadata !19, null, metadata !"GCObject", i32 85, i64 64, i64 32, i32 0, i32 0, null, metadata !21, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [GCObject] [line 85, size 64, align 32, offset 0] [def] [from ]
!21 = metadata !{metadata !22, metadata !23, metadata !27}
!22 = metadata !{i32 786445, metadata !19, metadata !20, metadata !"next", i32 86, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [next] [line 86, size 32, align 32, offset 0] [from ]
!23 = metadata !{i32 786445, metadata !19, metadata !20, metadata !"tt", i32 86, i64 8, i64 8, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [tt] [line 86, size 8, align 8, offset 32] [from lu_byte]
!24 = metadata !{i32 786454, metadata !25, null, metadata !"lu_byte", i32 35, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [lu_byte] [line 35, size 0, align 0, offset 0] [from unsigned char]
!25 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llimits.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!26 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!27 = metadata !{i32 786445, metadata !19, metadata !20, metadata !"marked", i32 86, i64 8, i64 8, i64 40, i32 0, metadata !24} ; [ DW_TAG_member ] [marked] [line 86, size 8, align 8, offset 40] [from lu_byte]
!28 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"tt", i32 160, i64 8, i64 8, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [tt] [line 160, size 8, align 8, offset 32] [from lu_byte]
!29 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"marked", i32 160, i64 8, i64 8, i64 40, i32 0, metadata !24} ; [ DW_TAG_member ] [marked] [line 160, size 8, align 8, offset 40] [from lu_byte]
!30 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"nci", i32 161, i64 16, i64 16, i64 48, i32 0, metadata !31} ; [ DW_TAG_member ] [nci] [line 161, size 16, align 16, offset 48] [from unsigned short]
!31 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!32 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"status", i32 162, i64 8, i64 8, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [status] [line 162, size 8, align 8, offset 64] [from lu_byte]
!33 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"top", i32 163, i64 32, i64 32, i64 96, i32 0, metadata !34} ; [ DW_TAG_member ] [top] [line 163, size 32, align 32, offset 96] [from StkId]
!34 = metadata !{i32 786454, metadata !19, null, metadata !"StkId", i32 294, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ] [StkId] [line 294, size 0, align 0, offset 0] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TValue]
!36 = metadata !{i32 786454, metadata !19, null, metadata !"TValue", i32 115, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [TValue] [line 115, size 0, align 0, offset 0] [from lua_TValue]
!37 = metadata !{i32 786451, metadata !19, null, metadata !"lua_TValue", i32 113, i64 128, i64 64, i32 0, i32 0, null, metadata !38, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_TValue] [line 113, size 128, align 64, offset 0] [def] [from ]
!38 = metadata !{metadata !39, metadata !58}
!39 = metadata !{i32 786445, metadata !19, metadata !37, metadata !"value_", i32 114, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [value_] [line 114, size 64, align 64, offset 0] [from Value]
!40 = metadata !{i32 786454, metadata !19, null, metadata !"Value", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [Value] [line 107, size 0, align 0, offset 0] [from Value]
!41 = metadata !{i32 786455, metadata !19, null, metadata !"Value", i32 100, i64 64, i64 64, i64 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_union_type ] [Value] [line 100, size 64, align 64, offset 0] [def] [from ]
!42 = metadata !{metadata !43, metadata !44, metadata !45, metadata !47, metadata !52, metadata !55}
!43 = metadata !{i32 786445, metadata !19, metadata !41, metadata !"gc", i32 101, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [gc] [line 101, size 32, align 32, offset 0] [from ]
!44 = metadata !{i32 786445, metadata !19, metadata !41, metadata !"p", i32 102, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [p] [line 102, size 32, align 32, offset 0] [from ]
!45 = metadata !{i32 786445, metadata !19, metadata !41, metadata !"b", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !46} ; [ DW_TAG_member ] [b] [line 103, size 32, align 32, offset 0] [from int]
!46 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!47 = metadata !{i32 786445, metadata !19, metadata !41, metadata !"f", i32 104, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ] [f] [line 104, size 32, align 32, offset 0] [from lua_CFunction]
!48 = metadata !{i32 786454, metadata !12, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!50 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!51 = metadata !{metadata !46, metadata !10}
!52 = metadata !{i32 786445, metadata !19, metadata !41, metadata !"i", i32 105, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_member ] [i] [line 105, size 64, align 64, offset 0] [from lua_Integer]
!53 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!54 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!55 = metadata !{i32 786445, metadata !19, metadata !41, metadata !"n", i32 106, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_member ] [n] [line 106, size 64, align 64, offset 0] [from lua_Number]
!56 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Number", i32 89, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [lua_Number] [line 89, size 0, align 0, offset 0] [from double]
!57 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!58 = metadata !{i32 786445, metadata !19, metadata !37, metadata !"tt_", i32 114, i64 32, i64 32, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [tt_] [line 114, size 32, align 32, offset 64] [from int]
!59 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"l_G", i32 164, i64 32, i64 32, i64 128, i32 0, metadata !60} ; [ DW_TAG_member ] [l_G] [line 164, size 32, align 32, offset 128] [from ]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from global_State]
!61 = metadata !{i32 786454, metadata !14, null, metadata !"global_State", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [global_State] [line 153, size 0, align 0, offset 0] [from global_State]
!62 = metadata !{i32 786451, metadata !14, null, metadata !"global_State", i32 118, i64 5568, i64 64, i32 0, i32 0, null, metadata !63, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [global_State] [line 118, size 5568, align 64, offset 0] [def] [from ]
!63 = metadata !{metadata !64, metadata !72, metadata !73, metadata !76, metadata !77, metadata !79, metadata !80, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !131, metadata !132, metadata !136, metadata !170}
!64 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"frealloc", i32 119, i64 32, i64 32, i64 0, i32 0, metadata !65} ; [ DW_TAG_member ] [frealloc] [line 119, size 32, align 32, offset 0] [from lua_Alloc]
!65 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Alloc", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [lua_Alloc] [line 124, size 0, align 0, offset 0] [from ]
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!67 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !68, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!68 = metadata !{metadata !9, metadata !9, metadata !9, metadata !69, metadata !69}
!69 = metadata !{i32 786454, metadata !70, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!70 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!71 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!72 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"ud", i32 120, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [ud] [line 120, size 32, align 32, offset 32] [from ]
!73 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"totalbytes", i32 121, i64 32, i64 32, i64 64, i32 0, metadata !74} ; [ DW_TAG_member ] [totalbytes] [line 121, size 32, align 32, offset 64] [from l_mem]
!74 = metadata !{i32 786454, metadata !25, null, metadata !"l_mem", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [l_mem] [line 27, size 0, align 0, offset 0] [from ptrdiff_t]
!75 = metadata !{i32 786454, metadata !70, null, metadata !"ptrdiff_t", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 149, size 0, align 0, offset 0] [from int]
!76 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"GCdebt", i32 122, i64 32, i64 32, i64 96, i32 0, metadata !74} ; [ DW_TAG_member ] [GCdebt] [line 122, size 32, align 32, offset 96] [from l_mem]
!77 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"GCmemtrav", i32 123, i64 32, i64 32, i64 128, i32 0, metadata !78} ; [ DW_TAG_member ] [GCmemtrav] [line 123, size 32, align 32, offset 128] [from lu_mem]
!78 = metadata !{i32 786454, metadata !25, null, metadata !"lu_mem", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_typedef ] [lu_mem] [line 26, size 0, align 0, offset 0] [from size_t]
!79 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"GCestimate", i32 124, i64 32, i64 32, i64 160, i32 0, metadata !78} ; [ DW_TAG_member ] [GCestimate] [line 124, size 32, align 32, offset 160] [from lu_mem]
!80 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"strt", i32 125, i64 96, i64 32, i64 192, i32 0, metadata !81} ; [ DW_TAG_member ] [strt] [line 125, size 96, align 32, offset 192] [from stringtable]
!81 = metadata !{i32 786454, metadata !14, null, metadata !"stringtable", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_typedef ] [stringtable] [line 62, size 0, align 0, offset 0] [from stringtable]
!82 = metadata !{i32 786451, metadata !14, null, metadata !"stringtable", i32 58, i64 96, i64 32, i32 0, i32 0, null, metadata !83, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stringtable] [line 58, size 96, align 32, offset 0] [def] [from ]
!83 = metadata !{metadata !84, metadata !102, metadata !103}
!84 = metadata !{i32 786445, metadata !14, metadata !82, metadata !"hash", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [hash] [line 59, size 32, align 32, offset 0] [from ]
!85 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!87 = metadata !{i32 786454, metadata !19, null, metadata !"TString", i32 312, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [TString] [line 312, size 0, align 0, offset 0] [from TString]
!88 = metadata !{i32 786451, metadata !19, null, metadata !"TString", i32 303, i64 128, i64 32, i32 0, i32 0, null, metadata !89, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [TString] [line 303, size 128, align 32, offset 0] [def] [from ]
!89 = metadata !{metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96}
!90 = metadata !{i32 786445, metadata !19, metadata !88, metadata !"next", i32 304, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [next] [line 304, size 32, align 32, offset 0] [from ]
!91 = metadata !{i32 786445, metadata !19, metadata !88, metadata !"tt", i32 304, i64 8, i64 8, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [tt] [line 304, size 8, align 8, offset 32] [from lu_byte]
!92 = metadata !{i32 786445, metadata !19, metadata !88, metadata !"marked", i32 304, i64 8, i64 8, i64 40, i32 0, metadata !24} ; [ DW_TAG_member ] [marked] [line 304, size 8, align 8, offset 40] [from lu_byte]
!93 = metadata !{i32 786445, metadata !19, metadata !88, metadata !"extra", i32 305, i64 8, i64 8, i64 48, i32 0, metadata !24} ; [ DW_TAG_member ] [extra] [line 305, size 8, align 8, offset 48] [from lu_byte]
!94 = metadata !{i32 786445, metadata !19, metadata !88, metadata !"shrlen", i32 306, i64 8, i64 8, i64 56, i32 0, metadata !24} ; [ DW_TAG_member ] [shrlen] [line 306, size 8, align 8, offset 56] [from lu_byte]
!95 = metadata !{i32 786445, metadata !19, metadata !88, metadata !"hash", i32 307, i64 32, i64 32, i64 64, i32 0, metadata !71} ; [ DW_TAG_member ] [hash] [line 307, size 32, align 32, offset 64] [from unsigned int]
!96 = metadata !{i32 786445, metadata !19, metadata !88, metadata !"u", i32 311, i64 32, i64 32, i64 96, i32 0, metadata !97} ; [ DW_TAG_member ] [u] [line 311, size 32, align 32, offset 96] [from ]
!97 = metadata !{i32 786455, metadata !19, metadata !88, metadata !"", i32 308, i64 32, i64 32, i64 0, i32 0, null, metadata !98, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 308, size 32, align 32, offset 0] [def] [from ]
!98 = metadata !{metadata !99, metadata !100}
!99 = metadata !{i32 786445, metadata !19, metadata !97, metadata !"lnglen", i32 309, i64 32, i64 32, i64 0, i32 0, metadata !69} ; [ DW_TAG_member ] [lnglen] [line 309, size 32, align 32, offset 0] [from size_t]
!100 = metadata !{i32 786445, metadata !19, metadata !97, metadata !"hnext", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !101} ; [ DW_TAG_member ] [hnext] [line 310, size 32, align 32, offset 0] [from ]
!101 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!102 = metadata !{i32 786445, metadata !14, metadata !82, metadata !"nuse", i32 60, i64 32, i64 32, i64 32, i32 0, metadata !46} ; [ DW_TAG_member ] [nuse] [line 60, size 32, align 32, offset 32] [from int]
!103 = metadata !{i32 786445, metadata !14, metadata !82, metadata !"size", i32 61, i64 32, i64 32, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [size] [line 61, size 32, align 32, offset 64] [from int]
!104 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"l_registry", i32 126, i64 128, i64 64, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [l_registry] [line 126, size 128, align 64, offset 320] [from TValue]
!105 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"seed", i32 127, i64 32, i64 32, i64 448, i32 0, metadata !71} ; [ DW_TAG_member ] [seed] [line 127, size 32, align 32, offset 448] [from unsigned int]
!106 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"currentwhite", i32 128, i64 8, i64 8, i64 480, i32 0, metadata !24} ; [ DW_TAG_member ] [currentwhite] [line 128, size 8, align 8, offset 480] [from lu_byte]
!107 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"gcstate", i32 129, i64 8, i64 8, i64 488, i32 0, metadata !24} ; [ DW_TAG_member ] [gcstate] [line 129, size 8, align 8, offset 488] [from lu_byte]
!108 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"gckind", i32 130, i64 8, i64 8, i64 496, i32 0, metadata !24} ; [ DW_TAG_member ] [gckind] [line 130, size 8, align 8, offset 496] [from lu_byte]
!109 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"gcrunning", i32 131, i64 8, i64 8, i64 504, i32 0, metadata !24} ; [ DW_TAG_member ] [gcrunning] [line 131, size 8, align 8, offset 504] [from lu_byte]
!110 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"allgc", i32 132, i64 32, i64 32, i64 512, i32 0, metadata !17} ; [ DW_TAG_member ] [allgc] [line 132, size 32, align 32, offset 512] [from ]
!111 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"sweepgc", i32 133, i64 32, i64 32, i64 544, i32 0, metadata !112} ; [ DW_TAG_member ] [sweepgc] [line 133, size 32, align 32, offset 544] [from ]
!112 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!113 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"finobj", i32 134, i64 32, i64 32, i64 576, i32 0, metadata !17} ; [ DW_TAG_member ] [finobj] [line 134, size 32, align 32, offset 576] [from ]
!114 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"gray", i32 135, i64 32, i64 32, i64 608, i32 0, metadata !17} ; [ DW_TAG_member ] [gray] [line 135, size 32, align 32, offset 608] [from ]
!115 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"grayagain", i32 136, i64 32, i64 32, i64 640, i32 0, metadata !17} ; [ DW_TAG_member ] [grayagain] [line 136, size 32, align 32, offset 640] [from ]
!116 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"weak", i32 137, i64 32, i64 32, i64 672, i32 0, metadata !17} ; [ DW_TAG_member ] [weak] [line 137, size 32, align 32, offset 672] [from ]
!117 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"ephemeron", i32 138, i64 32, i64 32, i64 704, i32 0, metadata !17} ; [ DW_TAG_member ] [ephemeron] [line 138, size 32, align 32, offset 704] [from ]
!118 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"allweak", i32 139, i64 32, i64 32, i64 736, i32 0, metadata !17} ; [ DW_TAG_member ] [allweak] [line 139, size 32, align 32, offset 736] [from ]
!119 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"tobefnz", i32 140, i64 32, i64 32, i64 768, i32 0, metadata !17} ; [ DW_TAG_member ] [tobefnz] [line 140, size 32, align 32, offset 768] [from ]
!120 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"fixedgc", i32 141, i64 32, i64 32, i64 800, i32 0, metadata !17} ; [ DW_TAG_member ] [fixedgc] [line 141, size 32, align 32, offset 800] [from ]
!121 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"twups", i32 142, i64 32, i64 32, i64 832, i32 0, metadata !122} ; [ DW_TAG_member ] [twups] [line 142, size 32, align 32, offset 832] [from ]
!122 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!123 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"gcfinnum", i32 143, i64 32, i64 32, i64 864, i32 0, metadata !71} ; [ DW_TAG_member ] [gcfinnum] [line 143, size 32, align 32, offset 864] [from unsigned int]
!124 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"gcpause", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !46} ; [ DW_TAG_member ] [gcpause] [line 144, size 32, align 32, offset 896] [from int]
!125 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"gcstepmul", i32 145, i64 32, i64 32, i64 928, i32 0, metadata !46} ; [ DW_TAG_member ] [gcstepmul] [line 145, size 32, align 32, offset 928] [from int]
!126 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"panic", i32 146, i64 32, i64 32, i64 960, i32 0, metadata !48} ; [ DW_TAG_member ] [panic] [line 146, size 32, align 32, offset 960] [from lua_CFunction]
!127 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"mainthread", i32 147, i64 32, i64 32, i64 992, i32 0, metadata !122} ; [ DW_TAG_member ] [mainthread] [line 147, size 32, align 32, offset 992] [from ]
!128 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"version", i32 148, i64 32, i64 32, i64 1024, i32 0, metadata !129} ; [ DW_TAG_member ] [version] [line 148, size 32, align 32, offset 1024] [from ]
!129 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !130} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!130 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lua_Number]
!131 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"memerrmsg", i32 149, i64 32, i64 32, i64 1056, i32 0, metadata !86} ; [ DW_TAG_member ] [memerrmsg] [line 149, size 32, align 32, offset 1056] [from ]
!132 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"tmname", i32 150, i64 768, i64 32, i64 1088, i32 0, metadata !133} ; [ DW_TAG_member ] [tmname] [line 150, size 768, align 32, offset 1088] [from ]
!133 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !86, metadata !134, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from ]
!134 = metadata !{metadata !135}
!135 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!136 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"mt", i32 151, i64 288, i64 32, i64 1856, i32 0, metadata !137} ; [ DW_TAG_member ] [mt] [line 151, size 288, align 32, offset 1856] [from ]
!137 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !138, metadata !168, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from ]
!138 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!139 = metadata !{i32 786451, metadata !19, null, metadata !"Table", i32 497, i64 256, i64 32, i32 0, i32 0, null, metadata !140, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Table] [line 497, size 256, align 32, offset 0] [def] [from ]
!140 = metadata !{metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !165, metadata !166, metadata !167}
!141 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"next", i32 498, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [next] [line 498, size 32, align 32, offset 0] [from ]
!142 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"tt", i32 498, i64 8, i64 8, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [tt] [line 498, size 8, align 8, offset 32] [from lu_byte]
!143 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"marked", i32 498, i64 8, i64 8, i64 40, i32 0, metadata !24} ; [ DW_TAG_member ] [marked] [line 498, size 8, align 8, offset 40] [from lu_byte]
!144 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"flags", i32 499, i64 8, i64 8, i64 48, i32 0, metadata !24} ; [ DW_TAG_member ] [flags] [line 499, size 8, align 8, offset 48] [from lu_byte]
!145 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"lsizenode", i32 500, i64 8, i64 8, i64 56, i32 0, metadata !24} ; [ DW_TAG_member ] [lsizenode] [line 500, size 8, align 8, offset 56] [from lu_byte]
!146 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"sizearray", i32 501, i64 32, i64 32, i64 64, i32 0, metadata !71} ; [ DW_TAG_member ] [sizearray] [line 501, size 32, align 32, offset 64] [from unsigned int]
!147 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"array", i32 502, i64 32, i64 32, i64 96, i32 0, metadata !35} ; [ DW_TAG_member ] [array] [line 502, size 32, align 32, offset 96] [from ]
!148 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"node", i32 503, i64 32, i64 32, i64 128, i32 0, metadata !149} ; [ DW_TAG_member ] [node] [line 503, size 32, align 32, offset 128] [from ]
!149 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !150} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Node]
!150 = metadata !{i32 786454, metadata !19, null, metadata !"Node", i32 494, i64 0, i64 0, i64 0, i32 0, metadata !151} ; [ DW_TAG_typedef ] [Node] [line 494, size 0, align 0, offset 0] [from Node]
!151 = metadata !{i32 786451, metadata !19, null, metadata !"Node", i32 491, i64 256, i64 64, i32 0, i32 0, null, metadata !152, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Node] [line 491, size 256, align 64, offset 0] [def] [from ]
!152 = metadata !{metadata !153, metadata !154}
!153 = metadata !{i32 786445, metadata !19, metadata !151, metadata !"i_val", i32 492, i64 128, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [i_val] [line 492, size 128, align 64, offset 0] [from TValue]
!154 = metadata !{i32 786445, metadata !19, metadata !151, metadata !"i_key", i32 493, i64 128, i64 64, i64 128, i32 0, metadata !155} ; [ DW_TAG_member ] [i_key] [line 493, size 128, align 64, offset 128] [from TKey]
!155 = metadata !{i32 786454, metadata !19, null, metadata !"TKey", i32 481, i64 0, i64 0, i64 0, i32 0, metadata !156} ; [ DW_TAG_typedef ] [TKey] [line 481, size 0, align 0, offset 0] [from TKey]
!156 = metadata !{i32 786455, metadata !19, null, metadata !"TKey", i32 475, i64 128, i64 64, i64 0, i32 0, null, metadata !157, i32 0, null, null, null} ; [ DW_TAG_union_type ] [TKey] [line 475, size 128, align 64, offset 0] [def] [from ]
!157 = metadata !{metadata !158, metadata !164}
!158 = metadata !{i32 786445, metadata !19, metadata !156, metadata !"nk", i32 479, i64 128, i64 64, i64 0, i32 0, metadata !159} ; [ DW_TAG_member ] [nk] [line 479, size 128, align 64, offset 0] [from ]
!159 = metadata !{i32 786451, metadata !19, metadata !156, metadata !"", i32 476, i64 128, i64 64, i32 0, i32 0, null, metadata !160, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 476, size 128, align 64, offset 0] [def] [from ]
!160 = metadata !{metadata !161, metadata !162, metadata !163}
!161 = metadata !{i32 786445, metadata !19, metadata !159, metadata !"value_", i32 477, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [value_] [line 477, size 64, align 64, offset 0] [from Value]
!162 = metadata !{i32 786445, metadata !19, metadata !159, metadata !"tt_", i32 477, i64 32, i64 32, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [tt_] [line 477, size 32, align 32, offset 64] [from int]
!163 = metadata !{i32 786445, metadata !19, metadata !159, metadata !"next", i32 478, i64 32, i64 32, i64 96, i32 0, metadata !46} ; [ DW_TAG_member ] [next] [line 478, size 32, align 32, offset 96] [from int]
!164 = metadata !{i32 786445, metadata !19, metadata !156, metadata !"tvk", i32 480, i64 128, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [tvk] [line 480, size 128, align 64, offset 0] [from TValue]
!165 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"lastfree", i32 504, i64 32, i64 32, i64 160, i32 0, metadata !149} ; [ DW_TAG_member ] [lastfree] [line 504, size 32, align 32, offset 160] [from ]
!166 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"metatable", i32 505, i64 32, i64 32, i64 192, i32 0, metadata !138} ; [ DW_TAG_member ] [metatable] [line 505, size 32, align 32, offset 192] [from ]
!167 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"gclist", i32 506, i64 32, i64 32, i64 224, i32 0, metadata !17} ; [ DW_TAG_member ] [gclist] [line 506, size 32, align 32, offset 224] [from ]
!168 = metadata !{metadata !169}
!169 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!170 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"strcache", i32 152, i64 3392, i64 32, i64 2144, i32 0, metadata !171} ; [ DW_TAG_member ] [strcache] [line 152, size 3392, align 32, offset 2144] [from ]
!171 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3392, i64 32, i32 0, i32 0, metadata !86, metadata !172, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3392, align 32, offset 0] [from ]
!172 = metadata !{metadata !173, metadata !174}
!173 = metadata !{i32 786465, i64 0, i64 53}      ; [ DW_TAG_subrange_type ] [0, 52]
!174 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!175 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"ci", i32 165, i64 32, i64 32, i64 160, i32 0, metadata !176} ; [ DW_TAG_member ] [ci] [line 165, size 32, align 32, offset 160] [from ]
!176 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !177} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!177 = metadata !{i32 786454, metadata !14, null, metadata !"CallInfo", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !178} ; [ DW_TAG_typedef ] [CallInfo] [line 92, size 0, align 0, offset 0] [from CallInfo]
!178 = metadata !{i32 786451, metadata !14, null, metadata !"CallInfo", i32 74, i64 288, i64 32, i32 0, i32 0, null, metadata !179, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CallInfo] [line 74, size 288, align 32, offset 0] [def] [from ]
!179 = metadata !{metadata !180, metadata !181, metadata !182, metadata !184, metadata !185, metadata !209, metadata !210, metadata !212}
!180 = metadata !{i32 786445, metadata !14, metadata !178, metadata !"func", i32 75, i64 32, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_member ] [func] [line 75, size 32, align 32, offset 0] [from StkId]
!181 = metadata !{i32 786445, metadata !14, metadata !178, metadata !"top", i32 76, i64 32, i64 32, i64 32, i32 0, metadata !34} ; [ DW_TAG_member ] [top] [line 76, size 32, align 32, offset 32] [from StkId]
!182 = metadata !{i32 786445, metadata !14, metadata !178, metadata !"previous", i32 77, i64 32, i64 32, i64 64, i32 0, metadata !183} ; [ DW_TAG_member ] [previous] [line 77, size 32, align 32, offset 64] [from ]
!183 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !178} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!184 = metadata !{i32 786445, metadata !14, metadata !178, metadata !"next", i32 77, i64 32, i64 32, i64 96, i32 0, metadata !183} ; [ DW_TAG_member ] [next] [line 77, size 32, align 32, offset 96] [from ]
!185 = metadata !{i32 786445, metadata !14, metadata !178, metadata !"u", i32 88, i64 96, i64 32, i64 128, i32 0, metadata !186} ; [ DW_TAG_member ] [u] [line 88, size 96, align 32, offset 128] [from ]
!186 = metadata !{i32 786455, metadata !14, metadata !178, metadata !"", i32 78, i64 96, i64 32, i64 0, i32 0, null, metadata !187, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 78, size 96, align 32, offset 0] [def] [from ]
!187 = metadata !{metadata !188, metadata !196}
!188 = metadata !{i32 786445, metadata !14, metadata !186, metadata !"l", i32 82, i64 64, i64 32, i64 0, i32 0, metadata !189} ; [ DW_TAG_member ] [l] [line 82, size 64, align 32, offset 0] [from ]
!189 = metadata !{i32 786451, metadata !14, metadata !186, metadata !"", i32 79, i64 64, i64 32, i32 0, i32 0, null, metadata !190, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 79, size 64, align 32, offset 0] [def] [from ]
!190 = metadata !{metadata !191, metadata !192}
!191 = metadata !{i32 786445, metadata !14, metadata !189, metadata !"base", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_member ] [base] [line 80, size 32, align 32, offset 0] [from StkId]
!192 = metadata !{i32 786445, metadata !14, metadata !189, metadata !"savedpc", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !193} ; [ DW_TAG_member ] [savedpc] [line 81, size 32, align 32, offset 32] [from ]
!193 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !194} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!194 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !195} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Instruction]
!195 = metadata !{i32 786454, metadata !25, null, metadata !"Instruction", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [Instruction] [line 163, size 0, align 0, offset 0] [from unsigned int]
!196 = metadata !{i32 786445, metadata !14, metadata !186, metadata !"c", i32 87, i64 96, i64 32, i64 0, i32 0, metadata !197} ; [ DW_TAG_member ] [c] [line 87, size 96, align 32, offset 0] [from ]
!197 = metadata !{i32 786451, metadata !14, metadata !186, metadata !"", i32 83, i64 96, i64 32, i32 0, i32 0, null, metadata !198, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 83, size 96, align 32, offset 0] [def] [from ]
!198 = metadata !{metadata !199, metadata !207, metadata !208}
!199 = metadata !{i32 786445, metadata !14, metadata !197, metadata !"k", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !200} ; [ DW_TAG_member ] [k] [line 84, size 32, align 32, offset 0] [from lua_KFunction]
!200 = metadata !{i32 786454, metadata !12, null, metadata !"lua_KFunction", i32 110, i64 0, i64 0, i64 0, i32 0, metadata !201} ; [ DW_TAG_typedef ] [lua_KFunction] [line 110, size 0, align 0, offset 0] [from ]
!201 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !202} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!202 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !203, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!203 = metadata !{metadata !46, metadata !10, metadata !46, metadata !204}
!204 = metadata !{i32 786454, metadata !12, null, metadata !"lua_KContext", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !205} ; [ DW_TAG_typedef ] [lua_KContext] [line 99, size 0, align 0, offset 0] [from intptr_t]
!205 = metadata !{i32 786454, metadata !206, null, metadata !"intptr_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_typedef ] [intptr_t] [line 125, size 0, align 0, offset 0] [from int]
!206 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdint.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!207 = metadata !{i32 786445, metadata !14, metadata !197, metadata !"old_errfunc", i32 85, i64 32, i64 32, i64 32, i32 0, metadata !75} ; [ DW_TAG_member ] [old_errfunc] [line 85, size 32, align 32, offset 32] [from ptrdiff_t]
!208 = metadata !{i32 786445, metadata !14, metadata !197, metadata !"ctx", i32 86, i64 32, i64 32, i64 64, i32 0, metadata !204} ; [ DW_TAG_member ] [ctx] [line 86, size 32, align 32, offset 64] [from lua_KContext]
!209 = metadata !{i32 786445, metadata !14, metadata !178, metadata !"extra", i32 89, i64 32, i64 32, i64 224, i32 0, metadata !75} ; [ DW_TAG_member ] [extra] [line 89, size 32, align 32, offset 224] [from ptrdiff_t]
!210 = metadata !{i32 786445, metadata !14, metadata !178, metadata !"nresults", i32 90, i64 16, i64 16, i64 256, i32 0, metadata !211} ; [ DW_TAG_member ] [nresults] [line 90, size 16, align 16, offset 256] [from short]
!211 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!212 = metadata !{i32 786445, metadata !14, metadata !178, metadata !"callstatus", i32 91, i64 8, i64 8, i64 272, i32 0, metadata !24} ; [ DW_TAG_member ] [callstatus] [line 91, size 8, align 8, offset 272] [from lu_byte]
!213 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"oldpc", i32 166, i64 32, i64 32, i64 192, i32 0, metadata !193} ; [ DW_TAG_member ] [oldpc] [line 166, size 32, align 32, offset 192] [from ]
!214 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"stack_last", i32 167, i64 32, i64 32, i64 224, i32 0, metadata !34} ; [ DW_TAG_member ] [stack_last] [line 167, size 32, align 32, offset 224] [from StkId]
!215 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"stack", i32 168, i64 32, i64 32, i64 256, i32 0, metadata !34} ; [ DW_TAG_member ] [stack] [line 168, size 32, align 32, offset 256] [from StkId]
!216 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"openupval", i32 169, i64 32, i64 32, i64 288, i32 0, metadata !217} ; [ DW_TAG_member ] [openupval] [line 169, size 32, align 32, offset 288] [from ]
!217 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !218} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from UpVal]
!218 = metadata !{i32 786454, metadata !19, null, metadata !"UpVal", i32 436, i64 0, i64 0, i64 0, i32 0, metadata !219} ; [ DW_TAG_typedef ] [UpVal] [line 436, size 0, align 0, offset 0] [from UpVal]
!219 = metadata !{i32 786451, metadata !19, null, metadata !"UpVal", i32 436, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [UpVal] [line 436, size 0, align 0, offset 0] [decl] [from ]
!220 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"gclist", i32 170, i64 32, i64 32, i64 320, i32 0, metadata !17} ; [ DW_TAG_member ] [gclist] [line 170, size 32, align 32, offset 320] [from ]
!221 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"twups", i32 171, i64 32, i64 32, i64 352, i32 0, metadata !122} ; [ DW_TAG_member ] [twups] [line 171, size 32, align 32, offset 352] [from ]
!222 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"errorJmp", i32 172, i64 32, i64 32, i64 384, i32 0, metadata !223} ; [ DW_TAG_member ] [errorJmp] [line 172, size 32, align 32, offset 384] [from ]
!223 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !224} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_longjmp]
!224 = metadata !{i32 786451, metadata !14, null, metadata !"lua_longjmp", i32 33, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_longjmp] [line 33, size 0, align 0, offset 0] [decl] [from ]
!225 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"base_ci", i32 173, i64 288, i64 32, i64 416, i32 0, metadata !177} ; [ DW_TAG_member ] [base_ci] [line 173, size 288, align 32, offset 416] [from CallInfo]
!226 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"hook", i32 174, i64 32, i64 32, i64 704, i32 0, metadata !227} ; [ DW_TAG_member ] [hook] [line 174, size 32, align 32, offset 704] [from ]
!227 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !228} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from lua_Hook]
!228 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Hook", i32 421, i64 0, i64 0, i64 0, i32 0, metadata !229} ; [ DW_TAG_typedef ] [lua_Hook] [line 421, size 0, align 0, offset 0] [from ]
!229 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !230} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!230 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !231, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!231 = metadata !{null, metadata !10, metadata !232}
!232 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !233} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!233 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !234} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!234 = metadata !{i32 786451, metadata !12, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !235, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!235 = metadata !{metadata !236, metadata !237, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !255}
!236 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !46} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!237 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !238} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!238 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !239} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!239 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !240} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!240 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!241 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !238} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!242 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !238} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!243 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !238} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!244 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !46} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!245 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !46} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!246 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !46} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!247 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!248 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !26} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!249 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !240} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!250 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !240} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!251 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !252} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!252 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !240, metadata !253, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!253 = metadata !{metadata !254}
!254 = metadata !{i32 786465, i64 0, i64 60}      ; [ DW_TAG_subrange_type ] [0, 59]
!255 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !183} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!256 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"errfunc", i32 175, i64 32, i64 32, i64 736, i32 0, metadata !75} ; [ DW_TAG_member ] [errfunc] [line 175, size 32, align 32, offset 736] [from ptrdiff_t]
!257 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"stacksize", i32 176, i64 32, i64 32, i64 768, i32 0, metadata !46} ; [ DW_TAG_member ] [stacksize] [line 176, size 32, align 32, offset 768] [from int]
!258 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"basehookcount", i32 177, i64 32, i64 32, i64 800, i32 0, metadata !46} ; [ DW_TAG_member ] [basehookcount] [line 177, size 32, align 32, offset 800] [from int]
!259 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"hookcount", i32 178, i64 32, i64 32, i64 832, i32 0, metadata !46} ; [ DW_TAG_member ] [hookcount] [line 178, size 32, align 32, offset 832] [from int]
!260 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"nny", i32 179, i64 16, i64 16, i64 864, i32 0, metadata !31} ; [ DW_TAG_member ] [nny] [line 179, size 16, align 16, offset 864] [from unsigned short]
!261 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"nCcalls", i32 180, i64 16, i64 16, i64 880, i32 0, metadata !31} ; [ DW_TAG_member ] [nCcalls] [line 180, size 16, align 16, offset 880] [from unsigned short]
!262 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"hookmask", i32 181, i64 32, i64 32, i64 896, i32 0, metadata !263} ; [ DW_TAG_member ] [hookmask] [line 181, size 32, align 32, offset 896] [from sig_atomic_t]
!263 = metadata !{i32 786454, metadata !264, null, metadata !"sig_atomic_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !265} ; [ DW_TAG_typedef ] [sig_atomic_t] [line 40, size 0, align 0, offset 0] [from __sig_atomic_t]
!264 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csignal.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!265 = metadata !{i32 786454, metadata !266, null, metadata !"__sig_atomic_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_typedef ] [__sig_atomic_t] [line 22, size 0, align 0, offset 0] [from int]
!266 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/sigset.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!267 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"allowhook", i32 182, i64 8, i64 8, i64 928, i32 0, metadata !24} ; [ DW_TAG_member ] [allowhook] [line 182, size 8, align 8, offset 928] [from lu_byte]
!268 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!269 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaM_toobig", metadata !"luaM_toobig", metadata !"", i32 68, metadata !270, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @luaM_toobig, null, null, metadata !2, i32 68} ; [ DW_TAG_subprogram ] [line 68] [def] [luaM_toobig]
!270 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !271, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!271 = metadata !{null, metadata !10}
!272 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaM_realloc_", metadata !"luaM_realloc_", metadata !"", i32 77, metadata !273, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*, i32, i32)* @luaM_realloc_, null, null, metadata !2, i32 77} ; [ DW_TAG_subprogram ] [line 77] [def] [luaM_realloc_]
!273 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !274, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!274 = metadata !{metadata !9, metadata !10, metadata !9, metadata !69, metadata !69}
!275 = metadata !{i8* (%struct.lua_State*, i8*, i32*, i32, i32, i8*)* @luaM_growaux_}
!276 = metadata !{metadata !"luaM_growaux_"}
!277 = metadata !{void (%struct.lua_State*, i8*, ...)* @luaG_runerror}
!278 = metadata !{metadata !"luaG_runerror"}
!279 = metadata !{void (%struct.lua_State*)* @luaM_toobig}
!280 = metadata !{metadata !"luaM_toobig"}
!281 = metadata !{i8* (%struct.lua_State*, i8*, i32, i32)* @luaM_realloc_}
!282 = metadata !{metadata !"luaM_realloc_"}
!283 = metadata !{void (%struct.lua_State*, i32)* @luaC_fullgc}
!284 = metadata !{metadata !"luaC_fullgc"}
!285 = metadata !{void (%struct.lua_State*, i32)* @luaD_throw}
!286 = metadata !{metadata !"luaD_throw"}
!287 = metadata !{metadata !"void .lua_State *.1.void *.1.int *.1.size_t.0.int.0.const char *.1"}
!288 = metadata !{metadata !"void.lua_State *.1.const char *.1"}
!289 = metadata !{metadata !"void.lua_State *.1"}
!290 = metadata !{metadata !"void .lua_State *.1.void *.1.size_t.0.size_t.0"}
!291 = metadata !{metadata !"void.lua_State *.1.int.0"}
!292 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lmem.h"}
!293 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldebug.h"}
!294 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lgc.h"}
!295 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldo.h"}
!296 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!297 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!298 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!299 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!300 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!301 = metadata !{i32 786689, metadata !4, metadata !"L", metadata !6, i32 16777264, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 48]
!302 = metadata !{i32 48, i32 33, metadata !4, null}
!303 = metadata !{i32 786689, metadata !4, metadata !"block", metadata !6, i32 33554480, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block] [line 48]
!304 = metadata !{i32 48, i32 42, metadata !4, null}
!305 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !6, i32 50331696, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 48]
!306 = metadata !{i32 48, i32 54, metadata !4, null}
!307 = metadata !{i32 786689, metadata !4, metadata !"size_elems", metadata !6, i32 67108912, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size_elems] [line 48]
!308 = metadata !{i32 48, i32 67, metadata !4, null}
!309 = metadata !{i32 786689, metadata !4, metadata !"limit", metadata !6, i32 83886129, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [limit] [line 49]
!310 = metadata !{i32 49, i32 26, metadata !4, null}
!311 = metadata !{i32 786689, metadata !4, metadata !"what", metadata !6, i32 100663345, metadata !238, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [what] [line 49]
!312 = metadata !{i32 49, i32 45, metadata !4, null}
!313 = metadata !{i32 786688, metadata !4, metadata !"newblock", metadata !6, i32 50, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newblock] [line 50]
!314 = metadata !{i32 50, i32 9, metadata !4, null}
!315 = metadata !{i32 786688, metadata !4, metadata !"newsize", metadata !6, i32 51, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newsize] [line 51]
!316 = metadata !{i32 51, i32 7, metadata !4, null}
!317 = metadata !{i32 52, i32 7, metadata !318, null}
!318 = metadata !{i32 786443, metadata !5, metadata !4, i32 52, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmem.c]
!319 = metadata !{i32 53, i32 9, metadata !320, null}
!320 = metadata !{i32 786443, metadata !5, metadata !321, i32 53, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmem.c]
!321 = metadata !{i32 786443, metadata !5, metadata !318, i32 52, i32 25, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmem.c]
!322 = metadata !{i32 54, i32 7, metadata !320, null}
!323 = metadata !{i32 55, i32 5, metadata !321, null}
!324 = metadata !{i32 56, i32 3, metadata !321, null}
!325 = metadata !{i32 58, i32 5, metadata !326, null} ; [ DW_TAG_imported_module ]
!326 = metadata !{i32 786443, metadata !5, metadata !318, i32 57, i32 8, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmem.c]
!327 = metadata !{i32 59, i32 9, metadata !328, null}
!328 = metadata !{i32 786443, metadata !5, metadata !326, i32 59, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmem.c]
!329 = metadata !{i32 60, i32 7, metadata !328, null}
!330 = metadata !{i32 62, i32 3, metadata !4, null}
!331 = metadata !{i32 62, i32 14, metadata !332, null}
!332 = metadata !{i32 786443, metadata !5, metadata !4, i32 62, i32 14, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmem.c]
!333 = metadata !{i32 62, i32 14, metadata !4, null}
!334 = metadata !{i32 62, i32 14, metadata !335, null}
!335 = metadata !{i32 786443, metadata !5, metadata !4, i32 62, i32 14, i32 2, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmem.c]
!336 = metadata !{i32 62, i32 14, metadata !337, null}
!337 = metadata !{i32 786443, metadata !5, metadata !338, i32 62, i32 14, i32 4, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmem.c]
!338 = metadata !{i32 786443, metadata !5, metadata !4, i32 62, i32 14, i32 3, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmem.c]
!339 = metadata !{i32 63, i32 3, metadata !4, null}
!340 = metadata !{i32 64, i32 3, metadata !4, null}
!341 = metadata !{i32 786689, metadata !269, metadata !"L", metadata !6, i32 16777284, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 68]
!342 = metadata !{i32 68, i32 33, metadata !269, null}
!343 = metadata !{i32 69, i32 3, metadata !269, null}
!344 = metadata !{i32 70, i32 1, metadata !269, null}
!345 = metadata !{i32 786689, metadata !272, metadata !"L", metadata !6, i32 16777293, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 77]
!346 = metadata !{i32 77, i32 33, metadata !272, null}
!347 = metadata !{i32 786689, metadata !272, metadata !"block", metadata !6, i32 33554509, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block] [line 77]
!348 = metadata !{i32 77, i32 42, metadata !272, null}
!349 = metadata !{i32 786689, metadata !272, metadata !"osize", metadata !6, i32 50331725, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [osize] [line 77]
!350 = metadata !{i32 77, i32 56, metadata !272, null}
!351 = metadata !{i32 786689, metadata !272, metadata !"nsize", metadata !6, i32 67108941, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsize] [line 77]
!352 = metadata !{i32 77, i32 70, metadata !272, null}
!353 = metadata !{i32 786688, metadata !272, metadata !"newblock", metadata !6, i32 78, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newblock] [line 78]
!354 = metadata !{i32 78, i32 9, metadata !272, null}
!355 = metadata !{i32 786688, metadata !272, metadata !"g", metadata !6, i32 79, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 79]
!356 = metadata !{i32 79, i32 17, metadata !272, null}
!357 = metadata !{i32 79, i32 3, metadata !272, null}
!358 = metadata !{i32 786688, metadata !272, metadata !"realosize", metadata !6, i32 80, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [realosize] [line 80]
!359 = metadata !{i32 80, i32 10, metadata !272, null}
!360 = metadata !{i32 80, i32 3, metadata !272, null}
!361 = metadata !{i32 80, i32 3, metadata !362, null}
!362 = metadata !{i32 786443, metadata !5, metadata !272, i32 80, i32 3, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmem.c]
!363 = metadata !{i32 80, i32 3, metadata !364, null}
!364 = metadata !{i32 786443, metadata !5, metadata !272, i32 80, i32 3, i32 2, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmem.c]
!365 = metadata !{i32 80, i32 3, metadata !366, null}
!366 = metadata !{i32 786443, metadata !5, metadata !367, i32 80, i32 3, i32 4, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmem.c]
!367 = metadata !{i32 786443, metadata !5, metadata !272, i32 80, i32 3, i32 3, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmem.c]
!368 = metadata !{i32 86, i32 14, metadata !272, null}
!369 = metadata !{i32 87, i32 7, metadata !370, null}
!370 = metadata !{i32 786443, metadata !5, metadata !272, i32 87, i32 7, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmem.c]
!371 = metadata !{i32 87, i32 7, metadata !372, null}
!372 = metadata !{i32 786443, metadata !5, metadata !370, i32 87, i32 7, i32 1, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmem.c]
!373 = metadata !{i32 89, i32 9, metadata !374, null}
!374 = metadata !{i32 786443, metadata !5, metadata !375, i32 89, i32 9, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmem.c]
!375 = metadata !{i32 786443, metadata !5, metadata !370, i32 87, i32 38, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmem.c]
!376 = metadata !{i32 90, i32 7, metadata !377, null}
!377 = metadata !{i32 786443, metadata !5, metadata !374, i32 89, i32 21, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmem.c]
!378 = metadata !{i32 91, i32 18, metadata !377, null}
!379 = metadata !{i32 92, i32 5, metadata !377, null}
!380 = metadata !{i32 93, i32 9, metadata !381, null}
!381 = metadata !{i32 786443, metadata !5, metadata !375, i32 93, i32 9, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmem.c]
!382 = metadata !{i32 94, i32 7, metadata !381, null}
!383 = metadata !{i32 95, i32 3, metadata !375, null}
!384 = metadata !{i32 97, i32 3, metadata !272, null}
!385 = metadata !{i32 98, i32 3, metadata !272, null}
