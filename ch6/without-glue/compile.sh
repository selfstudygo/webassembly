#!/bin/bash

DIR=$(dirname $(realpath $0))

#default
emcc ${DIR}/js-without-glue.cpp -Os -s WASM=1 -s SIDE_MODULE=1 -s BINARYEN_ASYNC_COMPILATION=0 -o ${DIR}/js-without-glue.wasm

#sourcemap
emcc ${DIR}/js-without-glue.cpp -O1 -g4 -s WASM=1 -s SIDE_MODULE=1 -s BINARYEN_ASYNC_COMPILATION=0 -o ${DIR}/js-without-glue-sourcemap.wasm --source-map-base http://localhost:8080/ch6/without-glue