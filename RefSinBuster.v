module RefSinBuster(
	input clock,
	input readyToOutput, //Start buster-synchrotron synchonosation
	output reg kickerOn,
	input [31:0] freq,
	output reg[15:0] toDAC,
	output reg  phaseSync //to RefSinSynchrotron 0-phase reference
);
endmodule 

module RefSinSynchrotron 
#(parameter GROUP_DELAY = 32'd500000) //ps
#(parameter SYNCHROTRON_INPUT_PHASE = 32'd90000) //miliGradus
#(parameter BUSTER_OUT_PHASE = 32'd500000) //miliGradus
(
	input clock,
	input readyToOutput,
	output reg kickerOn,	//
	input [31:0] freq,
	output reg[15:0] toDAC,
	input  phaseBusterRef //from RefSinBuster  0-phase reference
);
reg [31:0] fBuster;
reg [31:0] dTBuster;//dt = tout - tphase0 in Buster = fi_out_bu/omega_bu (bu == buster)
reg [31:0] dFiSynchrotron;
//calculate buster frequency
//calculate synchrotron frequency
//calculate delay 0-buster phase (DAC) and beam output dTBuster
//add dTBust and GROUP_DELAY
//calculate additional phaseSynchrotron shift dFiSynchrotron
//add dFiSynchrotron & SYNCHROTRON_INPUT_PHASE
//set synchrotron phase 





endmodule

module FreqCalc(
	input clock,
	input cycleStart,
	input [31:0] coilVlt,
	input [20:0] hallVlt,
	input [31:0] dPhase,
	input [31:0] [15:0] picUpVlt;
	output reg [31:0] freq,
	output reg beamReleased,
	output reg frReady
);
endmodule

module ResonatorVoltage(
	input clock,
	input cycleStart,
	input beamReleased,
	output [16:0] voltage,
	output vReady
);
endmodule

module BlockHanler
(
	input clock,
	input cucleStart,
	input doorOpen,
	input amplErr,
	input reflectionErr,
	input temperatureErr,
	input ready,
	output blocked,
	output reg [16:0] status,
);
endmodule