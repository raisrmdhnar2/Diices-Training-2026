`timescale 1ns / 1ps

module tb_shift_register_4bit;

    // Testbench inputs
    reg clk;
    reg rst;
    reg d_in;
    reg en;

    // Testbench outputs
    wire D, C, B, A;

    // DUT (Design Under Test)
    shift_register_4bit uut (
        .clk(clk),
        .rst(rst),
        .d_in(d_in),
        .en(en),
        .D(D),
        .C(C),
        .B(B),
        .A(A)
    );

    // Clock generation: Periode = 10 ns (Half period = 5 ns)
    always #5 clk = ~clk;

    // Stimulus
    initial begin
        // Inisialisasi awal
        clk  = 0;
        rst  = 0;
        d_in = 0;
        en   = 0;

        $display("======================================");
        $display("       FOUR BIT SHIFT REGISTER");
        $display("======================================");
        $display("Time | rst | en | d_in | D C B A");
        $display("--------------------------------------");

        // 1. Reset awal (2 siklus clock)
        @(negedge clk);
        rst = 1;
        repeat (2) @(negedge clk);
        rst = 0;

        // 2. Aktifkan Enable
        en = 1;

        // Kirim bit pertama (1) -> Target mencapai register A setelah 4 clock
        // T0: Input 1
        @(negedge clk);
        d_in = 1;  // Clock 1: D=1, C=0, B=0, A=0

        // Kirim bit kedua (0)
        @(negedge clk);
        d_in = 0;  // Clock 2: D=0, C=1, B=0, A=0

        // Kirim bit ketiga (1)
        @(negedge clk);
        d_in = 1;  // Clock 3: D=1, C=0, B=1, A=0

        // Kirim bit keempat (0) -> Pada posedge berikutnya bit pertama (1) TIBA DI REGISTER A
        @(negedge clk);
        d_in = 0;  // Clock 4: D=0, C=1, B=0, A=1 (Bit pertama sampai di A!)

        // 3. Biarkan bergeser beberapa siklus lagi untuk mengamati aliran data
        repeat (4) @(negedge clk);

        // 4. Nonaktifkan enable untuk membuktikan data tertahan (freeze)
        en = 0;
        d_in = 1;
        repeat (3) @(negedge clk);

        // 5. Uji reset saat operasi
        rst = 1;
        @(negedge clk);
        rst = 0;
        repeat (2) @(negedge clk);

        $display("--------------------------------------");
        $display("Simulation Finished");
        $finish;
    end

    // Monitor output pada falling edge agar nilai stabil
    always @(negedge clk) begin
        $display("%4t |  %b  | %b  |  %b   | %b %b %b %b",
                 $time, rst, en, d_in, D, C, B, A);
    end

    // Generate waveform VCD
    initial begin
        $dumpfile("shift_register_4bit.vcd");
        $dumpvars(0, tb_shift_register_4bit);
    end

endmodule