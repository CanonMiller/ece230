
module ones_compliment(
    input  [3:0] A,
    input  [3:0] B, 
    output [3:0] Y 
);

    wire [3:0] B_inv = ~B;
    wire [3:0] carry;
    
    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin
            full_adder fa (
                .A    (A[i]),
                .B    (1'b0),
                .Cin  (carry[i-1]),
                .Y    (Y[i]),
                .Cout (carry[i])
            );
        end
    endgenerate
    

endmodule