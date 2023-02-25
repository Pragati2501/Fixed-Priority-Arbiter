`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:30:58 02/25/2023 
// Design Name: 
// Module Name:    fixed_priority_arbiter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fixed_priority_arbiter(output reg [3:0] GNT , input [3:0] REQ , input clk,reset );
always @(posedge clk or negedge reset)
//priority 3>1>0>2
begin
if(!reset)
GNT<= 4'b0000;
else if(REQ[3])
GNT<= 4'b1000;
else if(REQ[1])
GNT<= 4'b0100;
else if(REQ[0])
GNT<= 4'b0010;
else if(REQ[2])
GNT<= 4'b0001;
end


endmodule
