module MaquinaEstadoSimple(
    input  clk, rst_a,
    output reg [3:0] led
);

reg [2:0] current_state, next_state;


parameter   S0 = 0,
            S1 = 1,
            S2 = 2,
            S3 = 3,
            S4 = 4,
            S5 = 5;

always @(posedge clk or negedge rst_a) 
begin
    if (!rst_a) 
    begin
        current_state <= S0;    
    end    
    else
    begin
        current_state <= next_state;
    end
end

always @(current_state) 
begin
    case (current_state)
        S0:
        begin
            next_state = S1;
            led = 4'b1111;
        end
        S1:
        begin
            next_state = S2;
            led = 4'b1010; 
        end 
        S2:
        begin
            next_state = S3;
            led = 4'b0101;
        end 
        S3:
        begin
            next_state = S4;
            led = 4'b0000;
        end 
        S4:
        begin
            next_state = S5;
            led = 4'b1110;
        end 
        S5:
        begin
            next_state = S0;
            led = 4'b0111;
        end 
        default: 
        begin
            next_state = S0;         
        end
    endcase    
end

endmodule