int addTwoNumbers(int leftValue, int rightValue){
    return leftValue + rightValue;
}
// emcc main.c -Os -s WASM=1 -s SIDE_MODULE=1 -s BINARYEN_ASYNC_COMPILATION=0 -o main.wasm 