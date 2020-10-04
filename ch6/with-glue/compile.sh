#!/bin/bash

DIR=$(dirname $(realpath $0))
emcc ${DIR}/js-with-glue.c -O3 -s WASM=1 -s MODULARIZE=1 -o ${DIR}/js-with-glue.js