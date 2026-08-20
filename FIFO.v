module fifo(
    input clk,
    input reset,
    input write_en,
    input read_en,
    input [7:0] data_in,
    output reg [7:0]data_out,
    output full,
    output empty
    );

reg [7:0] mem [0:3];
reg [1:0] rd_ptr;
reg [1:0] wr_ptr;
reg [2:0] count;

assign empty= (count==0);
assign full= (count==4);


always@(posedge clk)
begin

if(reset)
begin
rd_ptr<=0;
wr_ptr<=0;
count<=0;
data_out<=0;
end

else  begin

if(write_en && !full)
begin
mem[wr_ptr]<=data_in;
wr_ptr<=wr_ptr+1;
end

if(read_en&& !empty)
begin
data_out<=mem[rd_ptr];
rd_ptr<=rd_ptr+1;
end

if ((write_en && !full) && !(read_en && !empty))
count <= count + 1;

else if ((read_en && !empty) && !(write_en && !full))
 count <= count - 1;

end

end
endmodule