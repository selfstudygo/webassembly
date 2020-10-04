const defaultEnv = {
  __memory_base: 0,
  __table_base: 0,
  memory: new WebAssembly.Memory({ initial: 256 }),
  table: new WebAssembly.Table({ initial: 2, element: 'anyfunc' }),
  abort: (...args) => console.log(...arg),
};

function loadWasm(url, obj = {env: {}}){
    const allEnv = { ...defaultEnv, ...(obj.env || {}) };
    const allImports = {...obj, env: allEnv };
    return fetch(url).then((res)=>{
        if(res.ok) return res.arrayBuffer();
        throw new Error('error')
    }).then((buff)=>  WebAssembly.instantiate(buff, allImports))
}