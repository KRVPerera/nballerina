@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare void @_Bio__println (i8*)
declare i8* @_bal_alloc (i64)
define void @_B_main () {
  %i = alloca i64
  %_0 = alloca i1
  %_1 = alloca i1
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L8, label %L1
L1:
  store i64 6, i64* %i
  br label %L2
L2:
  %_7 = load i64, i64* %i
  %_8 = icmp slt i64 %_7, 10
  store i1 %_8, i1* %_0
  %_9 = load i1, i1* %_0
  br i1 %_9, label %L5, label %L3
L3:
  %_10 = zext i1 1 to i64
  %_11 = or i64 %_10, 72057594037927936
  %_12 = getelementptr i8, i8* null, i64 %_11
  call void @_Bio__println (i8* %_12)
  store i8* null, i8** %_3
  ret void
L4:
  %_13 = load i64, i64* %i
  %_14 = add nsw i64 %_13, 1
  store i64 %_14, i64* %i
  br label %L2
L5:
  %_15 = load i64, i64* %i
  %_16 = icmp eq i64 %_15, 8
  store i1 %_16, i1* %_1
  %_17 = load i1, i1* %_1
  br i1 %_17, label %L6, label %L7
L6:
  br label %L3
L7:
  %_18 = load i64, i64* %i
  %_19 = call i8* @_bal_alloc (i64 8)
  %_20 = bitcast i8* %_19 to i64*
  store i64 %_18, i64* %_20, align 8
  %_21 = getelementptr i8, i8* %_19, i64 504403158265495552
  call void @_Bio__println (i8* %_21)
  store i8* null, i8** %_2
  br label %L4
L8:
  call void @_bal_panic (i64 772)
  unreachable
}
