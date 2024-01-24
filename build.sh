#!/bin/bash
swiftc -Osize -Xcc -fdeclspec -target wasm32-unknown-none-wasm -enable-experimental-feature Extern -enable-experimental-feature Embedded -wmo hello.swift -c -o hello.o

wasm-ld --no-entry hello.o -o hello.wasm

wasm2wat hello.wasm -o hello.wat

wasm-opt -Os hello.wasm -o hello.wasm

wasm2wat hello.wasm -o hello_Os.wat