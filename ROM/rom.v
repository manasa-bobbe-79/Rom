//====================================================
// 16 x 8 ROM
// File: rom.v
//====================================================

module rom (
    input  wire [3:0] addr,
    output reg  [7:0] data
);

    always @(*) begin
        case (addr)

            4'h0: data = 8'hA5;
            4'h1: data = 8'h3C;
            4'h2: data = 8'h7E;
            4'h3: data = 8'h19;

            4'h4: data = 8'hD2;
            4'h5: data = 8'h4B;
            4'h6: data = 8'hF0;
            4'h7: data = 8'h86;

            4'h8: data = 8'h25;
            4'h9: data = 8'hB7;
            4'hA: data = 8'h5D;
            4'hB: data = 8'hE1;

            4'hC: data = 8'h38;
            4'hD: data = 8'h92;
            4'hE: data = 8'h6F;
            4'hF: data = 8'hCA;

            default: data = 8'h00;

        endcase
    end

endmodule