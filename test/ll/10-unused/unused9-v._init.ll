@_Bi04root0 = constant {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32} {i32 0, i8 addrspace(1)*(i8 addrspace(1)*, i64)* @_bal_list_get, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)* @_bal_list_set, i32 128}
@_Bi04root1 = constant {i32, i32} {i32 0, i32 128}
declare i8 addrspace(1)* @_bal_list_get(i8 addrspace(1)*, i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
