`timescale 1ns / 1ps

module fourbitshift(
    input clk,
    //menggeserkan tiap sinyal clock naik (rising)
    input rst,
    //mengatur semua bit menjadi 0 saat high
    input d_in,
    //menerima input 0 atau 1 dari d_in
    input en,
    
    output D,
    output C,
    output B,
    // Menyimpan data yang akan digeserkan
    output A
    //mengamati keluaran akhir di A
    );

reg Aps, Ans;
reg Bps, Bns;
reg Cps, Cns;
reg Dps, Dns;


//BLOCK MEMORY
always @(posedge clk, posedge rst)
    begin
        //mengatur semua bit menjadi 0
        if(rst == 1) //saat dia 'reset' high
            begin
            Aps <= 0;
            Bps <= 0; 
            Cps <= 0; 
            Dps <= 0;
        end
        //menggeser bit dari d_in->D->C->B->A
        else//jika 'reset' selain high (low)
            begin
            Aps <= Ans;
            Bps <= Bns;
            Cps <= Cns;
            Dps <= Dns;
        end
     end


//BLOCK STATE
always @(*)
    begin
    //default
        Ans <= Aps;
        Bns <= Bps;
        Cns <= Cps;
        Dns <= Dps;
    //process
    if(en == 1)
        begin
        Ans <= Bps;
        Bns <= Cps; 
        Cns <= Dps; 
        Dns <= d_in;
        end
    end


//BLOCK OUTPUT
assign A = Aps;
assign B = Bps;
assign C = Cps;
assign D = Dps;

endmodule
