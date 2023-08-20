`timescale 1ns / 1ps
module non_res_div(Q,M,Quo,Rem);
input [7:0]Q,M;
output reg [7:0]Quo=0;
output reg [7:0]Rem=0;

reg [7:0]a1,b1;
reg [7:0]A;
integer i;

always @ (Q or M)
begin
 a1=Q;
 b1=M;
 A=0;
 for(i=0; i<8; i=i+1)
 begin
      if(A[7]==1)begin
		          A={A[6:0],a1[7]};
					 a1[7:1]=a1[6:0];
                A=A+b1;
					   if(A[7]==1)
						    a1[0]=0;
						else
						     a1[0]=1;
						end
		else begin
		            A={A[6:0],a1[7]};
					   a1[7:1]=a1[6:0];
                  A=A-b1;
					   if(A[7]==0)
						    a1[0]=1;
						else
						     a1[0]=0;
						end
end
if(A[7]==1)begin
          A=A+b1;
			 Quo=a1;
          Rem=A;
			 end
else begin
	  Quo=a1;
     Rem=A;
	  end


end
		
endmodule
