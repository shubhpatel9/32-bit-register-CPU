//Author Names: Anika Tasnim, Prakash Sharma, Shubh Patel
//Last Modified Date: 10/29/2020
//Compilation Status: “Successful” 
//Elaboration Status: “Successful” 
//Simulation Status: “Simulates correctly” 

module cpu_tb;

	wire[31:0] PC, IR, ALUOut, MDR, A, B, reg8;
	reg clock;
	
	CPU cpu1 (clock,PC, IR, ALUOut, MDR, A, B, reg8);// Instantiate CPU module  
	
	initial begin
		clock = 0;
		repeat (200) //buildong a waveform with 25 cycles
		  begin
			#1 clock = ~clock; //alternate clock signal
		  end
		$finish; 
	end
			
endmodule
