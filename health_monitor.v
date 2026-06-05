module health_monitor(
    input clk,
    input reset,
    input pulse_in,
    output reg alert,
    output reg [7:0] bpm
);

reg pulse_prev;
reg [31:0] counter;
reg [7:0] beat_count;

parameter CLK_FREQ = 100000000;

always @(posedge clk)
begin
    if(reset)
    begin
        pulse_prev <= 0;
        beat_count <= 0;
        counter <= 0;
        bpm <= 0;
        alert <= 0;
    end
    else
    begin

        if(pulse_in && !pulse_prev)
            beat_count <= beat_count + 1;

        pulse_prev <= pulse_in;

        if(counter >= CLK_FREQ)
        begin
            bpm <= beat_count * 60;
            beat_count <= 0;
            counter <= 0;
        end
        else
        begin
            counter <= counter + 1;
        end

        if(bpm < 50 || bpm > 110)
            alert <= 1;
        else
            alert <= 0;

    end
end

endmodule