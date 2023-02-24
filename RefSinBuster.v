module RefSinBuster(
	input clock,
	input readyToOutput, //Start buster-synchrotron synchonosation
	output reg kickerOn,
	input [31:0] freq,
	output reg[15:0] toDAC,
	output reg  phaseSync //to RefSinSynchrotron 0-phase reference
);

endmodule 

module RefSinSynchrotron (
	input clock,
	input readyToOutput,        //
	input [31:0] freq,
	output reg[15:0] toDAC,
	input  phaseBusterRef //from RefSinBuster  0-phase reference
);
endmodule

module FreqCalc(
	input clock,
	input [31:0] coilVlt,
	input [20:0] hallVlt,
	input [31:0] dPhase,
	input [31:0] [15:0] picUpVlt;
	output [31:0] freq,
);
endmodule