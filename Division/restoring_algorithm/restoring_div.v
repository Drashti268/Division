module restoring_div(Q,M,Quo,Rem);
input [3:0]Q,M;           //M=Divisor Q=Dividend
output reg [3:0]Quo=0;
output reg [3:0]Rem=0;;

reg [4:0]a1,b1;         //a1=Quotient //b1=Divisor
reg [4:0]A;
integer i;

always @ (Q or M)
begin
    a1=Q;
	 b1=M;
	 A=0;
for(i=0; i<5; i=i+1)
begin
A={A[3:0],a1[4]};
a1[4:1]=a1[3:0];
A=A-b1;
if(A[4]==1)
           begin
			       a1[0]=0;
			       A=A+b1;
			  end
else
    a1[0]=1;
end
Quo= a1;
Rem= A;
end
endmodule
