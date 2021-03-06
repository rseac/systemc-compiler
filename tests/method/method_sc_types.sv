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
logic [1:0] s1;
logic [3:0] s2;


//------------------------------------------------------------------------------

A a_mod
(
  .in1(s1),
  .out1(s1),
  .in2(s2),
  .out2(s2)
);

endmodule



//==============================================================================
//
// Module: A (test_sc_types.cpp:335:5)
//
module A // "b_mod.a_mod"
(
    input logic [1:0] in1,
    output logic [1:0] out1,
    input logic [3:0] in2,
    output logic [3:0] out2
);

// SystemC signals
logic [1:0] sig1;
logic [3:0] sig2;
logic [2:0] sig_arr[3];

//------------------------------------------------------------------------------
// Method process: partial_select_for_type_cast (test_sc_types.cpp:67:5) 

always_comb 
begin : partial_select_for_type_cast     // test_sc_types.cpp:67:5
    logic [3:0] a;
    logic b;
    integer i;
    logic [5:0] c;
    a = 3;
    b = a[1];
    b = 1'(in1);
    b = 1'(in1);
    i = a[2 : 0];
    i = in1[1 : 0];
    i = 1'(in1);
    c = a[3 : 0];
    i = c[2 : 1] + a[1 : 0];
end

//------------------------------------------------------------------------------
// Method process: loop_range_double (test_sc_types.cpp:84:5) 

always_comb 
begin : loop_range_double     // test_sc_types.cpp:84:5
    logic [31:0] val;
    logic [31:0] wval;
    logic [31:0] rval;
    logic [3:0] byteEnable;
    logic b;
    val = 0;
    wval = 0;
    rval = 0;
    byteEnable = 0;
    for (integer i = 0; i < 4; i++)
    begin
        val[i * 8 +: 8] = byteEnable[i] ? wval[i * 8 +: 8] : rval[i * 8 +: 8];
    end
end

//------------------------------------------------------------------------------
// Method process: sc_types (test_sc_types.cpp:128:5) 

always_comb 
begin : sc_types     // test_sc_types.cpp:128:5
    integer i;
    logic x;
    logic [1:0] y;
    logic [63:0] z;
    logic signed [2:0] t_1;
    logic signed [63:0] w;
    x = 1;
    y = 2;
    z = 3;
    t_1 = 4;
    w = 5;
end

//------------------------------------------------------------------------------
// Method process: sc_uint_local (test_sc_types.cpp:138:5) 

always_comb 
begin : sc_uint_local     // test_sc_types.cpp:138:5
    integer i;
    logic [1:0] x;
    logic [1:0] y;
    x = 0;
    i = x;
    x = i + 1;
    y = signed'({1'b0, x}) + i;
    x = y;
    x = signed'({1'b0, y}) + i;
end

//------------------------------------------------------------------------------
// Method process: sc_uint_pointers (test_sc_types.cpp:150:5) 

// Process-local variables
logic [1:0] t;
logic [3:0] u;

always_comb 
begin : sc_uint_pointers     // test_sc_types.cpp:150:5
    integer i;
    logic b;
    logic [1:0] x;
    x = 0;
    x = t;
    x = t + 1;
    t = x;
    t = x + 1;
    i = t;
    t = i;
    t = u;
    u = t;
    t = b;
    b = |t;
end

//------------------------------------------------------------------------------
// Method process: sc_uint_channels (test_sc_types.cpp:172:5) 

always_comb 
begin : sc_uint_channels     // test_sc_types.cpp:172:5
    integer i;
    logic b;
    logic [1:0] x;
    logic [3:0] y;
    x = 0;
    y = 0;
    x = in1;
    x = in1;
    out1 = x;
    out1 = y;
    out1 = x;
    out1 = y;
    y = in2;
    y = x + in2;
    out2 = y;
    out2 = x;
    out2 = in1 + y;
    out2 = y;
    out2 = y + in1;
    sig1 = sig2;
    out2 = sig1;
    sig2 = in1;
end

//------------------------------------------------------------------------------
// Method process: sc_uint_bit (test_sc_types.cpp:201:5) 

// Process-local variables
logic [1:0] t;

always_comb 
begin : sc_uint_bit     // test_sc_types.cpp:201:5
    integer i;
    logic b;
    logic [1:0] x;
    logic [3:0] y;
    x = 0;
    y = 0;
    b = x[0];
    i = t[1];
    x = t[1];
    x[0] = b;
    t[1] = |i;
    t[1] = |x;
    for (integer j = 0; j < 2; j++)
    begin
        x[j] = |i;
        y[j + 1] = |i;
    end
    y[3] = |i;
    y[2 + 1] = x[4 - 3];
end

//------------------------------------------------------------------------------
// Method process: sc_uint_range (test_sc_types.cpp:223:5) 

// Process-local variables
logic [3:0] u;
logic [1:0] t;

always_comb 
begin : sc_uint_range     // test_sc_types.cpp:223:5
    integer i;
    logic b;
    logic [1:0] x;
    logic [31:0] y;
    x = 0;
    y = 0;
    i = x[1 : 0];
    i = u[3 : 0];
    u[3 : 0] = i;
    u[3 : 2] = t[1 : 0];
    y = u[3 : 0];
    i = x[1 : 0];
    y = u[3 : 3];
    y = u[3 : 3];
    for (integer j = 0; j < 2; j++)
    begin
        y[3 : 0] = i;
        y[j +: 2] = i;
        y[j +: 4] = i;
        y[3 : 2] = i;
        y[8 * j +: 4] = i;
        y[8 * j +: 9] = i;
        i = y[2 : 1];
        i = y[1 + j +: 2];
        i = y[2 * j +: 4];
        i = y[(2 + 3) * j +: 4];
        i = y[(2 + 1) * j + 5 +: 3];
        i = y[3 * j + 2 +: 2];
        y[8 * j +: 2] = i;
        i = y[3 - j +: 2];
    end
end

//------------------------------------------------------------------------------
// Method process: sc_uint_concat (test_sc_types.cpp:258:5) 

always_comb 
begin : sc_uint_concat     // test_sc_types.cpp:258:5
    integer i;
    logic b;
    logic [1:0] x;
    logic [1:0] z;
    logic [3:0] y;
    x = 0;
    z = 0;
    y = 0;
    y = {x, z};
    {x, z} = y;
    y = {x, z};
    i = {{x, y}, z};
    {x, z} = i;
    {{x, y}, z} = y;
    i = y + (z + x);
    i = y + (z + x);
end

//------------------------------------------------------------------------------
// Method process: sc_uint_reduce (test_sc_types.cpp:277:5) 

// Process-local variables
logic [3:0] u;

always_comb 
begin : sc_uint_reduce     // test_sc_types.cpp:277:5
    integer i;
    logic [1:0] x;
    logic [3:0] y;
    logic b;
    x = 0;
    y = 0;
    b = &x;
    b = |x;
    b = ^x || &y;
    b = ~&u | ~|x;
    b = &sig1;
    b = |sig1;
    b = ^sig1;
end

//------------------------------------------------------------------------------
// Method process: sc_variable_cast (test_sc_types.cpp:293:5) 

always_comb 
begin : sc_variable_cast     // test_sc_types.cpp:293:5
    integer i;
    logic b;
    logic [1:0] x;
    logic [3:0] y;
    x = 0;
    y = 0;
    x = 2'(y);
    x = 2'(y);
    x = 32'(y);
    x = signed'({1'b0, 32'(y)}) + signed'(64'(y)) + signed'(16'(y)) + signed'(8'(y)) + |y;
    x = 2'(y) + 2 * (-2'(y));
    x = 2'(x + y);
    x = 2'(y[3 : 1]);
    x = 2'(y);
end

//------------------------------------------------------------------------------
// Method process: sc_literal_cast (test_sc_types.cpp:312:5) 

always_comb 
begin : sc_literal_cast     // test_sc_types.cpp:312:5
    integer i;
    logic b;
    logic [1:0] x;
    logic [3:0] y;
    x = 2'd5;
    x = 2'd3 + |x;
    y = 1 + 2'(3 + 1);
end

//------------------------------------------------------------------------------
// Method process: sc_channel_cast (test_sc_types.cpp:320:5) 

always_comb 
begin : sc_channel_cast     // test_sc_types.cpp:320:5
    logic [1:0] x;
    x = 0;
    sig1 = 3'(in1) + 1'(out1);
    sig1 = 2'(sig1);
    x = |sig1 + signed'(32'(in1));
    sig1 = 2'(sig_arr[2]);
end

endmodule


