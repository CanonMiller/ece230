module maxterm (
    input A, B, C, D,
    output Y
);

assign Y = (C | D | B) & (~D | ~B) & (~D | ~A);
endmodule