//
// Copyright (c) 2014-2020 by 1801BM1@gmail.com
//______________________________________________________________________________
//
// Version of M4 processor with Q-bus external interface
// All external signal transitions should be synchronzed with pin_clk
// The core does not contain any extra metastability eliminators itself
//
module am4_qbus
(
   input          pin_clk,       // processor clock
   output         pin_init,      // peripheral reset output
   input          pin_dclo,      // processor reset
   input          pin_aclo,      // power fail notificaton
   input          pin_halt,      // halt mode interrupt
   input          pin_evnt,      // timer interrupt requests
   input          pin_virq,      // vectored interrupt request
                                 //
   input          pin_dmr,       // bus grant request
   input          pin_sack,      // bus grant acknowlegement
   input          pin_rply,      // transaction acknowlegement
   output         pin_dmgo,      // bus grant
                                 //
   input  [15:0]  pin_ad_in,     // data bus input
   output [15:0]  pin_ad_out,    // address/data bus output
   output         pin_ad_ena,    // address/data bus enable
   output         pin_ctrl_ena,  //
                                 //
   output         pin_sync,      // address strobe
   output         pin_iako,      // interrupt vector input
   output         pin_wtbt,      // write/byte status
   output         pin_dout,      // data output strobe
   output         pin_din        // data input strobe
);

//______________________________________________________________________________
//
endmodule
