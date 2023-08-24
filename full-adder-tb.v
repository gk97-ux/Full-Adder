module FA_tb;
  reg a,b,cin;
  wire cout,s;
  integer i;
  FA uut(cout,s,a,b,cin);
  initial
    begin
      for(i=0;i<8;i++)
      begin
      {a,b,cin}=i;
      #10;
      end
    end
  initial
    begin
      $monitor("input a=%b, b=%b, cin=%b, Output s=%b cout=%b", a,b,cin,s,cout);
    end
  initial 
   begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
   end
endmodule