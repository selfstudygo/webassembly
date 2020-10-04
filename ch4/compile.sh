#!/bin/bash

DIR=$(dirname $(realpath $0))
emcc ${DIR}/main.c -Os -s WASM=1 -s SIDE_MODULE=1 -s BINARYEN_ASYNC_COMPILATION=0 -o ${DIR}/main.wasm