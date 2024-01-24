@_extern(wasm, module: "console", name: "log")
@_extern(c)
func consoleLog(address: Int, byteCount: Int)

func print(_ string: StaticString) {
  consoleLog(
    address: Int(bitPattern: string.utf8Start), 
    byteCount: string.utf8CodeUnitCount
  )
}

@_expose(wasm, "hello")
func hello() {
  print("Hello, World!")
}