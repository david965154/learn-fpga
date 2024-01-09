// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef _VFEMTORV32_BENCH__SYMS_H_
#define _VFEMTORV32_BENCH__SYMS_H_  // guard

#include "FPU_funcs.h"
#include "verilated_heavy.h"

// INCLUDE MODULE CLASSES
#include "VfemtoRV32_bench.h"

// SYMS CLASS
class VfemtoRV32_bench__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_didInit;
    
    // SUBCELL STATE
    VfemtoRV32_bench*              TOPp;
    
    // CREATORS
    VfemtoRV32_bench__Syms(VfemtoRV32_bench* topp, const char* namep);
    ~VfemtoRV32_bench__Syms() {}
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
