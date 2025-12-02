module tb_ram_sp_16bit;

    // Testbench signals
    reg clk;
    reg we;
    reg [7:0] addr;
    reg [15:0] din;
    wire [15:0] dout;

    // Instantiate the RAM module
    ram_sp_16bit uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .din(din),
        .dout(dout)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period
    end

    // Test stimulus
    initial begin
        // Initialize signals
        we = 0;
        addr = 0;
        din = 16'h0000;

        // Reset and initial state
        #10;

        // Write operations
        $display("--- Writing to RAM ---");
        we = 1; // Enable write
        addr = 8'h00; din = 16'hAAAA; #10;
        addr = 8'h01; din = 16'hBBBB; #10;
        addr = 8'h02; din = 16'hCCCC; #10;
        addr = 8'hFF; din = 16'hFFFF; #10;

        // Read operations
        $display("--- Reading from RAM ---");
        we = 0; // Enable read
        addr = 8'h00; #10; // Read from address 0, dout should be AAAA
        addr = 8'h01; #10; // Read from address 1, dout should be BBBB
        addr = 8'h02; #10; // Read from address 2, dout should be CCCC
        addr = 8'hFF; #10; // Read from address FF, dout should be FFFF

        // Write and then read immediately
        $display("--- Write and immediate Read ---");
        we = 1; addr = 8'h10; din = 16'h1234; #10; // Write 1234 to addr 10
        we = 0; addr = 8'h10; #10; // Read from addr 10, dout should be 1234

        // Finish simulation
        $finish;
    end

    // Monitor output for verification
    initial begin
        $monitor("Time=%0t, clk=%b, we=%b, addr=%h, din=%h, dout=%h",
                 $time, clk, we, addr, din, dout);
    end

endmodule
