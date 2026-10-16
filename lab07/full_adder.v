module full_adder(
    input A, B, Cin,
    output Y,
    output Cout
);

    assign Cout = (B & Cin)|(A & B) | (A & Cin);
    assign Y = (A ^ B ^ Cin);   
endmodule