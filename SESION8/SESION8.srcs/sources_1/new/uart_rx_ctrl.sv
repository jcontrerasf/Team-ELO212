module uart_rx_ctrl
//#(parameter
//	param1 = < value > ,
//	param2 = < value > )
(
	input 	logic clock, reset, rx_ready,
	output logic [2:0] RGB, //rojo verde azul
	output logic [4:0] save_reg,
	output logic [1:0] mostrar,  //indica lo que se debe mostrar en los display
	output logic send_result //indica si se env�ar� el resultado del ALU
	);

 //Declarations:------------------------------
 

 //FSM states type:
 enum logic [4:0] {Wait_OP1_LSB, Store_OP1_LSB, Wait_OP1_MSB, Store_OP1_MSB, Wait_OP2_LSB, Store_OP2_LSB, Wait_OP2_MSB, Store_OP2_MSB, Wait_CMD, Store_CMD, Delay_1_cycle, Trigger_TX_result} state, next_state;

 //Statements:--------------------------------

 //FSM state register:
always@(posedge clock or posedge reset)
    	if(reset)
    		state <= Wait_OP1_LSB;
    	else
    		state <= next_state;

 //FSM combinational logic:
 always_comb begin
 
 RGB = 3'b000; //led rgb apagado
 next_state = state;
 save_reg = 5'b00000;
 mostrar = 2'b00;
 send_result = 1'b0;
 
	case (state)
		Wait_OP1_LSB: begin
		RGB = 3'b001;
		mostrar = 2'b11;
            if(rx_ready) begin
               next_state = Store_OP1_LSB;
               end
		end
 
		Store_OP1_LSB: begin
		  next_state = Wait_OP1_MSB;
		  save_reg = 5'b00001;
		end
 
		Wait_OP1_MSB: begin
		RGB = 3'b011;
			if(rx_ready) begin
	           next_state = Store_OP1_MSB;
	           end
		end
		
		Store_OP1_MSB: begin
		  next_state = Wait_OP2_LSB;
		  save_reg = 5'b00010;
		end
		
		Wait_OP2_LSB: begin
		mostrar = 2'b01;
		RGB = 3'b010;
		  if(rx_ready)
		      next_state = Store_OP2_LSB;
		end
		
		Store_OP2_LSB: begin
		  next_state = Wait_OP2_MSB;
		  save_reg = 5'b00100;
		end
		
		Wait_OP2_MSB: begin
		RGB = 3'b110;
		  if(rx_ready)
		      next_state = Store_OP2_MSB;
		end
		
		Store_OP2_MSB: begin
		  next_state = Wait_CMD;
		  save_reg = 5'b01000;
		end
		
		Wait_CMD: begin
		RGB = 3'b100;
		mostrar = 2'b10;
		  if(rx_ready)
		      next_state = Store_CMD;
		end
		
		Store_CMD: begin
		  next_state = Delay_1_cycle;
		  save_reg = 5'b10000;
		end
		
		Delay_1_cycle: begin
		  next_state = Trigger_TX_result;
		end
		
		Trigger_TX_result: begin
		  next_state = Wait_OP1_LSB;
		  send_result = 1'b1;
		end
		
	endcase
end
 endmodule