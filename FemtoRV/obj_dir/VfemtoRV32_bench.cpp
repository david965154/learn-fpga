// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VfemtoRV32_bench.h for the primary calling header

#include "VfemtoRV32_bench.h"
#include "VfemtoRV32_bench__Syms.h"

//==========

void VfemtoRV32_bench::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VfemtoRV32_bench::eval\n"); );
    VfemtoRV32_bench__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    VfemtoRV32_bench* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
#ifdef VL_DEBUG
    // Debug assertions
    _eval_debug_assertions();
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        _eval(vlSymsp);
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = _change_request(vlSymsp);
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("RTL/femtosoc_bench.v", 30, "",
                "Verilated model didn't converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void VfemtoRV32_bench::_eval_initial_loop(VfemtoRV32_bench__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    _eval_initial(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        _eval_settle(vlSymsp);
        _eval(vlSymsp);
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = _change_request(vlSymsp);
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("RTL/femtosoc_bench.v", 30, "",
                "Verilated model didn't DC converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

VL_INLINE_OPT void VfemtoRV32_bench::_sequent__TOP__1(VfemtoRV32_bench__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VfemtoRV32_bench::_sequent__TOP__1\n"); );
    VfemtoRV32_bench* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    CData/*4:0*/ __Vdlyvlsb__femtoRV32_bench__DOT__uut__DOT__RAM__v0;
    CData/*7:0*/ __Vdlyvval__femtoRV32_bench__DOT__uut__DOT__RAM__v0;
    CData/*0:0*/ __Vdlyvset__femtoRV32_bench__DOT__uut__DOT__RAM__v0;
    CData/*4:0*/ __Vdlyvlsb__femtoRV32_bench__DOT__uut__DOT__RAM__v1;
    CData/*7:0*/ __Vdlyvval__femtoRV32_bench__DOT__uut__DOT__RAM__v1;
    CData/*0:0*/ __Vdlyvset__femtoRV32_bench__DOT__uut__DOT__RAM__v1;
    CData/*4:0*/ __Vdlyvlsb__femtoRV32_bench__DOT__uut__DOT__RAM__v2;
    CData/*7:0*/ __Vdlyvval__femtoRV32_bench__DOT__uut__DOT__RAM__v2;
    CData/*0:0*/ __Vdlyvset__femtoRV32_bench__DOT__uut__DOT__RAM__v2;
    CData/*4:0*/ __Vdlyvlsb__femtoRV32_bench__DOT__uut__DOT__RAM__v3;
    CData/*7:0*/ __Vdlyvval__femtoRV32_bench__DOT__uut__DOT__RAM__v3;
    CData/*0:0*/ __Vdlyvset__femtoRV32_bench__DOT__uut__DOT__RAM__v3;
    CData/*0:0*/ __Vdly__oled_CS;
    CData/*4:0*/ __Vdly__femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__bitcount;
    CData/*0:0*/ __Vdly__femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__genblk1__DOT__slow_clk__DOT__slow_cnt;
    CData/*4:0*/ __Vdlyvdim0__femtoRV32_bench__DOT__uut__DOT__processor__DOT__registerFile__v0;
    CData/*0:0*/ __Vdlyvset__femtoRV32_bench__DOT__uut__DOT__processor__DOT__registerFile__v0;
    CData/*3:0*/ __Vdly__femtoRV32_bench__DOT__uut__DOT__processor__DOT__state;
    SData/*15:0*/ __Vdly__femtoRV32_bench__DOT__uut__DOT__reset_cnt;
    SData/*13:0*/ __Vdlyvdim0__femtoRV32_bench__DOT__uut__DOT__RAM__v0;
    SData/*13:0*/ __Vdlyvdim0__femtoRV32_bench__DOT__uut__DOT__RAM__v1;
    SData/*13:0*/ __Vdlyvdim0__femtoRV32_bench__DOT__uut__DOT__RAM__v2;
    SData/*13:0*/ __Vdlyvdim0__femtoRV32_bench__DOT__uut__DOT__RAM__v3;
    SData/*15:0*/ __Vdly__femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__shifter;
    IData/*31:0*/ __Vdlyvval__femtoRV32_bench__DOT__uut__DOT__processor__DOT__registerFile__v0;
    IData/*31:0*/ __Vdly__femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient_msk;
    // Body
    __Vdly__femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__genblk1__DOT__slow_clk__DOT__slow_cnt 
        = vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__genblk1__DOT__slow_clk__DOT__slow_cnt;
    __Vdly__femtoRV32_bench__DOT__uut__DOT__reset_cnt 
        = vlTOPp->femtoRV32_bench__DOT__uut__DOT__reset_cnt;
    __Vdly__femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient_msk 
        = vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient_msk;
    __Vdly__oled_CS = vlTOPp->oled_CS;
    __Vdly__femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__bitcount 
        = vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__bitcount;
    __Vdly__femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__shifter 
        = vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__shifter;
    __Vdlyvset__femtoRV32_bench__DOT__uut__DOT__RAM__v0 = 0U;
    __Vdlyvset__femtoRV32_bench__DOT__uut__DOT__RAM__v1 = 0U;
    __Vdlyvset__femtoRV32_bench__DOT__uut__DOT__RAM__v2 = 0U;
    __Vdlyvset__femtoRV32_bench__DOT__uut__DOT__RAM__v3 = 0U;
    __Vdly__femtoRV32_bench__DOT__uut__DOT__processor__DOT__state 
        = vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__state;
    __Vdlyvset__femtoRV32_bench__DOT__uut__DOT__processor__DOT__registerFile__v0 = 0U;
    if (VL_UNLIKELY(((vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address 
                      >> 3U) & (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__io_wstrb)))) {
        if (VL_UNLIKELY((4U == vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata))) {
            VL_WRITEF("<end of simulation> (EOT sent to UART)\n");
            VL_FINISH_MT("RTL/DEVICES/uart.v", 32, "");
        }
        VL_WRITEF("%c",8,(0xffU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata));
        if (0x80000001U) { VL_FFLUSH_I(0x80000001U); }
    }
    __Vdly__femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__genblk1__DOT__slow_clk__DOT__slow_cnt 
        = (1U & ((IData)(1U) + (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__genblk1__DOT__slow_clk__DOT__slow_cnt)));
    __Vdly__femtoRV32_bench__DOT__uut__DOT__reset_cnt 
        = (0xffffU & ((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__reset_cnt) 
                      + (1U & (~ (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__reset)))));
    if (((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__isDivide) 
         & (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluWr))) {
        vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient = 0U;
        __Vdly__femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient_msk = 0x80000000U;
    } else {
        vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient 
            = vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotientN;
        __Vdly__femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient_msk 
            = (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient_msk 
               >> 1U);
    }
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__cycles 
        = (1ULL + vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__cycles);
    if (vlTOPp->femtoRV32_bench__DOT__uut__DOT__io_wstrb) {
        if ((0x40U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address)) {
            vlTOPp->oled_DC = 0U;
        }
        if ((0x80U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address)) {
            vlTOPp->oled_DC = 1U;
        }
        if ((0x100U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address)) {
            vlTOPp->oled_DC = 1U;
        }
    }
    if (vlTOPp->femtoRV32_bench__DOT__uut__DOT__io_wstrb) {
        if ((0x20U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address)) {
            vlTOPp->oled_RST = (1U & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata 
                                      >> 1U));
        }
        if ((0x40U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address)) {
            vlTOPp->oled_RST = 1U;
        }
        if ((0x80U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address)) {
            vlTOPp->oled_RST = 1U;
        }
        if ((0x100U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address)) {
            vlTOPp->oled_RST = 1U;
        }
    }
    if (vlTOPp->femtoRV32_bench__DOT__uut__DOT__io_wstrb) {
        if ((0x20U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address)) {
            __Vdly__oled_CS = (1U & (~ vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata));
        }
        if ((0x40U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address)) {
            __Vdly__femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__shifter 
                = (0xff00U & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata 
                              << 8U));
            __Vdly__femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__bitcount = 8U;
            __Vdly__oled_CS = 1U;
        }
        if ((0x80U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address)) {
            __Vdly__femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__shifter 
                = (0xff00U & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata 
                              << 8U));
            __Vdly__femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__bitcount = 8U;
            __Vdly__oled_CS = 1U;
        }
        if ((0x100U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address)) {
            __Vdly__femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__shifter 
                = (0xffffU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata);
            __Vdly__femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__bitcount = 0x10U;
            __Vdly__oled_CS = 1U;
        }
    } else {
        if (vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__genblk1__DOT__slow_clk__DOT__slow_cnt) {
            if (vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__sending) {
                if (vlTOPp->oled_CS) {
                    __Vdly__oled_CS = 0U;
                } else {
                    __Vdly__femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__bitcount 
                        = (0x1fU & ((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__bitcount) 
                                    - (IData)(1U)));
                    __Vdly__femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__shifter 
                        = (0xfffeU & ((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__shifter) 
                                      << 1U));
                }
            } else {
                __Vdly__oled_CS = 1U;
            }
        }
    }
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__ram_rdata 
        = vlTOPp->femtoRV32_bench__DOT__uut__DOT__RAM
        [(0x3fffU & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address 
                     >> 2U))];
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__io_rdata 
        = (((0x80000U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address)
             ? 0x10000U : ((0x100000U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address)
                            ? 0x3fU : ((0x200000U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address)
                                        ? 0x10020U : 0U))) 
           | ((4U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address)
               ? (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__leds__DOT__led_state)
               : 0U));
    if ((1U & (~ (vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address 
                  >> 0x16U)))) {
        if ((1U & (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wmask))) {
            __Vdlyvval__femtoRV32_bench__DOT__uut__DOT__RAM__v0 
                = (0xffU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata);
            __Vdlyvset__femtoRV32_bench__DOT__uut__DOT__RAM__v0 = 1U;
            __Vdlyvlsb__femtoRV32_bench__DOT__uut__DOT__RAM__v0 = 0U;
            __Vdlyvdim0__femtoRV32_bench__DOT__uut__DOT__RAM__v0 
                = (0x3fffU & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address 
                              >> 2U));
        }
        if ((2U & (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wmask))) {
            __Vdlyvval__femtoRV32_bench__DOT__uut__DOT__RAM__v1 
                = (0xffU & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata 
                            >> 8U));
            __Vdlyvset__femtoRV32_bench__DOT__uut__DOT__RAM__v1 = 1U;
            __Vdlyvlsb__femtoRV32_bench__DOT__uut__DOT__RAM__v1 = 8U;
            __Vdlyvdim0__femtoRV32_bench__DOT__uut__DOT__RAM__v1 
                = (0x3fffU & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address 
                              >> 2U));
        }
        if ((4U & (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wmask))) {
            __Vdlyvval__femtoRV32_bench__DOT__uut__DOT__RAM__v2 
                = (0xffU & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata 
                            >> 0x10U));
            __Vdlyvset__femtoRV32_bench__DOT__uut__DOT__RAM__v2 = 1U;
            __Vdlyvlsb__femtoRV32_bench__DOT__uut__DOT__RAM__v2 = 0x10U;
            __Vdlyvdim0__femtoRV32_bench__DOT__uut__DOT__RAM__v2 
                = (0x3fffU & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address 
                              >> 2U));
        }
        if ((8U & (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wmask))) {
            __Vdlyvval__femtoRV32_bench__DOT__uut__DOT__RAM__v3 
                = (0xffU & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata 
                            >> 0x18U));
            __Vdlyvset__femtoRV32_bench__DOT__uut__DOT__RAM__v3 = 1U;
            __Vdlyvlsb__femtoRV32_bench__DOT__uut__DOT__RAM__v3 = 0x18U;
            __Vdlyvdim0__femtoRV32_bench__DOT__uut__DOT__RAM__v3 
                = (0x3fffU & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address 
                              >> 2U));
        }
    }
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__divResult 
        = ((0x800U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr)
            ? vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__dividendN
            : vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotientN);
    if ((1U & ((~ ((0x18U == (0x1fU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr)) 
                   | (8U == (0x1fU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr)))) 
               & (((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__state) 
                   >> 2U) | ((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__state) 
                             >> 3U))))) {
        if ((0U != (0x1fU & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                             >> 5U)))) {
            __Vdlyvval__femtoRV32_bench__DOT__uut__DOT__processor__DOT__registerFile__v0 
                = vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__writeBackData;
            __Vdlyvset__femtoRV32_bench__DOT__uut__DOT__processor__DOT__registerFile__v0 = 1U;
            __Vdlyvdim0__femtoRV32_bench__DOT__uut__DOT__processor__DOT__registerFile__v0 
                = (0x1fU & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                            >> 5U));
        }
    }
    if (((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__isDivide) 
         & (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluWr))) {
        vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__divisor 
            = (0x7fffffffffffffffULL & ((QData)((IData)(
                                                        ((1U 
                                                          & ((~ 
                                                              (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                               >> 0xaU)) 
                                                             & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluIn2 
                                                                >> 0x1fU)))
                                                          ? 
                                                         (- vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluIn2)
                                                          : vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluIn2))) 
                                        << 0x1fU));
        vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__dividend 
            = ((1U & ((~ (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                          >> 0xaU)) & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                       >> 0x1fU))) ? 
               (- vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1)
                : vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1);
    } else {
        vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__divisor 
            = (0x7fffffffffffffffULL & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__divisor 
                                        >> 1U));
        vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__dividend 
            = vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__dividendN;
    }
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__genblk1__DOT__slow_clk__DOT__slow_cnt 
        = __Vdly__femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__genblk1__DOT__slow_clk__DOT__slow_cnt;
    vlTOPp->oled_CS = __Vdly__oled_CS;
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__shifter 
        = __Vdly__femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__shifter;
    if (__Vdlyvset__femtoRV32_bench__DOT__uut__DOT__RAM__v0) {
        vlTOPp->femtoRV32_bench__DOT__uut__DOT__RAM[__Vdlyvdim0__femtoRV32_bench__DOT__uut__DOT__RAM__v0] 
            = (((~ ((IData)(0xffU) << (IData)(__Vdlyvlsb__femtoRV32_bench__DOT__uut__DOT__RAM__v0))) 
                & vlTOPp->femtoRV32_bench__DOT__uut__DOT__RAM
                [__Vdlyvdim0__femtoRV32_bench__DOT__uut__DOT__RAM__v0]) 
               | ((IData)(__Vdlyvval__femtoRV32_bench__DOT__uut__DOT__RAM__v0) 
                  << (IData)(__Vdlyvlsb__femtoRV32_bench__DOT__uut__DOT__RAM__v0)));
    }
    if (__Vdlyvset__femtoRV32_bench__DOT__uut__DOT__RAM__v1) {
        vlTOPp->femtoRV32_bench__DOT__uut__DOT__RAM[__Vdlyvdim0__femtoRV32_bench__DOT__uut__DOT__RAM__v1] 
            = (((~ ((IData)(0xffU) << (IData)(__Vdlyvlsb__femtoRV32_bench__DOT__uut__DOT__RAM__v1))) 
                & vlTOPp->femtoRV32_bench__DOT__uut__DOT__RAM
                [__Vdlyvdim0__femtoRV32_bench__DOT__uut__DOT__RAM__v1]) 
               | ((IData)(__Vdlyvval__femtoRV32_bench__DOT__uut__DOT__RAM__v1) 
                  << (IData)(__Vdlyvlsb__femtoRV32_bench__DOT__uut__DOT__RAM__v1)));
    }
    if (__Vdlyvset__femtoRV32_bench__DOT__uut__DOT__RAM__v2) {
        vlTOPp->femtoRV32_bench__DOT__uut__DOT__RAM[__Vdlyvdim0__femtoRV32_bench__DOT__uut__DOT__RAM__v2] 
            = (((~ ((IData)(0xffU) << (IData)(__Vdlyvlsb__femtoRV32_bench__DOT__uut__DOT__RAM__v2))) 
                & vlTOPp->femtoRV32_bench__DOT__uut__DOT__RAM
                [__Vdlyvdim0__femtoRV32_bench__DOT__uut__DOT__RAM__v2]) 
               | ((IData)(__Vdlyvval__femtoRV32_bench__DOT__uut__DOT__RAM__v2) 
                  << (IData)(__Vdlyvlsb__femtoRV32_bench__DOT__uut__DOT__RAM__v2)));
    }
    if (__Vdlyvset__femtoRV32_bench__DOT__uut__DOT__RAM__v3) {
        vlTOPp->femtoRV32_bench__DOT__uut__DOT__RAM[__Vdlyvdim0__femtoRV32_bench__DOT__uut__DOT__RAM__v3] 
            = (((~ ((IData)(0xffU) << (IData)(__Vdlyvlsb__femtoRV32_bench__DOT__uut__DOT__RAM__v3))) 
                & vlTOPp->femtoRV32_bench__DOT__uut__DOT__RAM
                [__Vdlyvdim0__femtoRV32_bench__DOT__uut__DOT__RAM__v3]) 
               | ((IData)(__Vdlyvval__femtoRV32_bench__DOT__uut__DOT__RAM__v3) 
                  << (IData)(__Vdlyvlsb__femtoRV32_bench__DOT__uut__DOT__RAM__v3)));
    }
    vlTOPp->oled_CLK = vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__genblk1__DOT__slow_clk__DOT__slow_cnt;
    vlTOPp->oled_DIN = (1U & ((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__shifter) 
                              >> 0xfU));
    if (VL_UNLIKELY(((vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address 
                      >> 2U) & (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__io_wstrb)))) {
        VL_WRITEF("****************** LEDs = %b\n",
                  4,(0xfU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata));
        vlTOPp->femtoRV32_bench__DOT__uut__DOT__leds__DOT__led_state 
            = (0xfU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata);
    }
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__divstep_do 
        = (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__divisor 
           <= (QData)((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__dividend)));
    if (((0xffffU == (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__reset_cnt)) 
         & (~ (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__uart_brk)))) {
        if ((2U & (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__state))) {
            vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                = vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__registerFile
                [(0x1fU & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_rdata 
                           >> 0xfU))];
            vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs2 
                = vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__registerFile
                [(0x1fU & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_rdata 
                           >> 0x14U))];
            vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                = (0x3fffffffU & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_rdata 
                                  >> 2U));
            __Vdly__femtoRV32_bench__DOT__uut__DOT__processor__DOT__state = 4U;
        } else {
            if ((8U & (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__state))) {
                if (((~ (IData)((0U != vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient_msk))) 
                     & (0U == (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__bitcount)))) {
                    __Vdly__femtoRV32_bench__DOT__uut__DOT__processor__DOT__state = 1U;
                }
            } else {
                if ((4U & (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__state))) {
                    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__PC 
                        = vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__PC_new;
                    __Vdly__femtoRV32_bench__DOT__uut__DOT__processor__DOT__state 
                        = ((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__needToWait)
                            ? 8U : 1U);
                } else {
                    __Vdly__femtoRV32_bench__DOT__uut__DOT__processor__DOT__state = 2U;
                }
            }
        }
    } else {
        __Vdly__femtoRV32_bench__DOT__uut__DOT__processor__DOT__state = 8U;
        vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__PC = 0U;
    }
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__dividendN 
        = ((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__divstep_do)
            ? (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__dividend 
               - (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__divisor))
            : vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__dividend);
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient_msk 
        = __Vdly__femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient_msk;
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__reset_cnt 
        = __Vdly__femtoRV32_bench__DOT__uut__DOT__reset_cnt;
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__bitcount 
        = __Vdly__femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__bitcount;
    if (__Vdlyvset__femtoRV32_bench__DOT__uut__DOT__processor__DOT__registerFile__v0) {
        vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__registerFile[__Vdlyvdim0__femtoRV32_bench__DOT__uut__DOT__processor__DOT__registerFile__v0] 
            = __Vdlyvval__femtoRV32_bench__DOT__uut__DOT__processor__DOT__registerFile__v0;
    }
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__state 
        = __Vdly__femtoRV32_bench__DOT__uut__DOT__processor__DOT__state;
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotientN 
        = ((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__divstep_do)
            ? (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient 
               | vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient_msk)
            : vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient);
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__reset = 
        (0xffffU == (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__reset_cnt));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__sending 
        = (0U != (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__bitcount));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata 
        = ((0xffffff00U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata) 
           | (0xffU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs2));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__isDivide 
        = (((0xcU == (0x1fU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr)) 
            & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
               >> 0x17U)) & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                             >> 0xcU));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__isALU 
        = ((4U == (0x1fU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr)) 
           | (0xcU == (0x1fU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr)));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__PCplusImm 
        = (0xffffffU & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__PC 
                        + ((2U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr)
                            ? ((0xf00000U & ((- (IData)(
                                                        (1U 
                                                         & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                            >> 0x1dU)))) 
                                             << 0x14U)) 
                               | ((0xff000U & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                               << 2U)) 
                                  | ((0x800U & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                >> 7U)) 
                                     | (0x7feU & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                  >> 0x12U)))))
                            : ((4U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr)
                                ? (0xfff000U & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                << 2U))
                                : ((0xfff000U & ((- (IData)(
                                                            (1U 
                                                             & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                                >> 0x1dU)))) 
                                                 << 0xcU)) 
                                   | ((0x800U & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                 << 6U)) 
                                      | ((0x7e0U & 
                                          (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                           >> 0x12U)) 
                                         | (0x1eU & 
                                            (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                             >> 5U)))))))));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter_in 
        = ((2U & ((IData)(1U) << (7U & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                        >> 0xaU))))
            ? ((0x80000000U & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                               << 0x1fU)) | ((0x40000000U 
                                              & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                 << 0x1dU)) 
                                             | ((0x20000000U 
                                                 & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                    << 0x1bU)) 
                                                | ((0x10000000U 
                                                    & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                       << 0x19U)) 
                                                   | ((0x8000000U 
                                                       & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                          << 0x17U)) 
                                                      | ((0x4000000U 
                                                          & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                             << 0x15U)) 
                                                         | ((0x2000000U 
                                                             & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                << 0x13U)) 
                                                            | ((0x1000000U 
                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                   << 0x11U)) 
                                                               | ((0x800000U 
                                                                   & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                      << 0xfU)) 
                                                                  | ((0x400000U 
                                                                      & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                         << 0xdU)) 
                                                                     | ((0x200000U 
                                                                         & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                            << 0xbU)) 
                                                                        | ((0x100000U 
                                                                            & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                               << 9U)) 
                                                                           | ((0x80000U 
                                                                               & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                                << 7U)) 
                                                                              | ((0x40000U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                                << 5U)) 
                                                                                | ((0x20000U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                                << 3U)) 
                                                                                | ((0x10000U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                                << 1U)) 
                                                                                | ((0x8000U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                                >> 1U)) 
                                                                                | ((0x4000U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                                >> 3U)) 
                                                                                | ((0x2000U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                                >> 5U)) 
                                                                                | ((0x1000U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                                >> 7U)) 
                                                                                | ((0x800U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                                >> 9U)) 
                                                                                | ((0x400U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                                >> 0xbU)) 
                                                                                | ((0x200U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                                >> 0xdU)) 
                                                                                | ((0x100U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                                >> 0xfU)) 
                                                                                | ((0x80U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                                >> 0x11U)) 
                                                                                | ((0x40U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                                >> 0x13U)) 
                                                                                | ((0x20U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                                >> 0x15U)) 
                                                                                | ((0x10U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                                >> 0x17U)) 
                                                                                | ((8U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                                >> 0x19U)) 
                                                                                | ((4U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                                >> 0x1bU)) 
                                                                                | ((2U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                                >> 0x1dU)) 
                                                                                | (1U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                                >> 0x1fU)))))))))))))))))))))))))))))))))
            : vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1);
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__Iimm 
        = ((0xfffff800U & ((- (IData)((1U & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                             >> 0x1dU)))) 
                           << 0xbU)) | (0x7ffU & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                  >> 0x12U)));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__needToWait 
        = (((0U == (0x1fU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr)) 
            | (8U == (0x1fU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr))) 
           | (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__isDivide));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluWr 
        = (((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__state) 
            >> 2U) & (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__isALU));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluIn2 
        = (((0xcU == (0x1fU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr)) 
            | (0x18U == (0x1fU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr)))
            ? vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs2
            : vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__Iimm);
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__loadstore_addr 
        = (0xffffffU & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                        + ((8U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr)
                            ? ((0xfff800U & ((- (IData)(
                                                        (1U 
                                                         & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                            >> 0x1dU)))) 
                                             << 0xbU)) 
                               | ((0x7e0U & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                             >> 0x12U)) 
                                  | (0x1fU & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                              >> 5U))))
                            : vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__Iimm)));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__multiply 
        = ((QData)((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1)) 
           * (QData)((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluIn2)));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluPlus 
        = (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
           + vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluIn2);
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
        = (IData)((0x1ffffffffULL & VL_SHIFTRS_QQI(33,33,5, 
                                                   (((QData)((IData)(
                                                                     (1U 
                                                                      & ((vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                                          >> 0x1cU) 
                                                                         & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                            >> 0x1fU))))) 
                                                     << 0x20U) 
                                                    | (QData)((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter_in))), 
                                                   (0x1fU 
                                                    & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluIn2))));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluMinus 
        = (0x1ffffffffULL & (1ULL + ((0x100000000ULL 
                                      | (QData)((IData)(
                                                        (~ vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluIn2)))) 
                                     + (QData)((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1)))));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata 
        = ((0xffff00ffU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata) 
           | (0xff00U & (((1U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__loadstore_addr)
                           ? vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs2
                           : (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs2 
                              >> 8U)) << 8U)));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata 
        = ((0xff00ffffU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata) 
           | (0xff0000U & (((2U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__loadstore_addr)
                             ? vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs2
                             : (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs2 
                                >> 0x10U)) << 0x10U)));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata 
        = ((0xffffffU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wdata) 
           | (0xff000000U & (((1U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__loadstore_addr)
                               ? vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs2
                               : ((2U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__loadstore_addr)
                                   ? (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs2 
                                      >> 8U) : (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs2 
                                                >> 0x18U))) 
                             << 0x18U)));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wmask 
        = ((- (IData)((((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__state) 
                        >> 2U) & (8U == (0x1fU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr))))) 
           & ((0U == (3U & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                            >> 0xaU))) ? ((2U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__loadstore_addr)
                                           ? ((1U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__loadstore_addr)
                                               ? 8U
                                               : 4U)
                                           : ((1U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__loadstore_addr)
                                               ? 2U
                                               : 1U))
               : ((1U == (3U & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                >> 0xaU))) ? ((2U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__loadstore_addr)
                                               ? 0xcU
                                               : 3U)
                   : 0xfU)));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address 
        = ((1U & (((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__state) 
                   >> 1U) | (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__state)))
            ? vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__PC
            : vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__loadstore_addr);
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__leftshift 
        = ((0x80000000U & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                           << 0x1fU)) | ((0x40000000U 
                                          & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                             << 0x1dU)) 
                                         | ((0x20000000U 
                                             & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                << 0x1bU)) 
                                            | ((0x10000000U 
                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                   << 0x19U)) 
                                               | ((0x8000000U 
                                                   & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                      << 0x17U)) 
                                                  | ((0x4000000U 
                                                      & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                         << 0x15U)) 
                                                     | ((0x2000000U 
                                                         & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                            << 0x13U)) 
                                                        | ((0x1000000U 
                                                            & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                               << 0x11U)) 
                                                           | ((0x800000U 
                                                               & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                  << 0xfU)) 
                                                              | ((0x400000U 
                                                                  & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                     << 0xdU)) 
                                                                 | ((0x200000U 
                                                                     & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                        << 0xbU)) 
                                                                    | ((0x100000U 
                                                                        & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                           << 9U)) 
                                                                       | ((0x80000U 
                                                                           & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                              << 7U)) 
                                                                          | ((0x40000U 
                                                                              & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                                << 5U)) 
                                                                             | ((0x20000U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                                << 3U)) 
                                                                                | ((0x10000U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                                << 1U)) 
                                                                                | ((0x8000U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                                >> 1U)) 
                                                                                | ((0x4000U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                                >> 3U)) 
                                                                                | ((0x2000U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                                >> 5U)) 
                                                                                | ((0x1000U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                                >> 7U)) 
                                                                                | ((0x800U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                                >> 9U)) 
                                                                                | ((0x400U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                                >> 0xbU)) 
                                                                                | ((0x200U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                                >> 0xdU)) 
                                                                                | ((0x100U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                                >> 0xfU)) 
                                                                                | ((0x80U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                                >> 0x11U)) 
                                                                                | ((0x40U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                                >> 0x13U)) 
                                                                                | ((0x20U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                                >> 0x15U)) 
                                                                                | ((0x10U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                                >> 0x17U)) 
                                                                                | ((8U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                                >> 0x19U)) 
                                                                                | ((4U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                                >> 0x1bU)) 
                                                                                | ((2U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                                >> 0x1dU)) 
                                                                                | (1U 
                                                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter 
                                                                                >> 0x1fU)))))))))))))))))))))))))))))))));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__LT 
        = (1U & ((0x80000000U & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                 ^ vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluIn2))
                  ? (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                     >> 0x1fU) : (IData)((vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluMinus 
                                          >> 0x20U))));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__io_wstrb 
        = ((0U != (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_wmask)) 
           & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address 
              >> 0x16U));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_rdata 
        = ((0x400000U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_address)
            ? vlTOPp->femtoRV32_bench__DOT__uut__DOT__io_rdata
            : vlTOPp->femtoRV32_bench__DOT__uut__DOT__ram_rdata);
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__jumpToPCplusImm 
        = (1U & ((vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                  >> 1U) | ((0x18U == (0x1fU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr)) 
                            & ((((((0xffU & (((IData)(1U) 
                                              << (7U 
                                                  & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                     >> 0xaU))) 
                                             & (0U 
                                                == (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluMinus)))) 
                                   | (0x7fU & ((((IData)(1U) 
                                                 << 
                                                 (7U 
                                                  & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                     >> 0xaU))) 
                                                >> 1U) 
                                               & (0U 
                                                  != (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluMinus))))) 
                                  | (0xfU & ((((IData)(1U) 
                                               << (7U 
                                                   & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                      >> 0xaU))) 
                                              >> 4U) 
                                             & (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__LT)))) 
                                 | (7U & ((((IData)(1U) 
                                            << (7U 
                                                & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                   >> 0xaU))) 
                                           >> 5U) & 
                                          (~ (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__LT))))) 
                                | (3U & ((((IData)(1U) 
                                           << (7U & 
                                               (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                >> 0xaU))) 
                                          >> 6U) & (IData)(
                                                           (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluMinus 
                                                            >> 0x20U))))) 
                               | (1U & ((((IData)(1U) 
                                          << (7U & 
                                              (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                               >> 0xaU))) 
                                         >> 7U) & (~ (IData)(
                                                             (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluMinus 
                                                              >> 0x20U)))))))));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluOut_base 
        = (((((((((1U & ((IData)(1U) << (7U & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                               >> 0xaU))))
                   ? ((1U & ((vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                              >> 0x1cU) & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                           >> 3U)))
                       ? (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluMinus)
                       : vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluPlus)
                   : 0U) | ((2U & ((IData)(1U) << (7U 
                                                   & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                      >> 0xaU))))
                             ? vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__leftshift
                             : 0U)) | ((4U & ((IData)(1U) 
                                              << (7U 
                                                  & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                     >> 0xaU))))
                                        ? (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__LT)
                                        : 0U)) | ((8U 
                                                   & ((IData)(1U) 
                                                      << 
                                                      (7U 
                                                       & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                          >> 0xaU))))
                                                   ? 
                                                  (1U 
                                                   & (IData)(
                                                             (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluMinus 
                                                              >> 0x20U)))
                                                   : 0U)) 
              | ((0x10U & ((IData)(1U) << (7U & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                 >> 0xaU))))
                  ? (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                     ^ vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluIn2)
                  : 0U)) | ((0x20U & ((IData)(1U) << 
                                      (7U & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                             >> 0xaU))))
                             ? vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter
                             : 0U)) | ((0x40U & ((IData)(1U) 
                                                 << 
                                                 (7U 
                                                  & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                     >> 0xaU))))
                                        ? (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                           | vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluIn2)
                                        : 0U)) | ((0x80U 
                                                   & ((IData)(1U) 
                                                      << 
                                                      (7U 
                                                       & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                          >> 0xaU))))
                                                   ? 
                                                  (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                   & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluIn2)
                                                   : 0U));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__LOAD_halfword 
        = (0xffffU & ((2U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__loadstore_addr)
                       ? (vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_rdata 
                          >> 0x10U) : vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_rdata));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__PC_new 
        = (0xffffffU & ((0x19U == (0x1fU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr))
                         ? (0xfffffeU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluPlus)
                         : ((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__jumpToPCplusImm)
                             ? vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__PCplusImm
                             : ((IData)(4U) + vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__PC))));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__LOAD_byte 
        = (0xffU & ((1U & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__loadstore_addr)
                     ? ((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__LOAD_halfword) 
                        >> 8U) : (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__LOAD_halfword)));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__LOAD_sign 
        = (1U & ((~ (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                     >> 0xcU)) & ((0U == (3U & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                >> 0xaU)))
                                   ? ((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__LOAD_byte) 
                                      >> 7U) : ((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__LOAD_halfword) 
                                                >> 0xfU))));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__writeBackData 
        = ((((((IData)(((0x1cU == (0x1fU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr))
                         ? vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__cycles
                         : 0ULL)) | (IData)(((0xdU 
                                              == (0x1fU 
                                                  & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr))
                                              ? (QData)((IData)(
                                                                (0xfffff000U 
                                                                 & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                                    << 2U))))
                                              : 0ULL))) 
              | (IData)(((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__isALU)
                          ? (QData)((IData)((((0xcU 
                                               == (0x1fU 
                                                   & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr)) 
                                              & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                 >> 0x17U))
                                              ? (((
                                                   (1U 
                                                    & ((IData)(1U) 
                                                       << 
                                                       (7U 
                                                        & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                           >> 0xaU))))
                                                    ? (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__multiply)
                                                    : 0U) 
                                                  | ((0U 
                                                      != 
                                                      (7U 
                                                       & (((IData)(1U) 
                                                           << 
                                                           (7U 
                                                            & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                               >> 0xaU))) 
                                                          >> 1U)))
                                                      ? (IData)(
                                                                (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__multiply 
                                                                 >> 0x20U))
                                                      : 0U)) 
                                                 | ((0x1000U 
                                                     & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr)
                                                     ? 
                                                    ((1U 
                                                      & ((~ 
                                                          (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                           >> 0xaU)) 
                                                         & ((0x800U 
                                                             & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr)
                                                             ? 
                                                            (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                             >> 0x1fU)
                                                             : 
                                                            (((1U 
                                                               & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 
                                                                  >> 0x1fU)) 
                                                              != 
                                                              (1U 
                                                               & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluIn2 
                                                                  >> 0x1fU))) 
                                                             & (0U 
                                                                != vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluIn2)))))
                                                      ? 
                                                     (- vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__divResult)
                                                      : vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__divResult)
                                                     : 0U))
                                              : vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluOut_base)))
                          : 0ULL))) | (IData)(((5U 
                                                == 
                                                (0x1fU 
                                                 & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr))
                                                ? (QData)((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__PCplusImm))
                                                : 0ULL))) 
            | (IData)(((1U & ((0x19U == (0x1fU & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr)) 
                              | (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                 >> 1U))) ? (QData)((IData)(
                                                            (0xffffffU 
                                                             & ((IData)(4U) 
                                                                + vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__PC))))
                        : 0ULL))) | (IData)(((0U == 
                                              (0x1fU 
                                               & vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr))
                                              ? (QData)((IData)(
                                                                ((0U 
                                                                  == 
                                                                  (3U 
                                                                   & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                                      >> 0xaU)))
                                                                  ? 
                                                                 ((0xffffff00U 
                                                                   & ((- (IData)((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__LOAD_sign))) 
                                                                      << 8U)) 
                                                                  | (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__LOAD_byte))
                                                                  : 
                                                                 ((1U 
                                                                   == 
                                                                   (3U 
                                                                    & (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr 
                                                                       >> 0xaU)))
                                                                   ? 
                                                                  ((0xffff0000U 
                                                                    & ((- (IData)((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__LOAD_sign))) 
                                                                       << 0x10U)) 
                                                                   | (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__LOAD_halfword))
                                                                   : vlTOPp->femtoRV32_bench__DOT__uut__DOT__mem_rdata))))
                                              : 0ULL)));
}

void VfemtoRV32_bench::_eval(VfemtoRV32_bench__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VfemtoRV32_bench::_eval\n"); );
    VfemtoRV32_bench* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (((IData)(vlTOPp->pclk) & (~ (IData)(vlTOPp->__Vclklast__TOP__pclk)))) {
        vlTOPp->_sequent__TOP__1(vlSymsp);
    }
    // Final
    vlTOPp->__Vclklast__TOP__pclk = vlTOPp->pclk;
}

VL_INLINE_OPT QData VfemtoRV32_bench::_change_request(VfemtoRV32_bench__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VfemtoRV32_bench::_change_request\n"); );
    VfemtoRV32_bench* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    return (vlTOPp->_change_request_1(vlSymsp));
}

VL_INLINE_OPT QData VfemtoRV32_bench::_change_request_1(VfemtoRV32_bench__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VfemtoRV32_bench::_change_request_1\n"); );
    VfemtoRV32_bench* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void VfemtoRV32_bench::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VfemtoRV32_bench::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((pclk & 0xfeU))) {
        Verilated::overWidthError("pclk");}
}
#endif  // VL_DEBUG
