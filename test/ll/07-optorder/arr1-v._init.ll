@_Bi04root0 = constant {i32, i32} {i32 0, i32 128}
@_Bi04root1 = constant {i32, i32} {i32 1, i32 129}
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
