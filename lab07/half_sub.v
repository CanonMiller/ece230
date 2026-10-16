module half_sub(
    input A, B,
    output Y,
    output borrow
);

    assign borrow = (~A & B);
    assign Y = (A ^ B);
endmodule