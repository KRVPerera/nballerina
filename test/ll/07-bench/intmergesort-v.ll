@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_Bb0m4lang5arraylength(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb0m4lang5arraypush(i8 addrspace(1)*, i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %len = alloca i64
  %a = alloca i64
  %m = alloca i64
  %x = alloca i64
  %v = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i64
  %s = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %i.1 = alloca i64
  %12 = alloca i1
  %13 = alloca i1
  %14 = alloca i64
  %15 = alloca i64
  %16 = alloca i64
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i1
  %19 = alloca i64
  %20 = alloca i64
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8
  %24 = load i8*, i8** @_bal_stack_guard
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %101, label %26
26:
  store i64 1000000, i64* %len
  store i64 16807, i64* %a
  store i64 2147483647, i64* %m
  store i64 17, i64* %x
  %27 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %28 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %27 to i8 addrspace(1)*
  %29 = getelementptr i8, i8 addrspace(1)* %28, i64 1297036692682702852
  store i8 addrspace(1)* %29, i8 addrspace(1)** %1
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %30, i8 addrspace(1)** %v
  %31 = load i64, i64* %len, !dbg !14
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %31), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %32), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !14
  store i64 0, i64* %i
  br label %33
33:
  %34 = load i64, i64* %i
  %35 = load i64, i64* %len
  %36 = icmp slt i64 %34, %35
  store i1 %36, i1* %3
  %37 = load i1, i1* %3
  br i1 %37, label %55, label %38
38:
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !15
  %40 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %39), !dbg !15
  store i8 addrspace(1)* %40, i8 addrspace(1)** %7, !dbg !15
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  store i8 addrspace(1)* %41, i8 addrspace(1)** %s
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !16
  %43 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %42, i64 -5), !dbg !16
  %44 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %43), !dbg !16
  store i64 %44, i64* %9, !dbg !16
  %45 = load i64, i64* %9
  %46 = load i64, i64* %len
  %47 = icmp eq i64 %45, %46
  store i1 %47, i1* %8
  %48 = load i1, i1* %8, !dbg !17
  %49 = zext i1 %48 to i64, !dbg !17
  %50 = or i64 %49, 72057594037927936, !dbg !17
  %51 = getelementptr i8, i8 addrspace(1)* null, i64 %50, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %51), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !17
  %52 = load i64, i64* %len
  %53 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %52, i64 1)
  %54 = extractvalue {i64, i1} %53, 1
  br i1 %54, label %105, label %103
55:
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !18
  %57 = load i64, i64* %x, !dbg !18
  %58 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %57), !dbg !18
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %56, i8 addrspace(1)* %58), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !18
  %59 = load i64, i64* %x
  %60 = load i64, i64* %a
  %61 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %59, i64 %60)
  %62 = extractvalue {i64, i1} %61, 1
  br i1 %62, label %112, label %107
63:
  %64 = load i64, i64* %i
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %i
  br label %33
66:
  %67 = load i64, i64* %i.1
  %68 = load i64, i64* %11
  %69 = icmp slt i64 %67, %68
  store i1 %69, i1* %12
  %70 = load i1, i1* %12
  br i1 %70, label %83, label %71
71:
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !19
  %73 = call i64 @_B_checksum(i8 addrspace(1)* %72), !dbg !19
  store i64 %73, i64* %19, !dbg !19
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %s, !dbg !20
  %75 = call i64 @_B_checksum(i8 addrspace(1)* %74), !dbg !20
  store i64 %75, i64* %20, !dbg !20
  %76 = load i64, i64* %19
  %77 = load i64, i64* %20
  %78 = icmp eq i64 %76, %77
  store i1 %78, i1* %18
  %79 = load i1, i1* %18, !dbg !21
  %80 = zext i1 %79 to i64, !dbg !21
  %81 = or i64 %80, 72057594037927936, !dbg !21
  %82 = getelementptr i8, i8 addrspace(1)* null, i64 %81, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %82), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !21
  ret void
83:
  %84 = load i64, i64* %i.1
  %85 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %86 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %85, i64 72057594037927928)
  %87 = bitcast i8 addrspace(1)* %86 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %88 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %87, i64 0, i32 1
  %89 = load i64, i64 addrspace(1)* %88, align 8
  %90 = icmp ult i64 %84, %89
  br i1 %90, label %125, label %134
91:
  %92 = zext i1 0 to i64, !dbg !22
  %93 = or i64 %92, 72057594037927936, !dbg !22
  %94 = getelementptr i8, i8 addrspace(1)* null, i64 %93, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %94), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !22
  br label %95
95:
  br label %96
96:
  %97 = load i64, i64* %i.1
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %i.1
  br label %66
99:
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  call void @_bal_panic(i8 addrspace(1)* %100)
  unreachable
101:
  %102 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %102)
  unreachable
103:
  %104 = extractvalue {i64, i1} %53, 0
  store i64 %104, i64* %11
  store i64 0, i64* %i.1
  br label %66
105:
  %106 = call i8 addrspace(1)* @_bal_panic_construct(i64 4865), !dbg !13
  store i8 addrspace(1)* %106, i8 addrspace(1)** %22
  br label %99
107:
  %108 = extractvalue {i64, i1} %61, 0
  store i64 %108, i64* %5
  %109 = load i64, i64* %5
  %110 = load i64, i64* %m
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %114, label %116
112:
  %113 = call i8 addrspace(1)* @_bal_panic_construct(i64 3841), !dbg !13
  store i8 addrspace(1)* %113, i8 addrspace(1)** %22
  br label %99
114:
  %115 = call i8 addrspace(1)* @_bal_panic_construct(i64 3842), !dbg !13
  store i8 addrspace(1)* %115, i8 addrspace(1)** %22
  br label %99
116:
  %117 = icmp eq i64 %109, -9223372036854775808
  %118 = icmp eq i64 %110, -1
  %119 = and i1 %117, %118
  br i1 %119, label %122, label %120
120:
  %121 = srem i64 %109, %110
  store i64 %121, i64* %6
  br label %123
122:
  store i64 0, i64* %6
  br label %123
123:
  %124 = load i64, i64* %6
  store i64 %124, i64* %x
  br label %63
125:
  %126 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %87, i64 0, i32 3
  %127 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %126, align 8
  %128 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %127, i64 0, i64 %84
  %129 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %128, align 8
  %130 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %129)
  store i64 %130, i64* %14
  %131 = load i64, i64* %i.1
  %132 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %131, i64 1)
  %133 = extractvalue {i64, i1} %132, 1
  br i1 %133, label %145, label %136
134:
  %135 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125), !dbg !13
  store i8 addrspace(1)* %135, i8 addrspace(1)** %22
  br label %99
136:
  %137 = extractvalue {i64, i1} %132, 0
  store i64 %137, i64* %15
  %138 = load i64, i64* %15
  %139 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %140 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %139, i64 72057594037927928)
  %141 = bitcast i8 addrspace(1)* %140 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %142 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %141, i64 0, i32 1
  %143 = load i64, i64 addrspace(1)* %142, align 8
  %144 = icmp ult i64 %138, %143
  br i1 %144, label %147, label %157
145:
  %146 = call i8 addrspace(1)* @_bal_panic_construct(i64 5121), !dbg !13
  store i8 addrspace(1)* %146, i8 addrspace(1)** %22
  br label %99
147:
  %148 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %141, i64 0, i32 3
  %149 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %148, align 8
  %150 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %149, i64 0, i64 %138
  %151 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %150, align 8
  %152 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %151)
  store i64 %152, i64* %16
  %153 = load i64, i64* %14
  %154 = load i64, i64* %16
  %155 = icmp sgt i64 %153, %154
  store i1 %155, i1* %13
  %156 = load i1, i1* %13
  br i1 %156, label %91, label %95
157:
  %158 = call i8 addrspace(1)* @_bal_panic_construct(i64 5125), !dbg !13
  store i8 addrspace(1)* %158, i8 addrspace(1)** %22
  br label %99
}
define internal i64 @_B_checksum(i8 addrspace(1)* %0) !dbg !7 {
  %v = alloca i8 addrspace(1)*
  %c = alloca i64
  %2 = alloca i64
  %i = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %34, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  store i64 0, i64* %c
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !24
  %12 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %11, i64 -5), !dbg !24
  %13 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %12), !dbg !24
  store i64 %13, i64* %2, !dbg !24
  store i64 0, i64* %i
  br label %14
14:
  %15 = load i64, i64* %i
  %16 = load i64, i64* %2
  %17 = icmp slt i64 %15, %16
  store i1 %17, i1* %3
  %18 = load i1, i1* %3
  br i1 %18, label %21, label %19
19:
  %20 = load i64, i64* %c
  ret i64 %20
21:
  %22 = load i64, i64* %i
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %24 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %23, i64 72057594037927928)
  %25 = bitcast i8 addrspace(1)* %24 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %26 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %25, i64 0, i32 1
  %27 = load i64, i64 addrspace(1)* %26, align 8
  %28 = icmp ult i64 %22, %27
  br i1 %28, label %36, label %46
29:
  %30 = load i64, i64* %i
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %i
  br label %14
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 6916), !dbg !23
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %25, i64 0, i32 3
  %38 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %37, align 8
  %39 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %38, i64 0, i64 %22
  %40 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %39, align 8
  %41 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %40)
  store i64 %41, i64* %4
  %42 = load i64, i64* %c
  %43 = load i64, i64* %4
  %44 = xor i64 %42, %43
  store i64 %44, i64* %5
  %45 = load i64, i64* %5
  store i64 %45, i64* %c
  br label %29
46:
  %47 = call i8 addrspace(1)* @_bal_panic_construct(i64 7685), !dbg !23
  store i8 addrspace(1)* %47, i8 addrspace(1)** %6
  br label %32
}
define internal i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %0) !dbg !9 {
  %v = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i64
  %mid = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %list1 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %i = alloca i64
  %7 = alloca i1
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %list2 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %i.1 = alloca i64
  %12 = alloca i1
  %13 = alloca i64
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8
  %20 = load i8*, i8** @_bal_stack_guard
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %89, label %22
22:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !26
  %24 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %23, i64 -5), !dbg !26
  %25 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %24), !dbg !26
  store i64 %25, i64* %3, !dbg !26
  %26 = load i64, i64* %3
  %27 = icmp sle i64 %26, 1
  store i1 %27, i1* %2
  %28 = load i1, i1* %2
  br i1 %28, label %29, label %31
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  ret i8 addrspace(1)* %30
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !27
  %33 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %32, i64 -5), !dbg !27
  %34 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %33), !dbg !27
  store i64 %34, i64* %4, !dbg !27
  %35 = load i64, i64* %4
  %36 = icmp eq i64 2, 0
  br i1 %36, label %91, label %93
37:
  %38 = load i64, i64* %i
  %39 = load i64, i64* %mid
  %40 = icmp slt i64 %38, %39
  store i1 %40, i1* %7
  %41 = load i1, i1* %7
  br i1 %41, label %51, label %42
42:
  %43 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %44 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %43 to i8 addrspace(1)*
  %45 = getelementptr i8, i8 addrspace(1)* %44, i64 1297036692682702852
  store i8 addrspace(1)* %45, i8 addrspace(1)** %10
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  store i8 addrspace(1)* %46, i8 addrspace(1)** %list2
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !28
  %48 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %47, i64 -5), !dbg !28
  %49 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %48), !dbg !28
  store i64 %49, i64* %11, !dbg !28
  %50 = load i64, i64* %mid
  store i64 %50, i64* %i.1
  br label %62
51:
  %52 = load i64, i64* %i
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %54 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %53, i64 72057594037927928)
  %55 = bitcast i8 addrspace(1)* %54 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %56 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %55, i64 0, i32 1
  %57 = load i64, i64 addrspace(1)* %56, align 8
  %58 = icmp ult i64 %52, %57
  br i1 %58, label %106, label %115
59:
  %60 = load i64, i64* %i
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %i
  br label %37
62:
  %63 = load i64, i64* %i.1
  %64 = load i64, i64* %11
  %65 = icmp slt i64 %63, %64
  store i1 %65, i1* %12
  %66 = load i1, i1* %12
  br i1 %66, label %76, label %67
67:
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %list1, !dbg !30
  %69 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %68), !dbg !30
  store i8 addrspace(1)* %69, i8 addrspace(1)** %15, !dbg !30
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %list2, !dbg !31
  %71 = call i8 addrspace(1)* @_B_sort(i8 addrspace(1)* %70), !dbg !31
  store i8 addrspace(1)* %71, i8 addrspace(1)** %16, !dbg !31
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !32
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %16, !dbg !32
  %74 = call i8 addrspace(1)* @_B_merge(i8 addrspace(1)* %72, i8 addrspace(1)* %73), !dbg !32
  store i8 addrspace(1)* %74, i8 addrspace(1)** %17, !dbg !32
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  ret i8 addrspace(1)* %75
76:
  %77 = load i64, i64* %i.1
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %79 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %78, i64 72057594037927928)
  %80 = bitcast i8 addrspace(1)* %79 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %81 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %80, i64 0, i32 1
  %82 = load i64, i64 addrspace(1)* %81, align 8
  %83 = icmp ult i64 %77, %82
  br i1 %83, label %117, label %126
84:
  %85 = load i64, i64* %i.1
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %i.1
  br label %62
87:
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %18
  call void @_bal_panic(i8 addrspace(1)* %88)
  unreachable
89:
  %90 = call i8 addrspace(1)* @_bal_panic_construct(i64 9220), !dbg !25
  call void @_bal_panic(i8 addrspace(1)* %90)
  unreachable
91:
  %92 = call i8 addrspace(1)* @_bal_panic_construct(i64 10242), !dbg !25
  store i8 addrspace(1)* %92, i8 addrspace(1)** %18
  br label %87
93:
  %94 = icmp eq i64 %35, -9223372036854775808
  %95 = icmp eq i64 2, -1
  %96 = and i1 %94, %95
  br i1 %96, label %104, label %97
97:
  %98 = sdiv i64 %35, 2
  store i64 %98, i64* %5
  %99 = load i64, i64* %5
  store i64 %99, i64* %mid
  %100 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %101 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %100 to i8 addrspace(1)*
  %102 = getelementptr i8, i8 addrspace(1)* %101, i64 1297036692682702852
  store i8 addrspace(1)* %102, i8 addrspace(1)** %6
  %103 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %103, i8 addrspace(1)** %list1
  store i64 0, i64* %i
  br label %37
104:
  %105 = call i8 addrspace(1)* @_bal_panic_construct(i64 10241), !dbg !25
  store i8 addrspace(1)* %105, i8 addrspace(1)** %18
  br label %87
106:
  %107 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %55, i64 0, i32 3
  %108 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %107, align 8
  %109 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %108, i64 0, i64 %52
  %110 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %109, align 8
  %111 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %110)
  store i64 %111, i64* %8
  %112 = load i8 addrspace(1)*, i8 addrspace(1)** %list1, !dbg !29
  %113 = load i64, i64* %8, !dbg !29
  %114 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %113), !dbg !29
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %112, i8 addrspace(1)* %114), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !29
  br label %59
115:
  %116 = call i8 addrspace(1)* @_bal_panic_construct(i64 11013), !dbg !25
  store i8 addrspace(1)* %116, i8 addrspace(1)** %18
  br label %87
117:
  %118 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %80, i64 0, i32 3
  %119 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %118, align 8
  %120 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %119, i64 0, i64 %77
  %121 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %120, align 8
  %122 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %121)
  store i64 %122, i64* %13
  %123 = load i8 addrspace(1)*, i8 addrspace(1)** %list2, !dbg !33
  %124 = load i64, i64* %13, !dbg !33
  %125 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %124), !dbg !33
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %123, i8 addrspace(1)* %125), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !33
  br label %84
126:
  %127 = call i8 addrspace(1)* @_bal_panic_construct(i64 12037), !dbg !25
  store i8 addrspace(1)* %127, i8 addrspace(1)** %18
  br label %87
}
define internal i8 addrspace(1)* @_B_merge(i8 addrspace(1)* %0, i8 addrspace(1)* %1) !dbg !11 {
  %v1 = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %result = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %i1 = alloca i64
  %i2 = alloca i64
  %len1 = alloca i64
  %4 = alloca i64
  %len2 = alloca i64
  %5 = alloca i64
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i64
  %17 = alloca i1
  %18 = alloca i64
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i64
  %21 = alloca i1
  %22 = alloca i64
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i64
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8
  %27 = load i8*, i8** @_bal_stack_guard
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %112, label %29
29:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %v1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %v2
  %30 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %31 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %30 to i8 addrspace(1)*
  %32 = getelementptr i8, i8 addrspace(1)* %31, i64 1297036692682702852
  store i8 addrspace(1)* %32, i8 addrspace(1)** %3
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %33, i8 addrspace(1)** %result
  store i64 0, i64* %i1
  store i64 0, i64* %i2
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %v1, !dbg !35
  %35 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %34, i64 -5), !dbg !35
  %36 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %35), !dbg !35
  store i64 %36, i64* %4, !dbg !35
  %37 = load i64, i64* %4
  store i64 %37, i64* %len1
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %v2, !dbg !36
  %39 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %38, i64 -5), !dbg !36
  %40 = call i64 @_Bb0m4lang5arraylength(i8 addrspace(1)* %39), !dbg !36
  store i64 %40, i64* %5, !dbg !36
  %41 = load i64, i64* %5
  store i64 %41, i64* %len2
  br label %42
42:
  br label %43
43:
  %44 = load i64, i64* %i1
  %45 = load i64, i64* %len1
  %46 = icmp slt i64 %44, %45
  store i1 %46, i1* %6
  %47 = load i1, i1* %6
  br i1 %47, label %49, label %80
48:
  br label %81
49:
  %50 = load i64, i64* %i2
  %51 = load i64, i64* %len2
  %52 = icmp slt i64 %50, %51
  store i1 %52, i1* %7
  %53 = load i1, i1* %7
  br i1 %53, label %54, label %79
54:
  %55 = load i64, i64* %i1
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %57 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %56, i64 72057594037927928)
  %58 = bitcast i8 addrspace(1)* %57 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %59 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %58, i64 0, i32 1
  %60 = load i64, i64 addrspace(1)* %59, align 8
  %61 = icmp ult i64 %55, %60
  br i1 %61, label %114, label %127
62:
  %63 = load i64, i64* %i1
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %65 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %64, i64 72057594037927928)
  %66 = bitcast i8 addrspace(1)* %65 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %67 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %66, i64 0, i32 1
  %68 = load i64, i64 addrspace(1)* %67, align 8
  %69 = icmp ult i64 %63, %68
  br i1 %69, label %141, label %153
70:
  %71 = load i64, i64* %i2
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %73 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %72, i64 72057594037927928)
  %74 = bitcast i8 addrspace(1)* %73 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %75 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %74, i64 0, i32 1
  %76 = load i64, i64 addrspace(1)* %75, align 8
  %77 = icmp ult i64 %71, %76
  br i1 %77, label %160, label %172
78:
  br label %42
79:
  br label %80
80:
  br label %48
81:
  %82 = load i64, i64* %i1
  %83 = load i64, i64* %len1
  %84 = icmp slt i64 %82, %83
  store i1 %84, i1* %17
  %85 = load i1, i1* %17
  br i1 %85, label %86, label %94
86:
  %87 = load i64, i64* %i1
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %v1
  %89 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %88, i64 72057594037927928)
  %90 = bitcast i8 addrspace(1)* %89 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %91 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %90, i64 0, i32 1
  %92 = load i64, i64 addrspace(1)* %91, align 8
  %93 = icmp ult i64 %87, %92
  br i1 %93, label %179, label %191
94:
  br label %95
95:
  %96 = load i64, i64* %i2
  %97 = load i64, i64* %len2
  %98 = icmp slt i64 %96, %97
  store i1 %98, i1* %21
  %99 = load i1, i1* %21
  br i1 %99, label %100, label %108
100:
  %101 = load i64, i64* %i2
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %103 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %102, i64 72057594037927928)
  %104 = bitcast i8 addrspace(1)* %103 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %105 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %104, i64 0, i32 1
  %106 = load i64, i64 addrspace(1)* %105, align 8
  %107 = icmp ult i64 %101, %106
  br i1 %107, label %198, label %210
108:
  %109 = load i8 addrspace(1)*, i8 addrspace(1)** %result
  ret i8 addrspace(1)* %109
110:
  %111 = load i8 addrspace(1)*, i8 addrspace(1)** %25
  call void @_bal_panic(i8 addrspace(1)* %111)
  unreachable
112:
  %113 = call i8 addrspace(1)* @_bal_panic_construct(i64 13316), !dbg !34
  call void @_bal_panic(i8 addrspace(1)* %113)
  unreachable
114:
  %115 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %58, i64 0, i32 3
  %116 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %115, align 8
  %117 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %116, i64 0, i64 %55
  %118 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %117, align 8
  %119 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %118)
  store i64 %119, i64* %9
  %120 = load i64, i64* %i2
  %121 = load i8 addrspace(1)*, i8 addrspace(1)** %v2
  %122 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %121, i64 72057594037927928)
  %123 = bitcast i8 addrspace(1)* %122 to {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %124 = getelementptr {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %123, i64 0, i32 1
  %125 = load i64, i64 addrspace(1)* %124, align 8
  %126 = icmp ult i64 %120, %125
  br i1 %126, label %129, label %139
127:
  %128 = call i8 addrspace(1)* @_bal_panic_construct(i64 15621), !dbg !34
  store i8 addrspace(1)* %128, i8 addrspace(1)** %25
  br label %110
129:
  %130 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %123, i64 0, i32 3
  %131 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %130, align 8
  %132 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %131, i64 0, i64 %120
  %133 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %132, align 8
  %134 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %133)
  store i64 %134, i64* %10
  %135 = load i64, i64* %9
  %136 = load i64, i64* %10
  %137 = icmp sle i64 %135, %136
  store i1 %137, i1* %8
  %138 = load i1, i1* %8
  br i1 %138, label %62, label %70
139:
  %140 = call i8 addrspace(1)* @_bal_panic_construct(i64 15621), !dbg !34
  store i8 addrspace(1)* %140, i8 addrspace(1)** %25
  br label %110
141:
  %142 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %66, i64 0, i32 3
  %143 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %142, align 8
  %144 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %143, i64 0, i64 %63
  %145 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %144, align 8
  %146 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %145)
  store i64 %146, i64* %11
  %147 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !37
  %148 = load i64, i64* %11, !dbg !37
  %149 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %148), !dbg !37
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %147, i8 addrspace(1)* %149), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !37
  %150 = load i64, i64* %i1
  %151 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %150, i64 1)
  %152 = extractvalue {i64, i1} %151, 1
  br i1 %152, label %158, label %155
153:
  %154 = call i8 addrspace(1)* @_bal_panic_construct(i64 15877), !dbg !34
  store i8 addrspace(1)* %154, i8 addrspace(1)** %25
  br label %110
155:
  %156 = extractvalue {i64, i1} %151, 0
  store i64 %156, i64* %13
  %157 = load i64, i64* %13
  store i64 %157, i64* %i1
  br label %78
158:
  %159 = call i8 addrspace(1)* @_bal_panic_construct(i64 16129), !dbg !34
  store i8 addrspace(1)* %159, i8 addrspace(1)** %25
  br label %110
160:
  %161 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %74, i64 0, i32 3
  %162 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %161, align 8
  %163 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %162, i64 0, i64 %71
  %164 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %163, align 8
  %165 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %164)
  store i64 %165, i64* %14
  %166 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !38
  %167 = load i64, i64* %14, !dbg !38
  %168 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %167), !dbg !38
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %166, i8 addrspace(1)* %168), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !38
  %169 = load i64, i64* %i2
  %170 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %169, i64 1)
  %171 = extractvalue {i64, i1} %170, 1
  br i1 %171, label %177, label %174
172:
  %173 = call i8 addrspace(1)* @_bal_panic_construct(i64 16901), !dbg !34
  store i8 addrspace(1)* %173, i8 addrspace(1)** %25
  br label %110
174:
  %175 = extractvalue {i64, i1} %170, 0
  store i64 %175, i64* %16
  %176 = load i64, i64* %16
  store i64 %176, i64* %i2
  br label %78
177:
  %178 = call i8 addrspace(1)* @_bal_panic_construct(i64 17153), !dbg !34
  store i8 addrspace(1)* %178, i8 addrspace(1)** %25
  br label %110
179:
  %180 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %90, i64 0, i32 3
  %181 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %180, align 8
  %182 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %181, i64 0, i64 %87
  %183 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %182, align 8
  %184 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %183)
  store i64 %184, i64* %18
  %185 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !39
  %186 = load i64, i64* %18, !dbg !39
  %187 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %186), !dbg !39
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %185, i8 addrspace(1)* %187), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !39
  %188 = load i64, i64* %i1
  %189 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %188, i64 1)
  %190 = extractvalue {i64, i1} %189, 1
  br i1 %190, label %196, label %193
191:
  %192 = call i8 addrspace(1)* @_bal_panic_construct(i64 19205), !dbg !34
  store i8 addrspace(1)* %192, i8 addrspace(1)** %25
  br label %110
193:
  %194 = extractvalue {i64, i1} %189, 0
  store i64 %194, i64* %20
  %195 = load i64, i64* %20
  store i64 %195, i64* %i1
  br label %81
196:
  %197 = call i8 addrspace(1)* @_bal_panic_construct(i64 19457), !dbg !34
  store i8 addrspace(1)* %197, i8 addrspace(1)** %25
  br label %110
198:
  %199 = getelementptr inbounds {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %104, i64 0, i32 3
  %200 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %199, align 8
  %201 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %200, i64 0, i64 %101
  %202 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %201, align 8
  %203 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %202)
  store i64 %203, i64* %22
  %204 = load i8 addrspace(1)*, i8 addrspace(1)** %result, !dbg !40
  %205 = load i64, i64* %22, !dbg !40
  %206 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %205), !dbg !40
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %204, i8 addrspace(1)* %206), !dbg !40
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !40
  %207 = load i64, i64* %i2
  %208 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %207, i64 1)
  %209 = extractvalue {i64, i1} %208, 1
  br i1 %209, label %215, label %212
210:
  %211 = call i8 addrspace(1)* @_bal_panic_construct(i64 20229), !dbg !34
  store i8 addrspace(1)* %211, i8 addrspace(1)** %25
  br label %110
212:
  %213 = extractvalue {i64, i1} %208, 0
  store i64 %213, i64* %24
  %214 = load i64, i64* %24
  store i64 %214, i64* %i2
  br label %95
215:
  %216 = call i8 addrspace(1)* @_bal_panic_construct(i64 20481), !dbg !34
  store i8 addrspace(1)* %216, i8 addrspace(1)** %25
  br label %110
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-bench/intmergesort-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"checksum", linkageName:"_B_checksum", scope: !1, file: !1, line: 27, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"sort", linkageName:"_B_sort", scope: !1, file: !1, line: 36, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"merge", linkageName:"_B_merge", scope: !1, file: !1, line: 52, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 12, column: 4, scope: !5)
!15 = !DILocation(line: 17, column: 14, scope: !5)
!16 = !DILocation(line: 18, column: 16, scope: !5)
!17 = !DILocation(line: 18, column: 4, scope: !5)
!18 = !DILocation(line: 14, column: 8, scope: !5)
!19 = !DILocation(line: 24, column: 15, scope: !5)
!20 = !DILocation(line: 24, column: 30, scope: !5)
!21 = !DILocation(line: 24, column: 4, scope: !5)
!22 = !DILocation(line: 21, column: 12, scope: !5)
!23 = !DILocation(line: 0, column: 0, scope: !7)
!24 = !DILocation(line: 29, column: 28, scope: !7)
!25 = !DILocation(line: 0, column: 0, scope: !9)
!26 = !DILocation(line: 37, column: 8, scope: !9)
!27 = !DILocation(line: 40, column: 15, scope: !9)
!28 = !DILocation(line: 46, column: 30, scope: !9)
!29 = !DILocation(line: 43, column: 8, scope: !9)
!30 = !DILocation(line: 49, column: 17, scope: !9)
!31 = !DILocation(line: 49, column: 30, scope: !9)
!32 = !DILocation(line: 49, column: 11, scope: !9)
!33 = !DILocation(line: 47, column: 8, scope: !9)
!34 = !DILocation(line: 0, column: 0, scope: !11)
!35 = !DILocation(line: 56, column: 17, scope: !11)
!36 = !DILocation(line: 57, column: 17, scope: !11)
!37 = !DILocation(line: 62, column: 20, scope: !11)
!38 = !DILocation(line: 66, column: 20, scope: !11)
!39 = !DILocation(line: 75, column: 8, scope: !11)
!40 = !DILocation(line: 79, column: 8, scope: !11)
