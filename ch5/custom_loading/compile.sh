#!/bin/bash

DIR=$(dirname $(realpath $0))
emcc ${DIR}/with-glue.c -O3 -s WASM=1 -s USE_SDL=2 -s MODULARIZE=1 -o ${DIR}/custom-loading.js