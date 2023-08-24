module FA(cout,s,a,b,cin);
  input a,b,cin;
  output cout,s;
  assign s= a^b^cin;
  assign cout= (a^b)&cin|(a&b);
endmodule