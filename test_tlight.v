`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2020 07:16:39 PM
// Design Name: 
// Module Name: test_tlight
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

// test bench for the traffic light
module test_tlight();
reg clock;
wire [0:2]light;
    tlight l1(clock,light);
always #5 clock=~clock;
initial
    begin
        clock=1'b0;
        #100 $finish;
    end
initial 
        $monitor ($time, "rgy= %b",light);             
endmodule
