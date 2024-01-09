// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VFEMTORV32_BENCH_H_
#define _VFEMTORV32_BENCH_H_  // guard

#include "FPU_funcs.h"
#include "verilated_heavy.h"

//==========

class VfemtoRV32_bench__Syms;

//----------

VL_MODULE(VfemtoRV32_bench) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(pclk,0,0);
    VL_OUT8(oled_DIN,0,0);
    VL_OUT8(oled_CLK,0,0);
    VL_OUT8(oled_CS,0,0);
    VL_OUT8(oled_DC,0,0);
    VL_OUT8(oled_RST,0,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    CData/*0:0*/ femtoRV32_bench__DOT__uut__DOT__reset;
    CData/*3:0*/ femtoRV32_bench__DOT__uut__DOT__mem_wmask;
    CData/*0:0*/ femtoRV32_bench__DOT__uut__DOT__io_wstrb;
    CData/*0:0*/ femtoRV32_bench__DOT__uut__DOT__uart_brk;
    CData/*3:0*/ femtoRV32_bench__DOT__uut__DOT__leds__DOT__led_state;
    CData/*4:0*/ femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__bitcount;
    CData/*0:0*/ femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__sending;
    CData/*0:0*/ femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__genblk1__DOT__slow_clk__DOT__slow_cnt;
    CData/*0:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__isALU;
    CData/*0:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluWr;
    CData/*0:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__LT;
    CData/*0:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__isDivide;
    CData/*0:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__divstep_do;
    CData/*0:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__LOAD_sign;
    CData/*7:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__LOAD_byte;
    CData/*3:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__state;
    CData/*0:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__jumpToPCplusImm;
    CData/*0:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__needToWait;
    SData/*15:0*/ femtoRV32_bench__DOT__uut__DOT__reset_cnt;
    SData/*15:0*/ femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__shifter;
    SData/*15:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__LOAD_halfword;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__mem_address;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__mem_rdata;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__mem_wdata;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__io_rdata;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__ram_rdata;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__Iimm;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs2;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluIn2;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluPlus;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter_in;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__leftshift;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluOut_base;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__dividend;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient_msk;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__dividendN;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotientN;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__divResult;
    IData/*23:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__PC;
    IData/*29:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr;
    IData/*23:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__PCplusImm;
    IData/*23:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__loadstore_addr;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__writeBackData;
    IData/*23:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__PC_new;
    QData/*32:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluMinus;
    QData/*63:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__multiply;
    QData/*62:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__divisor;
    QData/*63:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__cycles;
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__RAM[16384];
    IData/*31:0*/ femtoRV32_bench__DOT__uut__DOT__processor__DOT__registerFile[32];
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*0:0*/ __Vclklast__TOP__pclk;
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    VfemtoRV32_bench__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VfemtoRV32_bench);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    VfemtoRV32_bench(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~VfemtoRV32_bench();
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval() { eval_step(); }
    /// Evaluate when calling multiple units/models per time step.
    void eval_step();
    /// Evaluate at end of a timestep for tracing, when using eval_step().
    /// Application must call after all eval() and before time changes.
    void eval_end_step() {}
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(VfemtoRV32_bench__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(VfemtoRV32_bench__Syms* symsp, bool first);
  private:
    static QData _change_request(VfemtoRV32_bench__Syms* __restrict vlSymsp);
    static QData _change_request_1(VfemtoRV32_bench__Syms* __restrict vlSymsp);
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(VfemtoRV32_bench__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(VfemtoRV32_bench__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(VfemtoRV32_bench__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _initial__TOP__2(VfemtoRV32_bench__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__1(VfemtoRV32_bench__Syms* __restrict vlSymsp);
    static void _settle__TOP__3(VfemtoRV32_bench__Syms* __restrict vlSymsp) VL_ATTR_COLD;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
