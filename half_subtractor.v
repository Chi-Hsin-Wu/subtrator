`timescale 1ns / 1ps

module xor_(
    i_a,
    i_b,
    o_c
);

input i_a;
input i_b;
output o_c;

assign o_c = i_a ^ i_b;

endmodule

module not_(
    i_a,
    o_b
);

input i_a;
output o_b;

assign o_b = ~ i_a;

endmodule

module and_(
    i_a,
    i_b,
    o_c
);

input i_a;
input i_b;
output o_c;

assign o_c = i_a & i_b;

endmodule

module Half_Subtractor(
    In_A,
    In_B,
    Difference,
    Borrow_out
);

input In_A;
input In_B;
output Difference; 
output Borrow_out;

wire not_A;
wire minus_A;

// implement half subtractor circuit, your code starts from here.
// gate(output, input1, input2)

xor_ xor0( In_A, In_B, Difference);
not_ not0( In_A, not_A);
and_ and0( In_B, not_A, Borrow_out);

endmodule