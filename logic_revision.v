module test_and_nand (a,b,e);
input wire a,b;
output wire e;
wire c,d;
nand(c,a,0);
nand(d,b,1);
nand(e,c,d);

endmodule


module test_or_nand (a,b,e);
input wire a,b;
output wire e;
wire c,d;
nand(c,a,1);
nand(d,b,1);
nand(e,c,d);


endmodule

module test_and_nor(a,b,e);
input wire a,b;
output wire e;
wire c,d;
nor(c,a,0);
nor(d,b,0);
nor(e,c,d);
endmodule

module test_nand_mux(a,b,c);
input wire a,b;
output wire c;
wire out1;
assign out1=(b==1)?0:1;
assign c=(a==1)?out1:1;

endmodule

module test_or_mux(a,b,c);
input wire a,b;
output wire c;
wire out1;
assign out1=(b==1)?1:0;
assign c=(a==0)?out1:1;

endmodule

module test_xor_mux(a,b,c);
input wire a,b;
output wire c;
wire out1;
assign out1=(a==1)?0:1;
assign c=(b==1)?0:out1;


endmodule

module test_halfadder_mux(a,b,sum,carry_out);
input wire a,b;
output wire sum,carry_out ;
wire out1,out2;
assign out1=(a==1)?0:1;
assign sum=(b==1)?out1:1;
assign out2=(a==1)?0:1;
assign carry_out=(b==1)?out2:0;




endmodule

module test_halfadder_decoder(a,b,s,c);
input wire a,b;
output wire s,c ;
wire[3:0]y;
assign y=(a==0&&b==0)?0001:(a==0&&b==1)?0010:(a==1&&b==0)?0100:(a==1&&b==1)?1000:0000;
assign s=y[2]|y[1];
assign c=y[3];





endmodule


module full_adder_4_1mux(a,b,s,cout,cin);
input wire a,b,cin;
output wire s,cout;
assign cout = ({a,b}==2'b00)?0:({a,b}==2'b01)?cin:({a,b}==2'b10)?cin:1;
assign s = ({a,b}==2'b00)?cin:({a,b}==2'b11)?cin:~cin;

endmodule



module fulladder_3_8decoder(a,b,cin,s,cout);
input wire a,b,cin;
output wire s,cout ;
wire [7:0]y;
assign y=8'b00000001<<{a,b,cin};
assign s=y[1]|y[2]|y[4]|y[7];
assign cout=y[3]|y[5]|y[6]|y[7];





endmodule




module xnor_buffer(in,out);
input wire in;
output wire out;
wire o;
xnor(o,in,0);
xnor(out,o,0);
endmodule















