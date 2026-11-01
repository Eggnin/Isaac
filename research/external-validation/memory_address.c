// Test-only N-API bridge: expose the backing address, never copy game values.
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <stdint.h>
typedef void* value;
typedef void* env;
typedef int status;
typedef value (*callback)(env,void*);
static status (*get_args)(env,void*,size_t*,value*,value*,void**);
static status (*get_buffer)(env,value,void**,size_t*);
static status (*make_string)(env,const char*,size_t,value*);
static status (*make_function)(env,const char*,size_t,callback,void*,value*);
static status (*set_property)(env,value,const char*,value);
static status (*throw_error)(env,const char*,const char*);
static value address(env e,void* info) {
    size_t count=1, length=0; value arg=0,out=0; void* data=0;
    if(get_args(e,info,&count,&arg,0,0)||count!=1||get_buffer(e,arg,&data,&length)) {
        throw_error(e,0,"Expected the live Wasm ArrayBuffer"); return 0;
    }
    // Hex avoids JS Number precision loss on 64-bit addresses.
    char text[32]; wsprintfA(text,"%I64x",(unsigned long long)(uintptr_t)data);
    make_string(e,text,(size_t)-1,&out); return out;
}
__declspec(dllexport) value napi_register_module_v1(env e,value exports) {
    HMODULE host=GetModuleHandleW(0);
#define LOAD(local,name) local=(void*)GetProcAddress(host,name); if(!local)return 0
    LOAD(get_args,"napi_get_cb_info"); LOAD(get_buffer,"napi_get_arraybuffer_info");
    LOAD(make_string,"napi_create_string_utf8"); LOAD(make_function,"napi_create_function");
    LOAD(set_property,"napi_set_named_property"); LOAD(throw_error,"napi_throw_error");
    value fn; make_function(e,"address",(size_t)-1,address,0,&fn);
    set_property(e,exports,"address",fn); return exports;
}
