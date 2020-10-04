#!/bin/bash

DIR=$(dirname $(realpath $0))
emcc ${DIR}/without-glue.c -Os -s WASM=1 -s USE_SDL=2 -s SIDE_MODULE=1 -s BINARYEN_ASYNC_COMPILATION=0 -o ${DIR}/without-glue.wasm
