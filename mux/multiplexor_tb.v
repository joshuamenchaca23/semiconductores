module multiplexor_tb();

reg A,B,C,D;
reg [1:0] Sel;
wire Y;

multiplexor DUT(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .Sel(Sel),
    .Y(Y)
);

initial begin

    A=0;
    B=1;
    C=0;
    D=1;

    // prueba A
    Sel = 2'b00;
    #10;

    // prueba B
    Sel = 2'b01;
    #10;

    // prueba C
    Sel = 2'b10;
    #10;

    // prueba D
    Sel = 2'b11;
    #10;

    $finish;
end

initial begin
    $monitor("A=%b, B=%b, C=%b, D=%b, Sel=%b, Y=%b",
              A,B,C,D,Sel,Y);
end

initial begin
    $dumpfile("multiplexor_tb.vcd");
    $dumpvars(0, multiplexor_tb);
end

endmodule