//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.7
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
);

// SystemC signals
logic a;
logic b;
logic clk;
logic nrst;


//------------------------------------------------------------------------------

A a_mod
(
  .clk(clk),
  .nrst(nrst),
  .a(a),
  .b(b)
);

endmodule



//==============================================================================
//
// Module: A (test_cthread_simple2.cpp:124:5)
//
module A // "b_mod.a_mod"
(
    input logic clk,
    input logic nrst,
    input logic a,
    output logic b
);

// SystemC signals
logic c;

//------------------------------------------------------------------------------
// Clocked THREAD: read_only_reg (test_cthread_simple2.cpp:47:5) 

// Next-state combinational logic
always_comb begin : read_only_reg_comb     // test_cthread_simple2.cpp:47:5
    read_only_reg_func;
end
function void read_only_reg_func;
    logic b_1;
    b_1 = c;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : read_only_reg_ff
    if ( ~nrst ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: simple1 (test_cthread_simple2.cpp:57:5) 

// Thread-local variables
logic signed [31:0] m;
logic signed [31:0] m_next;
logic simple1_PROC_STATE;
logic simple1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : simple1_comb     // test_cthread_simple2.cpp:57:5
    simple1_func;
end
function void simple1_func;
    integer i;
    m_next = m;
    simple1_PROC_STATE_next = simple1_PROC_STATE;
    
    case (simple1_PROC_STATE)
        default : begin
            m_next = 1;
            i = 0;
            simple1_PROC_STATE_next = 0; return;    // test_cthread_simple2.cpp:61:9;
        end
        0: begin
            i = m_next + 1;
            m_next = i;
            simple1_PROC_STATE_next = 1; return;    // test_cthread_simple2.cpp:66:13;
        end
        1: begin
            i = m_next + 1;
            m_next = i;
            simple1_PROC_STATE_next = 1; return;    // test_cthread_simple2.cpp:66:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk) 
begin : simple1_ff
    begin
        m <= m_next;
        simple1_PROC_STATE <= simple1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: simple2 (test_cthread_simple2.cpp:70:5) 

// Thread-local variables
logic signed [31:0] x;
logic signed [31:0] x_next;

// Next-state combinational logic
always_comb begin : simple2_comb     // test_cthread_simple2.cpp:70:5
    simple2_func;
end
function void simple2_func;
    integer i;
    x_next = x;
    i = x_next + 1;
    x_next = i;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : simple2_ff
    if ( ~nrst ) begin
        x <= 1;
    end
    else begin
        x <= x_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: simple3 (test_cthread_simple2.cpp:82:5) 

// Thread-local variables
logic b_next;
logic c_next;
logic [1:0] simple3_PROC_STATE;
logic [1:0] simple3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : simple3_comb     // test_cthread_simple2.cpp:82:5
    simple3_func;
end
function void simple3_func;
    b_next = b;
    c_next = c;
    simple3_PROC_STATE_next = simple3_PROC_STATE;
    
    case (simple3_PROC_STATE)
        0: begin
            c_next = |(a + b);
            simple3_PROC_STATE_next = 1; return;    // test_cthread_simple2.cpp:89:13;
        end
        1: begin
            b_next = c;
            simple3_PROC_STATE_next = 2; return;    // test_cthread_simple2.cpp:91:13;
        end
        2: begin
            c_next = |(a + b);
            simple3_PROC_STATE_next = 1; return;    // test_cthread_simple2.cpp:89:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : simple3_ff
    if ( ~nrst ) begin
        b <= 1;
        simple3_PROC_STATE <= 0;    // test_cthread_simple2.cpp:85:9;
    end
    else begin
        b <= b_next;
        c <= c_next;
        simple3_PROC_STATE <= simple3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: simple_pres (test_cthread_simple2.cpp:95:5) 

// Thread-local variables
logic b_next0;
logic signed [31:0] i;
logic signed [31:0] i_next;
logic [1:0] simple_pres_PROC_STATE;
logic [1:0] simple_pres_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : simple_pres_comb     // test_cthread_simple2.cpp:95:5
    simple_pres_func;
end
function void simple_pres_func;
    b_next0 = b;
    i_next = i;
    simple_pres_PROC_STATE_next = simple_pres_PROC_STATE;
    
    case (simple_pres_PROC_STATE)
        0: begin
            b_next0 = |(a + i_next);
            simple_pres_PROC_STATE_next = 1; return;    // test_cthread_simple2.cpp:103:13;
        end
        1: begin
            i_next = b;
            simple_pres_PROC_STATE_next = 2; return;    // test_cthread_simple2.cpp:105:13;
        end
        2: begin
            b_next0 = |(a + i_next);
            simple_pres_PROC_STATE_next = 1; return;    // test_cthread_simple2.cpp:103:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : simple_pres_ff
    if ( ~nrst ) begin
        b <= 0;
        i <= 1;
        simple_pres_PROC_STATE <= 0;    // test_cthread_simple2.cpp:99:9;
    end
    else begin
        b <= b_next0;
        i <= i_next;
        simple_pres_PROC_STATE <= simple_pres_PROC_STATE_next;
    end
end

endmodule


