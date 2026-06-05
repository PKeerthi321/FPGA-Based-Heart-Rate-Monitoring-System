`timescale 1ns / 1ps

module health_monitor_tb;

reg clk;
reg reset;
reg pulse_in;

wire alert;
wire [7:0] bpm;

health_monitor uut(
    .clk(clk),
    .reset(reset),
    .pulse_in(pulse_in),
    .alert(alert),
    .bpm(bpm)
);

initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial
begin

    reset = 1;
    pulse_in = 0;

    #20;
    reset = 0;

    repeat(20)
    begin
        #100 pulse_in = 1;
        #10 pulse_in = 0;
    end

    #1000;

    $finish;

end

endmodule