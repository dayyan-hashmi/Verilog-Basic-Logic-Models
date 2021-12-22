module 3to8LineDecoder(x,y,z,a,b,c,d,e,f,g,h);
	
	input x,y,z;
	output a,b,c,d,e,f,g,h;

	assign a= (~x & ~y & ~z);
	assign b= (~x & ~y & z);
	assign c= (~x & y & ~z);
	assign d= (~x & y & z);
	assign e= (x & ~y & ~z);
	assign f= (x & ~y & z);
	assign g= (x & y & ~z);
	assign h= (x & y & z);
	
endmodule