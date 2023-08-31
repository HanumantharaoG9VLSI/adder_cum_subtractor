`timescale 1ns / 1ps



module addsub_4bit( sum,cout,a,b,cin);
output [3:0]sum;
output cout;
input [3:0]a,b;
input cin;
wire c0,c1,c2;
wire w1,w2,w3,w4;
xor (w1,b[0],cin);
xor (w2,b[1],cin);
xor (w3,b[2],cin);
xor (w4,b[3],cin);
full_adder FA0(sum[0],c0,a[0],w1,cin);
full_adder FA1(sum[1],c1,a[1],w2,c0);
full_adder FA2(sum[2],c2,a[2],w3,c1);
full_adder FA3(sum[3],cout,a[3],w4,c2);
endmodule
