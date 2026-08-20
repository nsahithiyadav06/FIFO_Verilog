`timescale 1ns/1ps

module fifo_tb;

    reg clk;
    reg reset;
    reg write_en;
    reg read_en;
    reg [7:0] data_in;

    wire [7:0] data_out;
    wire full;
    wire empty;
fifo dut (
    .clk(clk),
    .reset(reset),
    .write_en(write_en),
    .read_en(read_en),
    .data_in(data_in),
    .data_out(data_out),
    .full(full),
    .empty(empty)
    );
always #5 clk = ~clk;

initial begin
$dumpfile("fifo.vcd");
$dumpvars(0, fifo_tb);
end

initial begin
    clk      = 0;
    reset    = 1;
    write_en = 0;
    read_en  = 0;
    data_in  = 0;
    #10;
    reset=0;

 data_in = 8'd10;//write
        write_en = 1;
        #10;
 data_in = 8'd20;
        write_en = 1;
        #10;
 data_in = 8'd30;
        write_en = 1;
        #10;
data_in = 8'd40;
        write_en = 1;
        #10;
write_en=0;
#10;

read_en = 1;//read
#10;

#10;

#10;

#10;
read_en = 0;

data_in = 50;
write_en = 1;
read_en = 1;
#10;

write_en = 0;
read_en = 0;
#10;


$finish;
end

initial begin
$monitor("T=%0t | W=%b R=%b | IN=%d OUT=%d | COUNT=%d | FULL=%b EMPTY=%b",
$time, write_en, read_en,data_in, data_out, dut.count, full, empty);
end
endmodule