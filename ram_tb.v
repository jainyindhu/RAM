`timescale 1ns/1ps

module ram_tb;

reg clk;
reg we;
reg [2:0] address;
reg [7:0] data_in;
wire [7:0] data_out;

// Instantiate RAM
ram uut (
    .clk(clk),
    .we(we),
    .address(address),
    .data_in(data_in),
    .data_out(data_out)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    // Generate waveform
    $dumpfile("ram.vcd");
    $dumpvars(0, ram_tb);

    // Monitor signals
    $monitor("Time=%0t | WE=%b | Address=%b | Data_In=%h | Data_Out=%h",
             $time, we, address, data_in, data_out);

    // Initial values
    clk = 0;
    we = 0;
    address = 0;
    data_in = 0;

    // Write 10H to address 000
    #2;
    we = 1;
    address = 3'b000;
    data_in = 8'h10;
    #10;

    // Write 20H to address 001
    address = 3'b001;
    data_in = 8'h20;
    #10;

    // Write 30H to address 010
    address = 3'b010;
    data_in = 8'h30;
    #10;

    // Write 40H to address 011
    address = 3'b011;
    data_in = 8'h40;
    #10;

    // Write 50H to address 100
    address = 3'b100;
    data_in = 8'h50;
    #10;

    // Write 60H to address 101
    address = 3'b101;
    data_in = 8'h60;
    #10;

    // Write 70H to address 110
    address = 3'b110;
    data_in = 8'h70;
    #10;

    // Write 80H to address 111
    address = 3'b111;
    data_in = 8'h80;
    #10;

    // Stop writing
    we = 0;

    // Read address 000
    address = 3'b000;
    #10;

    // Read address 001
    address = 3'b001;
    #10;

    // Read address 010
    address = 3'b010;
    #10;

    // Read address 011
    address = 3'b011;
    #10;

    // Read address 100
    address = 3'b100;
    #10;

    // Read address 101
    address = 3'b101;
    #10;

    // Read address 110
    address = 3'b110;
    #10;

    // Read address 111
    address = 3'b111;
    #10;

    $finish;
end

endmodule