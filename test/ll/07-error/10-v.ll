@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)*, i64)
declare i8 addrspace(1)* @_Bb0m4lang5errormessage(i8 addrspace(1)*)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %err = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %s = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504), i64 5), !dbg !7
  store i8 addrspace(1)* %8, i8 addrspace(1)** %1, !dbg !7
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %9, i8 addrspace(1)** %err
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %err, !dbg !8
  %11 = call i8 addrspace(1)* @_Bb0m4lang5errormessage(i8 addrspace(1)* %10), !dbg !8
  store i8 addrspace(1)* %11, i8 addrspace(1)** %2, !dbg !8
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %12, i8 addrspace(1)** %s
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %13), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !9
  ret void
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-error/10-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 18, scope: !5)
!9 = !DILocation(line: 7, column: 4, scope: !5)
