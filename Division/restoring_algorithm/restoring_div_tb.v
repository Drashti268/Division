`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:13:12 05/31/2023
// Design Name:   restoring_div
// Module Name:   /home/ise/Desktop/Verilog/Division/restoring_div/restoring_div_tb.v
// Project Name:  restoring_div
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: restoring_div
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module restoring_div_tb;

	// Inputs
	reg [3:0] Q, M;

	// Outputs
	wire [3:0] Quo,Rem;

	// Instantiate the Unit Under Test (UUT)
	restoring_div uut (
		.Q(Q), .M(M), .Quo(Quo), .Rem(Rem));

	initial begin
		
		// Wait 100 ns for global reset to finish
		Q=4'b1111; M=4'b1100; #10;
		
	

	end
      
endmodule

