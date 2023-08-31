`timescale 1ns / 1ps



module addsub_4bit_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
addsub_4bit  utt( sum,cout,a,b,cin); 
initial begin

a=4'd10; b=4'd10; cin=0;
#100
a=4'd10; b=4'd10; cin=1;

end 
endmodule
