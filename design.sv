module mux_2x1(
  input i0, i1,
  input s,
  output y
);
  
  assign y = s?i1:i0;
  
endmodule