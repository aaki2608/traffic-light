`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2020 07:03:07 PM
// Design Name: 
// Module Name: tlight
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//a basic traffic light signal project with RED, YELLOW, and, GREEN Light 
// lights glow repeatdly with synchronism of the clock  
module tlight(clk,lig);
input clk;
output reg [0:2]lig;
parameter s0=0, s1=1,s2=2;
parameter r=3'b100, g=3'b010, y=3'b001;
reg [0:1] switch;
    always @(posedge clk)
// code for the state diagram    
    case (switch)
            s0: begin               //so is the RED light state
                lig<=g;
                switch<=s1;
                end
            s1: begin              //s1 is the GREEN light state
                lig<=y;
                switch<=s2;
                end
            s2: begin             //s2 is the YELLOW light state
                lig<=r;
                switch<=s0;
                end
            default 
                begin
                lig<=r;
                switch<=s0;
                end
     endcase                       
endmodule
