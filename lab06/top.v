module top(
    input [7:0]sw,
    output [5:0]led
);
  wire carry;
  light light_inst(
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .stair_light(led[0])
 );
 
 adder single_inst(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .Carry(led[2])
 );
 
 full_adder f0 (
        .A(sw[4]),
        .B(sw[6]),
        .Y(led[3]),
        .Cin(1'b0),
        .Cout(carry)
 );
    
 full_adder f1 (
      .A(sw[5]),
        .B(sw[7]),
        .Y(led[4]),
        .Cin(carry),
        .Cout(led[5])
 );
endmodule