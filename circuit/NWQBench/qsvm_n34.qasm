OPENQASM 2.0;
include "qelib1.inc";
qreg q0[34];
creg c0[34];
creg meas[34];
h q0[0];
h q0[1];
h q0[2];
h q0[3];
h q0[4];
h q0[5];
h q0[6];
h q0[7];
h q0[8];
h q0[9];
h q0[10];
h q0[11];
h q0[12];
h q0[13];
h q0[14];
h q0[15];
h q0[16];
h q0[17];
h q0[18];
h q0[19];
h q0[20];
h q0[21];
h q0[22];
h q0[23];
h q0[24];
h q0[25];
h q0[26];
h q0[27];
h q0[28];
h q0[29];
h q0[30];
h q0[31];
h q0[32];
h q0[33];
p(1.0803694) q0[0];
p(2.5307973) q0[1];
p(2.7944618) q0[2];
p(0.38415609) q0[3];
p(0.9138538) q0[4];
p(0.92528864) q0[5];
p(2.2269971) q0[6];
p(1.0066872) q0[7];
p(2.565943) q0[8];
p(2.1757981) q0[9];
p(0.11868138) q0[10];
p(2.657353) q0[11];
p(0.0042339721) q0[12];
p(0.34572517) q0[13];
p(1.0515663) q0[14];
p(1.0261086) q0[15];
p(2.3593081) q0[16];
p(2.3344234) q0[17];
p(0.12502507) q0[18];
p(0.77716294) q0[19];
p(0.05435884) q0[20];
p(2.2742836) q0[21];
p(0.64754598) q0[22];
p(0.60178303) q0[23];
p(2.5344121) q0[24];
p(0.60299681) q0[25];
p(0.8190692) q0[26];
p(2.5837717) q0[27];
p(0.19796194) q0[28];
p(0.39069511) q0[29];
p(0.24746136) q0[30];
p(0.99054666) q0[31];
p(2.1198435) q0[32];
p(0.17625482) q0[33];
cx q0[0],q0[1];
rz(1.2932691) q0[1];
cx q0[0],q0[1];
cx q0[1],q0[2];
rz(0.15229106) q0[2];
cx q0[1],q0[2];
cx q0[2],q0[3];
rz(0.9469665) q0[3];
cx q0[2],q0[3];
cx q0[3],q0[4];
rz(2.4843301) q0[4];
cx q0[3],q0[4];
cx q0[4],q0[5];
rz(1.7251996) q0[5];
cx q0[4],q0[5];
cx q0[5],q0[6];
rz(2.2233263) q0[6];
cx q0[5],q0[6];
cx q0[6],q0[7];
rz(2.8977716) q0[7];
cx q0[6],q0[7];
cx q0[7],q0[8];
rz(2.7121212) q0[8];
cx q0[7],q0[8];
cx q0[8],q0[9];
rz(0.25797663) q0[9];
cx q0[8],q0[9];
cx q0[9],q0[10];
rz(0.43218348) q0[10];
cx q0[9],q0[10];
cx q0[10],q0[11];
rz(0.18977807) q0[11];
cx q0[10],q0[11];
cx q0[11],q0[12];
rz(0.51205037) q0[12];
cx q0[11],q0[12];
cx q0[12],q0[13];
rz(0.79348854) q0[13];
cx q0[12],q0[13];
cx q0[13],q0[14];
rz(0.9603901) q0[14];
cx q0[13],q0[14];
cx q0[14],q0[15];
rz(2.0715265) q0[15];
cx q0[14],q0[15];
cx q0[15],q0[16];
rz(0.73858197) q0[16];
cx q0[15],q0[16];
cx q0[16],q0[17];
rz(2.8902888) q0[17];
cx q0[16],q0[17];
cx q0[17],q0[18];
rz(0.75575906) q0[18];
cx q0[17],q0[18];
cx q0[18],q0[19];
rz(1.0386683) q0[19];
cx q0[18],q0[19];
cx q0[19],q0[20];
rz(2.272344) q0[20];
cx q0[19],q0[20];
cx q0[20],q0[21];
rz(1.1506277) q0[21];
cx q0[20],q0[21];
cx q0[21],q0[22];
rz(2.2539537) q0[22];
cx q0[21],q0[22];
cx q0[22],q0[23];
rz(0.72471237) q0[23];
cx q0[22],q0[23];
cx q0[23],q0[24];
rz(2.5796093) q0[24];
cx q0[23],q0[24];
cx q0[24],q0[25];
rz(2.2597305) q0[25];
cx q0[24],q0[25];
cx q0[25],q0[26];
rz(0.90671641) q0[26];
cx q0[25],q0[26];
cx q0[26],q0[27];
rz(1.492711) q0[27];
cx q0[26],q0[27];
cx q0[27],q0[28];
rz(0.65578461) q0[28];
cx q0[27],q0[28];
cx q0[28],q0[29];
rz(0.15095417) q0[29];
cx q0[28],q0[29];
cx q0[29],q0[30];
rz(0.43748421) q0[30];
cx q0[29],q0[30];
cx q0[30],q0[31];
rz(1.2103977) q0[31];
cx q0[30],q0[31];
cx q0[31],q0[32];
rz(1.4365529) q0[32];
cx q0[31],q0[32];
cx q0[32],q0[33];
rz(1.842343) q0[33];
cx q0[32],q0[33];
cx q0[32],q0[33];
rz(2.5357981) q0[33];
cx q0[32],q0[33];
cx q0[31],q0[32];
rz(2.6883331) q0[32];
cx q0[31],q0[32];
cx q0[30],q0[31];
rz(2.7495769) q0[31];
cx q0[30],q0[31];
cx q0[29],q0[30];
rz(0.74289219) q0[30];
cx q0[29],q0[30];
cx q0[28],q0[29];
rz(1.083115) q0[29];
cx q0[28],q0[29];
cx q0[27],q0[28];
rz(2.0803756) q0[28];
cx q0[27],q0[28];
cx q0[26],q0[27];
rz(0.992732) q0[27];
cx q0[26],q0[27];
cx q0[25],q0[26];
rz(0.73786437) q0[26];
cx q0[25],q0[26];
cx q0[24],q0[25];
rz(1.2326553) q0[25];
cx q0[24],q0[25];
cx q0[23],q0[24];
rz(1.0193758) q0[24];
cx q0[23],q0[24];
cx q0[22],q0[23];
rz(2.3669294) q0[23];
cx q0[22],q0[23];
cx q0[21],q0[22];
rz(0.44264986) q0[22];
cx q0[21],q0[22];
cx q0[20],q0[21];
rz(0.73940884) q0[21];
cx q0[20],q0[21];
cx q0[19],q0[20];
rz(0.84433234) q0[20];
cx q0[19],q0[20];
cx q0[18],q0[19];
rz(0.22013899) q0[19];
cx q0[18],q0[19];
cx q0[17],q0[18];
rz(0.2686991) q0[18];
cx q0[17],q0[18];
cx q0[16],q0[17];
rz(2.4964152) q0[17];
cx q0[16],q0[17];
cx q0[15],q0[16];
rz(1.5177868) q0[16];
cx q0[15],q0[16];
cx q0[14],q0[15];
rz(2.8922762) q0[15];
cx q0[14],q0[15];
cx q0[13],q0[14];
rz(0.043345581) q0[14];
cx q0[13],q0[14];
cx q0[12],q0[13];
rz(0.87446085) q0[13];
cx q0[12],q0[13];
cx q0[11],q0[12];
rz(2.4163117) q0[12];
cx q0[11],q0[12];
cx q0[10],q0[11];
rz(1.7306501) q0[11];
cx q0[10],q0[11];
cx q0[9],q0[10];
rz(0.69754432) q0[10];
cx q0[9],q0[10];
cx q0[8],q0[9];
rz(2.4107808) q0[9];
cx q0[8],q0[9];
cx q0[7],q0[8];
rz(0.80658732) q0[8];
cx q0[7],q0[8];
cx q0[6],q0[7];
rz(1.2511994) q0[7];
cx q0[6],q0[7];
cx q0[5],q0[6];
rz(2.9730729) q0[6];
cx q0[5],q0[6];
cx q0[4],q0[5];
rz(2.6311041) q0[5];
cx q0[4],q0[5];
cx q0[3],q0[4];
rz(2.940267) q0[4];
cx q0[3],q0[4];
cx q0[2],q0[3];
rz(0.97792112) q0[3];
cx q0[2],q0[3];
cx q0[1],q0[2];
rz(2.8961302) q0[2];
cx q0[1],q0[2];
cx q0[0],q0[1];
rz(0.28674271) q0[1];
cx q0[0],q0[1];
rz(0.15172935) q0[0];
rz(1.5225419) q0[1];
rz(1.3988328) q0[2];
rz(1.6345726) q0[3];
rz(2.8683947) q0[4];
rz(1.4443427) q0[5];
rz(2.111214) q0[6];
rz(0.36224104) q0[7];
rz(0.99872155) q0[8];
rz(1.9307843) q0[9];
rz(2.5324623) q0[10];
rz(1.2885174) q0[11];
rz(2.8788642) q0[12];
rz(0.21600383) q0[13];
rz(0.22879256) q0[14];
rz(0.27079517) q0[15];
rz(0.14627243) q0[16];
rz(0.8606327) q0[17];
rz(2.1195577) q0[18];
rz(3.0920501) q0[19];
rz(3.0758524) q0[20];
rz(0.53659424) q0[21];
rz(2.5294251) q0[22];
rz(1.4926395) q0[23];
rz(0.14619569) q0[24];
rz(1.3196571) q0[25];
rz(3.1362998) q0[26];
rz(1.5677148) q0[27];
rz(0.17540397) q0[28];
rz(2.9458759) q0[29];
rz(0.66053913) q0[30];
rz(1.9665781) q0[31];
rz(1.0367276) q0[32];
rz(0.24729785) q0[33];
h q0[0];
h q0[1];
h q0[2];
h q0[3];
h q0[4];
h q0[5];
h q0[6];
h q0[7];
h q0[8];
h q0[9];
h q0[10];
h q0[11];
h q0[12];
h q0[13];
h q0[14];
h q0[15];
h q0[16];
h q0[17];
h q0[18];
h q0[19];
h q0[20];
h q0[21];
h q0[22];
h q0[23];
h q0[24];
h q0[25];
h q0[26];
h q0[27];
h q0[28];
h q0[29];
h q0[30];
h q0[31];
h q0[32];
h q0[33];
barrier q0[0],q0[1],q0[2],q0[3],q0[4],q0[5],q0[6],q0[7],q0[8],q0[9],q0[10],q0[11],q0[12],q0[13],q0[14],q0[15],q0[16],q0[17],q0[18],q0[19],q0[20],q0[21],q0[22],q0[23],q0[24],q0[25],q0[26],q0[27],q0[28],q0[29],q0[30],q0[31],q0[32],q0[33];
measure q0[0] -> meas[0];
measure q0[1] -> meas[1];
measure q0[2] -> meas[2];
measure q0[3] -> meas[3];
measure q0[4] -> meas[4];
measure q0[5] -> meas[5];
measure q0[6] -> meas[6];
measure q0[7] -> meas[7];
measure q0[8] -> meas[8];
measure q0[9] -> meas[9];
measure q0[10] -> meas[10];
measure q0[11] -> meas[11];
measure q0[12] -> meas[12];
measure q0[13] -> meas[13];
measure q0[14] -> meas[14];
measure q0[15] -> meas[15];
measure q0[16] -> meas[16];
measure q0[17] -> meas[17];
measure q0[18] -> meas[18];
measure q0[19] -> meas[19];
measure q0[20] -> meas[20];
measure q0[21] -> meas[21];
measure q0[22] -> meas[22];
measure q0[23] -> meas[23];
measure q0[24] -> meas[24];
measure q0[25] -> meas[25];
measure q0[26] -> meas[26];
measure q0[27] -> meas[27];
measure q0[28] -> meas[28];
measure q0[29] -> meas[29];
measure q0[30] -> meas[30];
measure q0[31] -> meas[31];
measure q0[32] -> meas[32];
measure q0[33] -> meas[33];