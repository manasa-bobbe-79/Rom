//====================================================
// Testbench for 16 x 8 ROM
// File: rom_tb.v
//====================================================

`timescale 1ns/1ps

module rom_tb;

    reg  [3:0] addr;
    wire [7:0] data;

    integer errors;

    // Instantiate ROM
    rom DUT (
        .addr(addr),
        .data(data)
    );

    // Self-checking task
    task check_rom;
        input [3:0] address;
        input [7:0] expected;

        begin
            addr = address;
            #1;

            if (data !== expected) begin

                $display("FAIL: Address=%h Expected=%h Actual=%h",
                         address, expected, data);

                errors = errors + 1;

            end
            else begin

                $display("PASS: Address=%h Expected=%h Actual=%h",
                         address, expected, data);

            end
        end
    endtask

    initial begin

        errors = 0;

        // Generate waveform
        $dumpfile("rom.vcd");
        $dumpvars(0, rom_tb);

        $display("========================================");
        $display("          16 x 8 ROM TESTBENCH");
        $display("========================================");

        // Test all ROM addresses

        check_rom(4'h0, 8'hA5);
        check_rom(4'h1, 8'h3C);
        check_rom(4'h2, 8'h7E);
        check_rom(4'h3, 8'h19);

        check_rom(4'h4, 8'hD2);
        check_rom(4'h5, 8'h4B);
        check_rom(4'h6, 8'hF0);
        check_rom(4'h7, 8'h86);

        check_rom(4'h8, 8'h25);
        check_rom(4'h9, 8'hB7);
        check_rom(4'hA, 8'h5D);
        check_rom(4'hB, 8'hE1);

        check_rom(4'hC, 8'h38);
        check_rom(4'hD, 8'h92);
        check_rom(4'hE, 8'h6F);
        check_rom(4'hF, 8'hCA);

        // Final result

        $display("========================================");

        if (errors == 0)
            $display("ALL TEST CASES PASSED!");
        else
            $display("TEST FAILED: %0d ERROR(S)", errors);

        $display("========================================");

        $finish;

    end

endmodule