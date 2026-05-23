module demux(
    input E, 
    input [1:0] sel, 
    output reg s1, s2, s3, s4 

);

always@(*) 
    begin 
        s1=0; s2=0; s3=0; s4=0;
        case(sel)
            2'b00: s1 = E;
            2'b01: s2 = E;
            2'b10: s3 = E;
            2'b11: s4 = E;
        endcase 

    end 

endmodule 