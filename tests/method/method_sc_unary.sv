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
logic c;
logic p;


//------------------------------------------------------------------------------

A a_mod
(
  .a(a),
  .b(b),
  .c(c),
  .p(p)
);

endmodule



//==============================================================================
//
// Module: A (test_sc_unary.cpp:162:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b,
    output logic c,
    output logic p
);

// SystemC signals

//------------------------------------------------------------------------------
// Method process: and_reduce1 (test_sc_unary.cpp:41:6) 

always_comb 
begin : and_reduce1     // test_sc_unary.cpp:41:6
    logic [3:0] x1;
    logic [7:0] x2;
    logic [7:0] x3;
    logic l1;
    logic l2;
    x1 = 'hC;
    x2 = 'hFF;
    x3 = 'hFA;
    l1 = &x1;
    l2 = ~&x2;
end

//------------------------------------------------------------------------------
// Method process: or_reduce1 (test_sc_unary.cpp:57:6) 

always_comb 
begin : or_reduce1     // test_sc_unary.cpp:57:6
    logic [3:0] x1;
    logic [7:0] x2;
    logic [7:0] x3;
    logic l1;
    logic l2;
    logic l3;
    logic l4;
    logic l5;
    x1 = 'hC;
    x2 = 0;
    x3 = 'h10;
    l1 = |x1;
    l2 = ~|x2;
    l3 = 1'(x2);
    l4 = |2'(l3);
    l5 = |2'(1'(x2));
    l5 = 1'(x2);
end

//------------------------------------------------------------------------------
// Method process: xor_reduce1 (test_sc_unary.cpp:79:6) 

always_comb 
begin : xor_reduce1     // test_sc_unary.cpp:79:6
    logic [3:0] x1;
    logic [7:0] x2;
    logic l1;
    logic l2;
    x1 = 1;
    x2 = 0;
    l1 = ^x2;
    l2 = ~^x2;
end

//------------------------------------------------------------------------------
// Method process: sc_types_exclaim (test_sc_unary.cpp:92:5) 

always_comb 
begin : sc_types_exclaim     // test_sc_unary.cpp:92:5
    logic [2:0] x;
    logic b_1;
    x = 1;
    b_1 = |x;
    x = 0;
end

//------------------------------------------------------------------------------
// Method process: sc_types_inc_dec (test_sc_unary.cpp:100:5) 

always_comb 
begin : sc_types_inc_dec     // test_sc_unary.cpp:100:5
    logic [2:0] x;
    x = 1;
    x++;
    ++x;
    --x;
    x--;
end

//------------------------------------------------------------------------------
// Method process: sc_types_comp_assign (test_sc_unary.cpp:112:5) 

always_comb 
begin : sc_types_comp_assign     // test_sc_unary.cpp:112:5
    logic [2:0] x;
    logic signed [7:0] y;
    x = 1;
    x = x + 2;
    y = 2;
    y = y - signed'({1'b0, x});
    y = y + signed'({1'b0, x});
    y = y * signed'({1'b0, x});
    y = -2'sd1;
    x = x + y;
    x = x + (y + 2);
end

//------------------------------------------------------------------------------
// Method process: sc_to_int (test_sc_unary.cpp:130:5) 

always_comb 
begin : sc_to_int     // test_sc_unary.cpp:130:5
    logic [65:0] x;
    integer i;
    integer unsigned u;
    logic [63:0] ul;
    logic signed [63:0] l;
    x = 15;
    i = x;
    x = -5'sd10;
    i = x;
    x = 12;
    u = x;
    x = 11;
    u = x;
    ul = x;
    x = -6'sd20;
    l = x;
end

endmodule


