//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.7
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A_mod ()
//
module A_mod // "a_mod"
(
);

// SystemC signals
logic [3:0] s;

//------------------------------------------------------------------------------
// Method process: ref_const (test_const_binary.cpp:73:5) 

always_comb 
begin : ref_const     // test_const_binary.cpp:73:5
    logic [31:0] z;
    logic [3:0] RK;
    z = 0;
    RK = 'h34;
    z = {8'('h11), RK};
end

//------------------------------------------------------------------------------
// Method process: shorten_const (test_const_binary.cpp:86:5) 

always_comb 
begin : shorten_const     // test_const_binary.cpp:86:5
    logic [31:0] z;
    z = 'h2 + 1;
    assert (z == 3) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    z = {8'('h11), 4'('h2)};
    assert (z == 'h112) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    z = {4'('h2), 8'('h56)};
    assert (z == 'h256) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    z = {4'('h2), 4'd5};
    assert (z == 'h25) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    z = {4'('h2), 4'('h8)};
    assert (z == 'h28) else $error("Assertion failed at test_const_binary.cpp:44:24>");
end

//------------------------------------------------------------------------------
// Method process: big_shift (test_const_binary.cpp:46:5) 

always_comb 
begin : big_shift     // test_const_binary.cpp:46:5
    logic [130:0] a;
    logic [141:0] b;
    logic [138:0] c;
    logic [19:0] d;
    a = 131'd1 <<< 130;
    b = (signed'({1'b0, a}) + 3) <<< 10;
    c = b - a + 1;
    d = c >>> 120;
    assert (d == 'h7FC00) else $error("Assertion failed at test_const_binary.cpp:44:24>");
end

//------------------------------------------------------------------------------
// Method process: concat_const (test_const_binary.cpp:105:5) 

always_comb 
begin : concat_const     // test_const_binary.cpp:105:5
    logic [3:0] a;
    logic [15:0] b;
    logic [71:0] d;
    a = {2'd1, 2'd2};
    assert (a == 6) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    a = {2'(1 + 1), 2'd2};
    assert (a == 10) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    a = {3'd1, 1'd2};
    assert (a == 2) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    a = {3'd1, 1'd2};
    assert (a == 2) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    b = {8'('h11), 8'('h11)};
    assert (b == 'h1111) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    b = {8'('h11), 4'h11};
    assert (b == 'h111) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    b = {4'h11, 8'('h11)};
    assert (b == 'h111) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    b = {2'h11, 10'h11};
    assert (b == 'h411) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    d = {64'('h555), 8'('h11)};
    assert (d == 'h55511) else $error("Assertion failed at test_const_binary.cpp:44:24>");
end

//------------------------------------------------------------------------------
// Method process: concat_local_const (test_const_binary.cpp:139:5) 

always_comb 
begin : concat_local_const     // test_const_binary.cpp:139:5
    logic [31:0] b;
    logic [71:0] d;
    b = {2'd1, 8'('h11)};
    assert (b == 'h111) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    b = {{5'd4, 8'('h11)}, 4'd7};
    assert (b == 'h4117) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    b = {8'('h11), 8'('h11)};
    assert (b == 'h1111) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    b = {3'h11, 5'h11};
    assert (b == 'h31) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    d = {8'('h11), 12'('h222)};
    assert (d == 'h11222) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    d = {{64'('h555), 12'('h222)}, 8'('h11)};
    assert (d == 'h55522211) else $error("Assertion failed at test_const_binary.cpp:44:24>");
end

//------------------------------------------------------------------------------
// Method process: concat_const_var (test_const_binary.cpp:168:5) 

always_comb 
begin : concat_const_var     // test_const_binary.cpp:168:5
    logic [3:0] a;
    logic [7:0] b;
    logic [15:0] c;
    logic [15:0] d;
    logic [19:0] e;
    a = s;
    b = {2'd1, a};
    b = {a, 4'hFF};
    b = {a, 4'(254 + 1)};
    c = {b, 8'('h11)};
    c = {8'('h11), a};
    d = 11'h11;
    d = 11'(a);
    d = {11'h11, 3'(a)};
    d = {3'h11, 5'(a)};
    e = 11'('h11 + a * 2);
    e = 11'(3'h11 + (2 >>> 2));
    e = 7'(7'(a) + 14'h11);
end

//------------------------------------------------------------------------------
// Method process: concat_const_cast (test_const_binary.cpp:188:5) 

always_comb 
begin : concat_const_cast     // test_const_binary.cpp:188:5
    logic [15:0] a;
    logic [6:0] b;
    a = {8'(4'h55), 8'(4'h11)};
    assert (a == 'h501) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    a = {{1'd1, 6'(4'('h11 + 1))}, 6'(4'h11)};
    assert (a == 'h1081) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    b = 8'h555;
    assert (b == 'h55) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    b = 6'h555;
    assert (b == 'h15) else $error("Assertion failed at test_const_binary.cpp:44:24>");
end

endmodule


