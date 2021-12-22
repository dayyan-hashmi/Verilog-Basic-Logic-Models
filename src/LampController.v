module LampController(xl,x2,f);
	input x1,x2;
	output f;
	wire w1,w2,w3,w4;
	
	not #(10) G1 (w1,x1);
	not #(10) G2 (w2,x2);
	and #(30) G3 (w3,w2,x1);
	and #(30) G4 (w4,w1,x2);
	or  #(20) G5 (f,w4,w3);
endmodule

	