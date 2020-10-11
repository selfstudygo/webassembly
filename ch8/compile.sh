#! /bin/bash
# emrun --browser chrome --no_emrun_detect ch8/public/index.html 
DIR=$(dirname $(realpath $0))
emcc -std=c++14 -O3 -s WASM=1 -s USE_SDL=2 -s MODULARIZE=1 --bind ${DIR}/src/board.cpp ${DIR}/src/piece.cpp ${DIR}/src/main.cpp -o ${DIR}/public/index.js