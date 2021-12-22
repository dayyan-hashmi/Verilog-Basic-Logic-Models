module SevenSegmentDisplay(w,x,y,z,a,b,c,d,e,f,g);
	
	output a,b,c,d,e,f,g;
	input w,x,y,z;
	
	assign a=( (~w&~x&~y&z) | (~w&x&~y&~z) | (w&~x&y&z) | (w&x&~y&z) );
	assign b=( (~w&x&~y&~z) | (x&y&~z) | (w&y&z) | (w&x&~z) );
	assign c=( (~w&~x&y&~z) | (w&x&~z) | (w&x&y) );
	assign d=( (~w&~x&~y&z) | (~w&x&~y&~z) | (x&y&z) | (w&~x&y&~z) );
	assign e=( (~w&z) | (~w&x&~y) | (~x&~y&z) );
	assign f=( (~w&~x&z) | (~w&~x&y) | (~w&y&z) | (w&x&~y&z) );
	assign g=( (~w&~x&~y) | (~w&x&y&z) | (w&x&~y&~z) );
	
endmodule

