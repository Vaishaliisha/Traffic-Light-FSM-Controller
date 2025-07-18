// File: traffic_light.v
module traffic_light (
    input clk,
    input rst,
    output reg [2:0] lights  // 3-bit output: [Red, Yellow, Green]
);

    // State encoding
    typedef enum reg [1:0] {
        GREEN  = 2'b00,
        YELLOW = 2'b01,
        RED    = 2'b10
    } state_t;

    state_t current_state, next_state;

    reg [3:0] timer;  // 4-bit counter for timing simulation

    // State Register
    always @(posedge clk or posedge rst) begin
        if (rst)
            current_state <= RED;
        else if (timer == 4'd9)
            current_state <= next_state;
    end

    // Timer for state duration
    always @(posedge clk or posedge rst) begin
        if (rst)
            timer <= 4'd0;
        else if (timer == 4'd9)
            timer <= 4'd0;
        else
            timer <= timer + 1;
    end

    // Next state logic
    always @(*) begin
        case (current_state)
            RED:    next_state = GREEN;
            GREEN:  next_state = YELLOW;
            YELLOW: next_state = RED;
            default: next_state = RED;
        endcase
    end

    // Output logic: [Red, Yellow, Green]
    always @(*) begin
        case (current_state)
            RED:    lights = 3'b100;
            YELLOW: lights = 3'b010;
            GREEN:  lights = 3'b001;
            default: lights = 3'b000;
        endcase
    end

endmodule
