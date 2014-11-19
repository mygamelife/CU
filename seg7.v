module seg7(input [3:0] SW, output [6:0] HEX3);

wire [3:0] in;
reg [6:0] out;

assign in = SW;
assign HEX3 = out;

always@(in)
case(in)

	// Display 0
	4'b0000:
		out = 7'b1000000;
	// Display 1
	4'b0001:
		out = 7'b1111001;
	// Display 2
	4'b0010:
		out = 7'b0100100;
	// Display 3
	4'b0011:
		out = 7'b0110000;
	// Display 4
	4'b0100:
		out = 7'b0011001;
	// Display 5
	4'b0101:
		out = 7'b0010010;
	// Display 6
	4'b0110:
		out = 7'b0000010;
	// Display 7
	4'b0111:
		out = 7'b1111000;
	// Display 8
	4'b1000:
		out = 7'b0000000;
	// Display 9
	4'b1001:
		out = 7'b0010000;
	// Display A
	4'b1010:
		out = 7'b0001000;
	// Display B
	4'b1011:
		out = 7'b0000011;
	// Display C
	4'b1100:
		out = 7'b1000110;
	// Display D
	4'b1101:
		out = 7'b0100001;
	// Display E
	4'b1110:
		out = 7'b0000110;
	// Display F
	4'b1111:
		out = 7'b0001110;
	
	default:
		out = 7'b1111111;

endcase
endmodule
	
	