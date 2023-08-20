`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:13:55 05/31/2023
// Design Name:   non_res_div
// Module Name:   /home/ise/Desktop/Verilog/Division/non_res_div/non_res_div_tb.v
// Project Name:  non_res_div
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: non_res_div
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module non_res_div_tb;

	// Inputs
	reg [7:0] Q;
	reg [7:0] M;

	// Outputs
	wire [7:0] Quo;
	wire [7:0] Rem;

	// Instantiate the Unit Under Test (UUT)
	non_res_div uut (
		.Q(Q), 
		.M(M), 
		.Quo(Quo), 
		.Rem(Rem)
	);

	initial begin
		// Initialize Inputs
	   Q=8'b00001111; M=8'b00001110; #10;
        
		// Add stimulus here

	end
      
endmodule

