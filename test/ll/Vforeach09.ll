@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i8*
  %i = alloca i64
  %_1 = alloca i1
  %_2 = alloca i8*
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L7, label %L1
L1:
  %_7 = call i8* @_bal_alloc (i64 8)
  %_8 = bitcast i8* %_7 to i64*
  store i64 0, i64* %_8, align 8
  %_9 = getelementptr i8, i8* %_7, i64 504403158265495552
  call void @_Bio__println (i8* %_9)
  store i8* null, i8** %_0
  store i64 0, i64* %i
  br label %L2
L2:
  %_10 = load i64, i64* %i
  %_11 = icmp slt i64 %_10, 1000
  store i1 %_11, i1* %_1
  %_12 = load i1, i1* %_1
  br i1 %_12, label %L5, label %L3
L3:
  %_13 = call i8* @_bal_alloc (i64 8)
  %_14 = bitcast i8* %_13 to i64*
  store i64 1, i64* %_14, align 8
  %_15 = getelementptr i8, i8* %_13, i64 504403158265495552
  call void @_Bio__println (i8* %_15)
  store i8* null, i8** %_2
  ret void
L4:
  %_16 = load i64, i64* %i
  %_17 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_16, i64 1)
  %_18 = extractvalue {i64, i1} %_17, 1
  br i1 %_18, label %L9, label %L8
L5:
  br label %L4
L6:
  %_20 = load i64, i64* %_3
  call void @_bal_panic (i64 %_20)
  unreachable
L7:
  call void @_bal_panic (i64 772)
  unreachable
L8:
  %_19 = extractvalue {i64, i1} %_17, 0
  store i64 %_19, i64* %i
  br label %L2
L9:
  store i64 1, i64* %_3
  br label %L6
}
