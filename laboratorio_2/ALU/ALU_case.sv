module ALU_case #(parameter n=4)
					 (input logic [n-1:0] entrada1,  
					  input logic [n-1:0] entrada2, 
					  input logic [3:0] selector, 
					  output logic [3:0]resultado);
					  
	always @(selector,entrada1,entrada2)
	begin
		case(selector)
			4'b0000://aqui va suma
				begin
				end
			4'b0001: //aqui va resta
				begin
				end
			4'b0010: //aqui va multiplicacion
				begin
				end
			4'b0011://aqui va divicion
				begin
				end
			4'b0100:// modulo
				begin
				end
			4'b0101:// and
				begin
				end
			4'b0110://or
				begin
				end
			4'b0111://xor
				begin
				end
			4'b1000://shift left logic
				begin
				end
			4'b1001:// shift right logic
				begin
				end
		endcase
	end
					  
endmodule