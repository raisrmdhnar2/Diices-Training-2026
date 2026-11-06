`timescale 1ns / 1ps

module shift_register_4bit(
    input  wire clk,
    input  wire rst,
    input  wire d_in,
    input  wire en,
    output wire D,
    output wire C,
    output wire B,
    output wire A
);

    reg Aps, Ans;
    reg Bps, Bns;
    reg Cps, Cns;
    reg Dps, Dns;

    // BLOCK MEMORY (Sequential)
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            Aps <= 1'b0;
            Bps <= 1'b0; 
            Cps <= 1'b0; 
            Dps <= 1'b0;
        end else begin
            Aps <= Ans;
            Bps <= Bns;
            Cps <= Cns;
            Dps <= Dns;
        end
    end

    // BLOCK STATE (Combinational - gunakan blocking assignment '=')
    always @(*) begin
        // default value
        Ans = Aps;
        Bns = Bps;
        Cns = Cps;
        Dns = Dps;
        
        // update saat enable aktif
        if (en) begin
            Ans = Bps;
            Bns = Cps; 
            Cns = Dps; 
            Dns = d_in;
        end
    end

    // BLOCK OUTPUT
    assign A = Aps;
    assign B = Bps;
    assign C = Cps;
    assign D = Dps;

endmodule