(module
  (type (;0;) (func (param i32 i32)))
  (import "console" "log" (func (;0;) (type 0)))
  (func (;1;) (type 0) (param i32 i32)
    i32.const 1024
    i32.const 13
    call 0)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "hello" (func 1))
  (data (;0;) (i32.const 1024) "Hello, World!"))
