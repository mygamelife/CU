module CU_tb;

//set input as register and output as wires
reg Enter, Clock, Reset, Aeq0, Apos;
reg [7:5]IR;			
wire IRload, JMPmux, PCload, Meminst, MemWr, Aload, Sub, Halt;
wire [3:0]CheckState;
wire [1:0]Asel; 

//instantiate design code
CU CU_tb(IRload, JMPmux, PCload, Meminst,
			             MemWr, Asel, Aload, Sub, Halt, CheckState,
			             Enter, Reset, Clock, IR, Aeq0, Apos);

initial Clock = 0;
//Clock pulse generator
always #10 Clock = ~Clock;
//test vectors start here
initial
begin
//initialize all inputs
#0 Enter = 1'b0; Reset = 1'b0; IR = 3'b000; Aeq0 = 1'b0; Apos = 1'b0;
#80 Enter = 1'b0; Reset = 1'b0; IR = 3'b001; Aeq0 = 1'b0; Apos = 1'b0;
#160 Enter = 1'b0; Reset = 1'b0; IR = 3'b010; Aeq0 = 1'b0; Apos = 1'b0;
#240 Enter = 1'b0; Reset = 1'b0; IR = 3'b011; Aeq0 = 1'b0; Apos = 1'b0;
#320 Enter = 1'b0; Reset = 1'b0; IR = 3'b100; Aeq0 = 1'b0; Apos = 1'b0;
#400 Enter = 1'b1; Reset = 1'b0; IR = 3'b100; Aeq0 = 1'b0; Apos = 1'b0;
#500 Enter = 1'b0; Reset = 1'b0; IR = 3'b101; Aeq0 = 1'b1; Apos = 1'b0;
#560 Enter = 1'b0; Reset = 1'b0; IR = 3'b110; Aeq0 = 1'b0; Apos = 1'b1;
#640 Enter = 1'b0; Reset = 1'b0; IR = 3'b111; Aeq0 = 1'b0; Apos = 1'b0;
#720 $finish; 
end

endmodule