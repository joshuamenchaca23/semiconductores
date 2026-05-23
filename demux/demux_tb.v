module demux_tb(); 
    reg E;
    reg [1:0] sel;

    wire s1,s2,s3,s4;

    demux DUT( 
        .E(E),
        .sel(sel),
        .s1(s1),
        .s2(s2),
        .s3(s3),
        .s4(s4)
    );

    initial begin 
        E=1;
        
        //prueba s1
        sel= 2'b00; 
        #10; 
        //prueba s2
        sel= 2'b01;
        #10;
        //prueba s3
        sel= 2'b10;
        #10;
        //prueba s4
        sel= 2'b11;
        #10;
        E=0;
        #10;
        $finish; 
    end

initial begin 
    $monitor("E=%b, sel=%b, s1=%b, s2=%b, s3=%b, s4=%b", E,sel,s1,s2,s3,s4);
end
initial begin 
    $dumpfile("demux_tb.vcd");
    $dumpvars(0,demux_tb);
end
endmodule
