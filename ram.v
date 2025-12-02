module ram_sp_16bit (
    input wire clk,
    input wire we,          // Write enable (1 for write, 0 for read)
    input wire [7:0] addr,  // 8-bit address for 256 locations
    input wire [15:0] din,  // 16-bit input data
    output reg [15:0] dout   // 16-bit output data
);

    // Declare memory array
    reg [15:0] mem [0:255]; // 256 locations, each storing 16 bits

    // Synchronous operations
    always @(posedge clk) begin
        if (we) begin
            // Write operation
            mem[addr] <= din;
        end else begin
            // Read operation
            dout <= mem[addr];
        end
    end

endmodule
