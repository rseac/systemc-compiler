//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.7
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: MyModule ()
//
module MyModule // "tb_inst.top_mod"
(
    input logic clk
);

// SystemC signals
logic rst;
logic signed [31:0] sig;

//------------------------------------------------------------------------------
// Clocked THREAD: proc (test_const_global.cpp:45:5) 

// Thread-local variables
logic signed [31:0] sig_next;

// Next-state combinational logic
always_comb begin : proc_comb     // test_const_global.cpp:45:5
    proc_func;
end
function void proc_func;
    logic TMP_0;
    integer i_1;
    logic b;
    sig_next = sig;
    // Call mb_read() begin
    i_1 = 3 + 2;
    TMP_0 = i_1 == 1;
    // Call mb_read() end
    b = TMP_0;
    sig_next = -3'sd2;
    sig_next = 3;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rst) 
begin : proc_ff
    if ( ~rst ) begin
        integer i;
        i = 2;
    end
    else begin
        sig <= sig_next;
    end
end

endmodule


