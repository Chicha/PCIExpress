`timescale 1ns / 1ps


module led_test (
               // inputs:
                  clk,
                  led
             );
             
//===========================================================================
// PORT declarations
//===========================================================================
input clk;
output [7:0] led;

reg [31:0] timer;
reg [7:0] led;



  always @(posedge clk )
    begin
      if (timer == 200000000)
          timer <= 0;
      else
          timer <= timer + 1;          
    end


  always @(posedge clk )
    begin
      if (timer == 25000000)
          led <= 8'b01111111;
      else if (timer == 50000000)
          led <= 8'b10111111;
      else if (timer == 75000000)
          led <= 8'b11011111;                              
      else if (timer == 100000000)
          led <= 8'b11101111;   
      else if (timer == 125000000)
          led <= 8'b11110111;
      else if (timer == 150000000)
          led <= 8'b11111011;                              
      else if (timer == 175000000)
          led <= 8'b11111101;   
      else if (timer == 200000000)
          led <= 8'b11111110;  			 
    end
    
endmodule

