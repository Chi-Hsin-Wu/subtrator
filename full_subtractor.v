`timescale 1ns / 1ps

module Full_Subtractor(
    In_A,
    In_B,
    Borrow_in,
    Difference,
    Borrow_out
);

input In_A;
input In_B;
input Borrow_in;
output Difference; 
output Borrow_out;

// implement full subtractor circuit, your code starts from here.
// use half subtractor in this module, fulfill I/O ports connection.

wire diff_0;
wire borr_0;

wire borr_1;

assign Borrow_out = borr_0 | borr_1;

Half_Subtractor HSUB_0 (
    .In_A(In_A), 
    .In_B(In_B), 
    .Difference(diff_0), 
    .Borrow_out(borr_0)
);

Half_Subtractor HSUB_1 (
    .In_A(diff_0),
    .In_B(Borrow_in), 
    .Difference(Difference), 
    .Borrow_out(borr_1)
);

endmodule