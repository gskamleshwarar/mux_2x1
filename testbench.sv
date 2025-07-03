module mux_2x1_tb();
  
  reg i0, i1, s;
  wire y;
  
    mux_2x1 dut(
      .i0(i0),
      .i1(i1),
      .s(s),
      .y(y)
    );
	
  initial begin 
    
     $dumpfile("dump.vcd");
  	 $dumpvars;  
//   		i0 = 0; i1 = 0; s = 0;  // 000
//     #10 i0 = 0; i1 = 0; s = 1;  // 001
//     #10 i0 = 0; i1 = 1; s = 0;  // 010
//     #10 i0 = 0; i1 = 1; s = 1;  // 011
//     #10 i0 = 1; i1 = 0; s = 0;  // 100
//     #10 i0 = 1; i1 = 0; s = 1;  // 101
//     #10 i0 = 1; i1 = 1; s = 0;  // 110
//     #10 i0 = 1; i1 = 1; s = 1;  // 111
//     #10 $finish();
    
    repeat(15) begin
    i0= $random; i1=$random; s=$random;
    #10;
    end
  end
  
endmodule