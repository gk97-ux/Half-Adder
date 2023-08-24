module HA_tb;
  reg a,b;
  wire c,s;
  integer i;
  HA uut(c,s,a,b);
  initial
  begin 
    for (i=0;i<4;i++)
    begin
      {a,b}=i;
      #10;
    end
  end
  initial
    begin
      $monitor("Input a=%b, b=%b, Output sum =%b, carry=%b", a,b,s,c);
    end
  initial 
   begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
   end
endmodule
