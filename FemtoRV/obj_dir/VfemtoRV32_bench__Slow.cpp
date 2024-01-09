// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VfemtoRV32_bench.h for the primary calling header

#include "VfemtoRV32_bench.h"
#include "VfemtoRV32_bench__Syms.h"

//==========

VL_CTOR_IMP(VfemtoRV32_bench) {
    VfemtoRV32_bench__Syms* __restrict vlSymsp = __VlSymsp = new VfemtoRV32_bench__Syms(this, name());
    VfemtoRV32_bench* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void VfemtoRV32_bench::__Vconfigure(VfemtoRV32_bench__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
    Verilated::timeunit(-9);
    Verilated::timeprecision(-9);
}

VfemtoRV32_bench::~VfemtoRV32_bench() {
    VL_DO_CLEAR(delete __VlSymsp, __VlSymsp = NULL);
}

void VfemtoRV32_bench::_initial__TOP__2(VfemtoRV32_bench__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VfemtoRV32_bench::_initial__TOP__2\n"); );
    VfemtoRV32_bench* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    WData/*191:0*/ __Vtemp3[6];
    // Body
    __Vtemp3[0U] = 0x2e686578U;
    __Vtemp3[1U] = 0x77617265U;
    __Vtemp3[2U] = 0x6669726dU;
    __Vtemp3[3U] = 0x4152452fU;
    __Vtemp3[4U] = 0x49524d57U;
    __Vtemp3[5U] = 0x46U;
    VL_READMEM_N(true, 32, 16384, 0, VL_CVT_PACK_STR_NW(6, __Vtemp3)
                 , vlTOPp->femtoRV32_bench__DOT__uut__DOT__RAM
                 , 0, ~0ULL);
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__leds__DOT__led_state = 0U;
    vlTOPp->oled_DC = 0U;
    vlTOPp->oled_RST = 0U;
    vlTOPp->oled_CS = 1U;
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__shifter = 0U;
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__reset_cnt = 0U;
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__bitcount = 0U;
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__cycles = 0ULL;
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__registerFile[0U] = 0U;
}

void VfemtoRV32_bench::_settle__TOP__3(VfemtoRV32_bench__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VfemtoRV32_bench::_settle__TOP__3\n"); );
    VfemtoRV32_bench* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->oled_CLK = vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__genblk1__DOT__slow_clk__DOT__slow_cnt;
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__divstep_do 
        = (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__divisor 
           <= (QData)((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__dividend)));
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
    vlTOPp->oled_DIN = (1U & ((IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__shifter) 
                              >> 0xfU));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__reset = 
        (0xffffU == (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__reset_cnt));
    vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__sending 
        = (0U != (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__bitcount));
    if (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__divstep_do) {
        vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__dividendN 
            = (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__dividend 
               - (IData)(vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__divisor));
        vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotientN 
            = (vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient 
               | vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient_msk);
    } else {
        vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__dividendN 
            = vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__dividend;
        vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotientN 
            = vlTOPp->femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient;
    }
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

void VfemtoRV32_bench::_eval_initial(VfemtoRV32_bench__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VfemtoRV32_bench::_eval_initial\n"); );
    VfemtoRV32_bench* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->__Vclklast__TOP__pclk = vlTOPp->pclk;
    vlTOPp->_initial__TOP__2(vlSymsp);
}

void VfemtoRV32_bench::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VfemtoRV32_bench::final\n"); );
    // Variables
    VfemtoRV32_bench__Syms* __restrict vlSymsp = this->__VlSymsp;
    VfemtoRV32_bench* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VfemtoRV32_bench::_eval_settle(VfemtoRV32_bench__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VfemtoRV32_bench::_eval_settle\n"); );
    VfemtoRV32_bench* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__3(vlSymsp);
}

void VfemtoRV32_bench::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VfemtoRV32_bench::_ctor_var_reset\n"); );
    // Body
    pclk = VL_RAND_RESET_I(1);
    oled_DIN = VL_RAND_RESET_I(1);
    oled_CLK = VL_RAND_RESET_I(1);
    oled_CS = VL_RAND_RESET_I(1);
    oled_DC = VL_RAND_RESET_I(1);
    oled_RST = VL_RAND_RESET_I(1);
    femtoRV32_bench__DOT__uut__DOT__reset_cnt = VL_RAND_RESET_I(16);
    femtoRV32_bench__DOT__uut__DOT__reset = VL_RAND_RESET_I(1);
    femtoRV32_bench__DOT__uut__DOT__mem_address = VL_RAND_RESET_I(32);
    femtoRV32_bench__DOT__uut__DOT__mem_wmask = VL_RAND_RESET_I(4);
    femtoRV32_bench__DOT__uut__DOT__mem_rdata = VL_RAND_RESET_I(32);
    femtoRV32_bench__DOT__uut__DOT__mem_wdata = VL_RAND_RESET_I(32);
    femtoRV32_bench__DOT__uut__DOT__io_rdata = VL_RAND_RESET_I(32);
    femtoRV32_bench__DOT__uut__DOT__io_wstrb = VL_RAND_RESET_I(1);
    { int __Vi0=0; for (; __Vi0<16384; ++__Vi0) {
            femtoRV32_bench__DOT__uut__DOT__RAM[__Vi0] = VL_RAND_RESET_I(32);
    }}
    femtoRV32_bench__DOT__uut__DOT__ram_rdata = VL_RAND_RESET_I(32);
    femtoRV32_bench__DOT__uut__DOT__uart_brk = VL_RAND_RESET_I(1);
    femtoRV32_bench__DOT__uut__DOT__leds__DOT__led_state = VL_RAND_RESET_I(4);
    femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__bitcount = VL_RAND_RESET_I(5);
    femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__shifter = VL_RAND_RESET_I(16);
    femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__sending = VL_RAND_RESET_I(1);
    femtoRV32_bench__DOT__uut__DOT__oled_display__DOT__genblk1__DOT__slow_clk__DOT__slow_cnt = VL_RAND_RESET_I(1);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__Iimm = VL_RAND_RESET_I(32);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__isALU = VL_RAND_RESET_I(1);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs1 = VL_RAND_RESET_I(32);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__rs2 = VL_RAND_RESET_I(32);
    { int __Vi0=0; for (; __Vi0<32; ++__Vi0) {
            femtoRV32_bench__DOT__uut__DOT__processor__DOT__registerFile[__Vi0] = VL_RAND_RESET_I(32);
    }}
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluIn2 = VL_RAND_RESET_I(32);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluWr = VL_RAND_RESET_I(1);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluPlus = VL_RAND_RESET_I(32);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluMinus = VL_RAND_RESET_Q(33);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__LT = VL_RAND_RESET_I(1);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter_in = VL_RAND_RESET_I(32);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__shifter = VL_RAND_RESET_I(32);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__leftshift = VL_RAND_RESET_I(32);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__isDivide = VL_RAND_RESET_I(1);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__multiply = VL_RAND_RESET_Q(64);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__aluOut_base = VL_RAND_RESET_I(32);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__dividend = VL_RAND_RESET_I(32);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__divisor = VL_RAND_RESET_Q(63);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient = VL_RAND_RESET_I(32);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotient_msk = VL_RAND_RESET_I(32);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__divstep_do = VL_RAND_RESET_I(1);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__dividendN = VL_RAND_RESET_I(32);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__quotientN = VL_RAND_RESET_I(32);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__divResult = VL_RAND_RESET_I(32);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__PC = VL_RAND_RESET_I(24);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__instr = VL_RAND_RESET_I(30);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__PCplusImm = VL_RAND_RESET_I(24);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__loadstore_addr = VL_RAND_RESET_I(24);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__cycles = VL_RAND_RESET_Q(64);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__writeBackData = VL_RAND_RESET_I(32);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__LOAD_sign = VL_RAND_RESET_I(1);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__LOAD_halfword = VL_RAND_RESET_I(16);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__LOAD_byte = VL_RAND_RESET_I(8);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__state = VL_RAND_RESET_I(4);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__jumpToPCplusImm = VL_RAND_RESET_I(1);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__needToWait = VL_RAND_RESET_I(1);
    femtoRV32_bench__DOT__uut__DOT__processor__DOT__PC_new = VL_RAND_RESET_I(24);
}
