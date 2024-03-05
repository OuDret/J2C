//  |---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|
//-
//-     $_BUF (A, Y)
//-
//- A buffer. This cell type is always optimized away by the opt_clean pass.
//-
//- Truth table:    A | Y
//-                ---+---
//-                 0 | 0
//-                 1 | 1
//-
module BUF (A, Y);
input A;
output Y;
assign Y = A;
endmodule

//  |---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|
//-
//-     $_NOT (A, Y)
//-
//- An inverter gate.
//-
//- Truth table:    A | Y
//-                ---+---
//-                 0 | 1
//-                 1 | 0
//-
module NOT (A, Y);
input A;
output Y;
assign Y = ~A;
endmodule

//  |---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|
//-
//-     $_NAND (A, B, Y)
//-
//- A 2-input NAND gate.
//-
//- Truth table:    A B | Y
//-                -----+---
//-                 0 0 | 1
//-                 0 1 | 1
//-                 1 0 | 1
//-                 1 1 | 0
//-
module NAND (A, B, Y);
input A, B;
output Y;
assign Y = ~(A & B);
endmodule

//  |---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|
//-
//-     $_NOR (A, B, Y)
//-
//- A 2-input NOR gate.
//-
//- Truth table:    A B | Y
//-                -----+---
//-                 0 0 | 1
//-                 0 1 | 0
//-                 1 0 | 0
//-                 1 1 | 0
//-
module NOR (A, B, Y);
input A, B;
output Y;
assign Y = ~(A | B);
endmodule


//  |---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|
//-
//-     $_DFF_N (D, C, Q)
//-
//- A negative edge D-type flip-flop.
//-
//- Truth table:    D C | Q
//-                -----+---
//-                 d \ | d
//-                 - - | q
//-
module DFF_N (D, C, Q);
input D, C;
output reg Q;
always @(negedge C) begin
	Q <= D;
end
endmodule

//  |---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|
//-
//-     $_DFF_P (D, C, Q)
//-
//- A positive edge D-type flip-flop.
//-
//- Truth table:    D C | Q
//-                -----+---
//-                 d / | d
//-                 - - | q
//-
module DFF_P (D, C, Q);
input D, C;
output reg Q;
always @(posedge C) begin
	Q <= D;
end
endmodule

//  |---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|
//-
//-     $_DFF_NN0 (D, C, R, Q)
//-
//- A negative edge D-type flip-flop with negative polarity reset.
//-
//- Truth table:    D C R | Q
//-                -------+---
//-                 - - 0 | 0
//-                 d \ - | d
//-                 - - - | q
//-
module DFF_NN0 (D, C, R, Q);
input D, C, R;
output reg Q;
always @(negedge C or negedge R) begin
	if (R == 0)
		Q <= 0;
	else
		Q <= D;
end
endmodule

//  |---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|
//-
//-     $_DFF_NN1 (D, C, R, Q)
//-
//- A negative edge D-type flip-flop with negative polarity set.
//-
//- Truth table:    D C R | Q
//-                -------+---
//-                 - - 0 | 1
//-                 d \ - | d
//-                 - - - | q
//-
module DFF_NN1 (D, C, R, Q);
input D, C, R;
output reg Q;
always @(negedge C or negedge R) begin
	if (R == 0)
		Q <= 1;
	else
		Q <= D;
end
endmodule

//  |---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|
//-
//-     $_DFF_NP0 (D, C, R, Q)
//-
//- A negative edge D-type flip-flop with positive polarity reset.
//-
//- Truth table:    D C R | Q
//-                -------+---
//-                 - - 1 | 0
//-                 d \ - | d
//-                 - - - | q
//-
module DFF_NP0 (D, C, R, Q);
input D, C, R;
output reg Q;
always @(negedge C or posedge R) begin
	if (R == 1)
		Q <= 0;
	else
		Q <= D;
end
endmodule

//  |---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|
//-
//-     $_DFF_NP1 (D, C, R, Q)
//-
//- A negative edge D-type flip-flop with positive polarity set.
//-
//- Truth table:    D C R | Q
//-                -------+---
//-                 - - 1 | 1
//-                 d \ - | d
//-                 - - - | q
//-
module DFF_NP1 (D, C, R, Q);
input D, C, R;
output reg Q;
always @(negedge C or posedge R) begin
	if (R == 1)
		Q <= 1;
	else
		Q <= D;
end
endmodule

//  |---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|
//-
//-     $_DFF_PN0 (D, C, R, Q)
//-
//- A positive edge D-type flip-flop with negative polarity reset.
//-
//- Truth table:    D C R | Q
//-                -------+---
//-                 - - 0 | 0
//-                 d / - | d
//-                 - - - | q
//-
module DFF_PN0 (D, C, R, Q);
input D, C, R;
output reg Q;
always @(posedge C or negedge R) begin
	if (R == 0)
		Q <= 0;
	else
		Q <= D;
end
endmodule

//  |---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|
//-
//-     $_DFF_PN1 (D, C, R, Q)
//-
//- A positive edge D-type flip-flop with negative polarity set.
//-
//- Truth table:    D C R | Q
//-                -------+---
//-                 - - 0 | 1
//-                 d / - | d
//-                 - - - | q
//-
module DFF_PN1 (D, C, R, Q);
input D, C, R;
output reg Q;
always @(posedge C or negedge R) begin
	if (R == 0)
		Q <= 1;
	else
		Q <= D;
end
endmodule

//  |---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|
//-
//-     $_DFF_PP0 (D, C, R, Q)
//-
//- A positive edge D-type flip-flop with positive polarity reset.
//-
//- Truth table:    D C R | Q
//-                -------+---
//-                 - - 1 | 0
//-                 d / - | d
//-                 - - - | q
//-
module DFF_PP0 (D, C, R, Q);
input D, C, R;
output reg Q;
always @(posedge C or posedge R) begin
	if (R == 1)
		Q <= 0;
	else
		Q <= D;
end
endmodule

//  |---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|---v---|
//-
//-     $_DFF_PP1 (D, C, R, Q)
//-
//- A positive edge D-type flip-flop with positive polarity set.
//-
//- Truth table:    D C R | Q
//-                -------+---
//-                 - - 1 | 1
//-                 d / - | d
//-                 - - - | q
//-
module DFF_PP1 (D, C, R, Q);
input D, C, R;
output reg Q;
always @(posedge C or posedge R) begin
	if (R == 1)
		Q <= 1;
	else
		Q <= D;
end
endmodule

