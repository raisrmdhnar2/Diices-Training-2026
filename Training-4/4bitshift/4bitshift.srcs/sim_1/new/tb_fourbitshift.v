
`timescale 1ns / 1ps

module tb_fourbitshift;

    // Testbench inputs
    reg clk;
    reg rst;
    reg d_in;
    reg en;

    // Testbench outputs
    wire D, C, B, A;

    // DUT (Design Under Test)
    fourbitshift uut (
        .clk(clk),
        .rst(rst),
        .d_in(d_in),
        .en(en),
        .D(D),
        .C(C),
        .B(B),
        .A(A)
    );

    // Clock generation: periode 10 ns
    always #20 clk = ~clk;

    // Stimulus
    initial begin

        // Inisialisasi
        clk  = 0;
        rst  = 0;
        d_in = 0;
        en   = 0;

        $display("======================================");
        $display("       FOUR BIT SHIFT REGISTER");
        $display("======================================");
        $display("Time | rst | en | d_in | D C B A");
        $display("--------------------------------------");

        // 1. RESET
        #2 rst = 1;
        #10 rst = 0;

        // 2. Masukkan bit pertama: 1
        #3 en = 1;
           d_in = 1;

        #10 d_in = 0;

        // 3. Masukkan bit kedua: 0
        #10 d_in = 1;

        // 4. Masukkan bit ketiga: 1
        #10 d_in = 0;

        // 5. Masukkan bit keempat: 0
        #10 d_in = 1;

        // 6. Masukkan bit kelima: 1
        #10 d_in = 1;

        // 7. Nonaktifkan enable
        #10 en = 0;
           d_in = 0;

        // 8. Tunggu beberapa clock
        #30;

        // 9. Aktifkan kembali enable
        en = 1;
        d_in = 0;

        #10 d_in = 1;
        #10 d_in = 0;

        // 10. Reset saat rangkaian berjalan
        #5 rst = 1;
        #2;

        // 11. Lepaskan reset
        rst = 0;
        #20;

        $display("--------------------------------------");
        $display("Simulation Finished");
        $finish;
    end

    // Monitor output setiap perubahan
    always @(negedge clk) begin
        $display("%4t |  %b  | %b  |  %b   | %b %b %b %b",
                 $time, rst, en, d_in, D, C, B, A);
    end

    // Generate waveform
    initial begin
        $dumpfile("fourbitshift.vcd");
        $dumpvars(0, tb_fourbitshift);
    end

endmodule
