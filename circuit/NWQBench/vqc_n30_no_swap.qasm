OPENQASM 2.0;
include "qelib1.inc";
qreg q[30];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[7];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
h q[13];
h q[14];
h q[15];
h q[16];
h q[17];
h q[18];
h q[19];
h q[20];
h q[21];
h q[22];
h q[23];
h q[24];
h q[25];
h q[26];
h q[27];
h q[28];
h q[29];
rz(1.040044600000000) q[0];
rz(0.284128880000000) q[1];
rz(2.951251600000000) q[2];
rz(1.854814400000000) q[3];
rz(1.279344000000000) q[4];
rz(0.913942660000000) q[5];
rz(0.529224010000000) q[6];
rz(0.202200550000000) q[7];
rz(1.909863700000000) q[8];
rz(1.919529200000000) q[9];
rz(2.893151500000000) q[10];
rz(2.612740700000000) q[11];
rz(2.923100300000000) q[12];
rz(2.942652300000000) q[13];
rz(2.633177700000000) q[14];
rz(1.345405700000000) q[15];
rz(0.429901970000000) q[16];
rz(1.719459300000000) q[17];
rz(0.836186610000000) q[18];
rz(2.583875300000000) q[19];
rz(1.014956200000000) q[20];
rz(1.245400800000000) q[21];
rz(0.735354380000000) q[22];
rz(0.055975067000000) q[23];
rz(0.042970483000000) q[24];
rz(1.125521000000000) q[25];
rz(0.123922180000000) q[26];
rz(1.716137700000000) q[27];
rz(1.480664800000000) q[28];
rz(1.265940900000000) q[29];
cx q[0],q[1];
rz(0.454399630000000) q[1];
cx q[0],q[1];
cx q[1],q[2];
rz(0.934680790000000) q[2];
cx q[1],q[2];
cx q[2],q[3];
rz(1.836682200000000) q[3];
cx q[2],q[3];
cx q[3],q[4];
rz(0.843667540000000) q[4];
cx q[3],q[4];
cx q[4],q[5];
rz(2.768554400000000) q[5];
cx q[4],q[5];
cx q[5],q[6];
rz(3.130216700000000) q[6];
cx q[5],q[6];
cx q[6],q[7];
rz(0.651712520000000) q[7];
cx q[6],q[7];
cx q[7],q[8];
rz(0.751448190000000) q[8];
cx q[7],q[8];
cx q[8],q[9];
rz(0.280637900000000) q[9];
cx q[8],q[9];
cx q[9],q[10];
rz(2.292585800000000) q[10];
cx q[9],q[10];
cx q[10],q[11];
rz(1.662079600000000) q[11];
cx q[10],q[11];
cx q[11],q[12];
rz(1.625504900000000) q[12];
cx q[11],q[12];
cx q[12],q[13];
rz(2.883953700000000) q[13];
cx q[12],q[13];
cx q[13],q[14];
rz(1.905899600000000) q[14];
cx q[13],q[14];
cx q[14],q[15];
rz(0.862213340000000) q[15];
cx q[14],q[15];
cx q[15],q[16];
rz(2.113057300000000) q[16];
cx q[15],q[16];
cx q[16],q[17];
rz(1.583995600000000) q[17];
cx q[16],q[17];
cx q[17],q[18];
rz(2.180196700000000) q[18];
cx q[17],q[18];
cx q[18],q[19];
rz(0.184340920000000) q[19];
cx q[18],q[19];
cx q[19],q[20];
rz(2.657175700000000) q[20];
cx q[19],q[20];
cx q[20],q[21];
rz(0.324273320000000) q[21];
cx q[20],q[21];
cx q[21],q[22];
rz(0.613450800000000) q[22];
cx q[21],q[22];
cx q[22],q[23];
rz(2.726794700000000) q[23];
cx q[22],q[23];
cx q[23],q[24];
rz(1.455528700000000) q[24];
cx q[23],q[24];
cx q[24],q[25];
rz(0.927549670000000) q[25];
cx q[24],q[25];
cx q[25],q[26];
rz(2.254385000000000) q[26];
cx q[25],q[26];
cx q[26],q[27];
rz(2.432874100000000) q[27];
cx q[26],q[27];
cx q[27],q[28];
rz(0.599006770000000) q[28];
cx q[27],q[28];
cx q[28],q[29];
rz(2.474802800000000) q[29];
cx q[28],q[29];
ry(1.844871200000000) q[0];
rz(1.754017000000000) q[0];
ry(0.531910000000000) q[1];
rz(1.377072600000000) q[1];
ry(0.218499690000000) q[2];
rz(2.681677600000000) q[2];
ry(0.730557340000000) q[3];
rz(0.841646520000000) q[3];
ry(3.137843300000000) q[4];
rz(2.905912100000000) q[4];
ry(2.692400900000000) q[5];
rz(2.204033000000000) q[5];
ry(1.837445200000000) q[6];
rz(0.300455190000000) q[6];
ry(0.678718620000000) q[7];
rz(2.474203200000000) q[7];
ry(2.342312600000000) q[8];
rz(0.879454620000000) q[8];
ry(0.043157638000000) q[9];
rz(0.758397430000000) q[9];
ry(0.074906886000000) q[10];
rz(0.071803366000000) q[10];
ry(2.237997700000000) q[11];
rz(1.193626800000000) q[11];
ry(1.567403500000000) q[12];
rz(0.010145532000000) q[12];
ry(1.111774500000000) q[13];
rz(0.253471380000000) q[13];
ry(1.426347800000000) q[14];
rz(1.825672400000000) q[14];
ry(1.119473600000000) q[15];
rz(0.836316670000000) q[15];
ry(0.683303540000000) q[16];
rz(1.334937900000000) q[16];
ry(1.216923900000000) q[17];
rz(0.486065570000000) q[17];
ry(2.113443400000000) q[18];
rz(1.534225800000000) q[18];
ry(0.166311250000000) q[19];
rz(1.561431700000000) q[19];
ry(2.030467700000000) q[20];
rz(0.582957000000000) q[20];
ry(1.747600200000000) q[21];
rz(2.112338000000000) q[21];
ry(2.510459700000000) q[22];
rz(2.872781500000000) q[22];
ry(1.884405600000000) q[23];
rz(2.171545600000000) q[23];
ry(1.548432300000000) q[24];
rz(0.720443960000000) q[24];
ry(1.469988000000000) q[25];
rz(1.172249200000000) q[25];
ry(3.022879900000000) q[26];
rz(1.318078400000000) q[26];
ry(2.702546700000000) q[27];
rz(2.780590200000000) q[27];
ry(2.028139600000000) q[28];
rz(2.900353600000000) q[28];
ry(1.248679300000000) q[29];
rz(1.608280600000000) q[29];
cz q[0],q[1];
cz q[0],q[2];
cz q[0],q[3];
cz q[0],q[4];
cz q[0],q[5];
cz q[0],q[6];
cz q[0],q[7];
cz q[0],q[8];
cz q[0],q[9];
cz q[0],q[10];
cz q[0],q[11];
cz q[0],q[12];
cz q[0],q[13];
cz q[0],q[14];
cz q[0],q[15];
cz q[0],q[16];
cz q[0],q[17];
cz q[0],q[18];
cz q[0],q[19];
cz q[0],q[20];
cz q[0],q[21];
cz q[0],q[22];
cz q[0],q[23];
cz q[0],q[24];
cz q[0],q[25];
cz q[0],q[26];
cz q[0],q[27];
cz q[0],q[28];
cz q[0],q[29];
cz q[1],q[2];
cz q[1],q[3];
cz q[1],q[4];
cz q[1],q[5];
cz q[1],q[6];
cz q[1],q[7];
cz q[1],q[8];
cz q[1],q[9];
cz q[1],q[10];
cz q[1],q[11];
cz q[1],q[12];
cz q[1],q[13];
cz q[1],q[14];
cz q[1],q[15];
cz q[1],q[16];
cz q[1],q[17];
cz q[1],q[18];
cz q[1],q[19];
cz q[1],q[20];
cz q[1],q[21];
cz q[1],q[22];
cz q[1],q[23];
cz q[1],q[24];
cz q[1],q[25];
cz q[1],q[26];
cz q[1],q[27];
cz q[1],q[28];
cz q[1],q[29];
cz q[2],q[3];
cz q[2],q[4];
cz q[2],q[5];
cz q[2],q[6];
cz q[2],q[7];
cz q[2],q[8];
cz q[2],q[9];
cz q[2],q[10];
cz q[2],q[11];
cz q[2],q[12];
cz q[2],q[13];
cz q[2],q[14];
cz q[2],q[15];
cz q[2],q[16];
cz q[2],q[17];
cz q[2],q[18];
cz q[2],q[19];
cz q[2],q[20];
cz q[2],q[21];
cz q[2],q[22];
cz q[2],q[23];
cz q[2],q[24];
cz q[2],q[25];
cz q[2],q[26];
cz q[2],q[27];
cz q[2],q[28];
cz q[2],q[29];
cz q[3],q[4];
cz q[3],q[5];
cz q[3],q[6];
cz q[3],q[7];
cz q[3],q[8];
cz q[3],q[9];
cz q[3],q[10];
cz q[3],q[11];
cz q[3],q[12];
cz q[3],q[13];
cz q[3],q[14];
cz q[3],q[15];
cz q[3],q[16];
cz q[3],q[17];
cz q[3],q[18];
cz q[3],q[19];
cz q[3],q[20];
cz q[3],q[21];
cz q[3],q[22];
cz q[3],q[23];
cz q[3],q[24];
cz q[3],q[25];
cz q[3],q[26];
cz q[3],q[27];
cz q[3],q[28];
cz q[3],q[29];
cz q[4],q[5];
cz q[4],q[6];
cz q[4],q[7];
cz q[4],q[8];
cz q[4],q[9];
cz q[4],q[10];
cz q[4],q[11];
cz q[4],q[12];
cz q[4],q[13];
cz q[4],q[14];
cz q[4],q[15];
cz q[4],q[16];
cz q[4],q[17];
cz q[4],q[18];
cz q[4],q[19];
cz q[4],q[20];
cz q[4],q[21];
cz q[4],q[22];
cz q[4],q[23];
cz q[4],q[24];
cz q[4],q[25];
cz q[4],q[26];
cz q[4],q[27];
cz q[4],q[28];
cz q[4],q[29];
cz q[5],q[6];
cz q[5],q[7];
cz q[5],q[8];
cz q[5],q[9];
cz q[5],q[10];
cz q[5],q[11];
cz q[5],q[12];
cz q[5],q[13];
cz q[5],q[14];
cz q[5],q[15];
cz q[5],q[16];
cz q[5],q[17];
cz q[5],q[18];
cz q[5],q[19];
cz q[5],q[20];
cz q[5],q[21];
cz q[5],q[22];
cz q[5],q[23];
cz q[5],q[24];
cz q[5],q[25];
cz q[5],q[26];
cz q[5],q[27];
cz q[5],q[28];
cz q[5],q[29];
cz q[6],q[7];
cz q[6],q[8];
cz q[6],q[9];
cz q[6],q[10];
cz q[6],q[11];
cz q[6],q[12];
cz q[6],q[13];
cz q[6],q[14];
cz q[6],q[15];
cz q[6],q[16];
cz q[6],q[17];
cz q[6],q[18];
cz q[6],q[19];
cz q[6],q[20];
cz q[6],q[21];
cz q[6],q[22];
cz q[6],q[23];
cz q[6],q[24];
cz q[6],q[25];
cz q[6],q[26];
cz q[6],q[27];
cz q[6],q[28];
cz q[6],q[29];
cz q[7],q[8];
cz q[7],q[9];
cz q[7],q[10];
cz q[7],q[11];
cz q[7],q[12];
cz q[7],q[13];
cz q[7],q[14];
cz q[7],q[15];
cz q[7],q[16];
cz q[7],q[17];
cz q[7],q[18];
cz q[7],q[19];
cz q[7],q[20];
cz q[7],q[21];
cz q[7],q[22];
cz q[7],q[23];
cz q[7],q[24];
cz q[7],q[25];
cz q[7],q[26];
cz q[7],q[27];
cz q[7],q[28];
cz q[7],q[29];
cz q[8],q[9];
cz q[8],q[10];
cz q[8],q[11];
cz q[8],q[12];
cz q[8],q[13];
cz q[8],q[14];
cz q[8],q[15];
cz q[8],q[16];
cz q[8],q[17];
cz q[8],q[18];
cz q[8],q[19];
cz q[8],q[20];
cz q[8],q[21];
cz q[8],q[22];
cz q[8],q[23];
cz q[8],q[24];
cz q[8],q[25];
cz q[8],q[26];
cz q[8],q[27];
cz q[8],q[28];
cz q[8],q[29];
cz q[9],q[10];
cz q[9],q[11];
cz q[9],q[12];
cz q[9],q[13];
cz q[9],q[14];
cz q[9],q[15];
cz q[9],q[16];
cz q[9],q[17];
cz q[9],q[18];
cz q[9],q[19];
cz q[9],q[20];
cz q[9],q[21];
cz q[9],q[22];
cz q[9],q[23];
cz q[9],q[24];
cz q[9],q[25];
cz q[9],q[26];
cz q[9],q[27];
cz q[9],q[28];
cz q[9],q[29];
cz q[10],q[11];
cz q[10],q[12];
cz q[10],q[13];
cz q[10],q[14];
cz q[10],q[15];
cz q[10],q[16];
cz q[10],q[17];
cz q[10],q[18];
cz q[10],q[19];
cz q[10],q[20];
cz q[10],q[21];
cz q[10],q[22];
cz q[10],q[23];
cz q[10],q[24];
cz q[10],q[25];
cz q[10],q[26];
cz q[10],q[27];
cz q[10],q[28];
cz q[10],q[29];
cz q[11],q[12];
cz q[11],q[13];
cz q[11],q[14];
cz q[11],q[15];
cz q[11],q[16];
cz q[11],q[17];
cz q[11],q[18];
cz q[11],q[19];
cz q[11],q[20];
cz q[11],q[21];
cz q[11],q[22];
cz q[11],q[23];
cz q[11],q[24];
cz q[11],q[25];
cz q[11],q[26];
cz q[11],q[27];
cz q[11],q[28];
cz q[11],q[29];
cz q[12],q[13];
cz q[12],q[14];
cz q[12],q[15];
cz q[12],q[16];
cz q[12],q[17];
cz q[12],q[18];
cz q[12],q[19];
cz q[12],q[20];
cz q[12],q[21];
cz q[12],q[22];
cz q[12],q[23];
cz q[12],q[24];
cz q[12],q[25];
cz q[12],q[26];
cz q[12],q[27];
cz q[12],q[28];
cz q[12],q[29];
cz q[13],q[14];
cz q[13],q[15];
cz q[13],q[16];
cz q[13],q[17];
cz q[13],q[18];
cz q[13],q[19];
cz q[13],q[20];
cz q[13],q[21];
cz q[13],q[22];
cz q[13],q[23];
cz q[13],q[24];
cz q[13],q[25];
cz q[13],q[26];
cz q[13],q[27];
cz q[13],q[28];
cz q[13],q[29];
cz q[14],q[15];
cz q[14],q[16];
cz q[14],q[17];
cz q[14],q[18];
cz q[14],q[19];
cz q[14],q[20];
cz q[14],q[21];
cz q[14],q[22];
cz q[14],q[23];
cz q[14],q[24];
cz q[14],q[25];
cz q[14],q[26];
cz q[14],q[27];
cz q[14],q[28];
cz q[14],q[29];
cz q[15],q[16];
cz q[15],q[17];
cz q[15],q[18];
cz q[15],q[19];
cz q[15],q[20];
cz q[15],q[21];
cz q[15],q[22];
cz q[15],q[23];
cz q[15],q[24];
cz q[15],q[25];
cz q[15],q[26];
cz q[15],q[27];
cz q[15],q[28];
cz q[15],q[29];
cz q[16],q[17];
cz q[16],q[18];
cz q[16],q[19];
cz q[16],q[20];
cz q[16],q[21];
cz q[16],q[22];
cz q[16],q[23];
cz q[16],q[24];
cz q[16],q[25];
cz q[16],q[26];
cz q[16],q[27];
cz q[16],q[28];
cz q[16],q[29];
cz q[17],q[18];
cz q[17],q[19];
cz q[17],q[20];
cz q[17],q[21];
cz q[17],q[22];
cz q[17],q[23];
cz q[17],q[24];
cz q[17],q[25];
cz q[17],q[26];
cz q[17],q[27];
cz q[17],q[28];
cz q[17],q[29];
cz q[18],q[19];
cz q[18],q[20];
cz q[18],q[21];
cz q[18],q[22];
cz q[18],q[23];
cz q[18],q[24];
cz q[18],q[25];
cz q[18],q[26];
cz q[18],q[27];
cz q[18],q[28];
cz q[18],q[29];
cz q[19],q[20];
cz q[19],q[21];
cz q[19],q[22];
cz q[19],q[23];
cz q[19],q[24];
cz q[19],q[25];
cz q[19],q[26];
cz q[19],q[27];
cz q[19],q[28];
cz q[19],q[29];
cz q[20],q[21];
cz q[20],q[22];
cz q[20],q[23];
cz q[20],q[24];
cz q[20],q[25];
cz q[20],q[26];
cz q[20],q[27];
cz q[20],q[28];
cz q[20],q[29];
cz q[21],q[22];
cz q[21],q[23];
cz q[21],q[24];
cz q[21],q[25];
cz q[21],q[26];
cz q[21],q[27];
cz q[21],q[28];
cz q[21],q[29];
cz q[22],q[23];
cz q[22],q[24];
cz q[22],q[25];
cz q[22],q[26];
cz q[22],q[27];
cz q[22],q[28];
cz q[22],q[29];
cz q[23],q[24];
cz q[23],q[25];
cz q[23],q[26];
cz q[23],q[27];
cz q[23],q[28];
cz q[23],q[29];
cz q[24],q[25];
cz q[24],q[26];
cz q[24],q[27];
cz q[24],q[28];
cz q[24],q[29];
cz q[25],q[26];
cz q[25],q[27];
cz q[25],q[28];
cz q[25],q[29];
cz q[26],q[27];
cz q[26],q[28];
cz q[26],q[29];
cz q[27],q[28];
cz q[27],q[29];
cz q[28],q[29];
ry(2.235987800000000) q[0];
rz(0.451552420000000) q[0];
ry(0.834030300000000) q[1];
rz(2.664708900000000) q[1];
ry(0.900378870000000) q[2];
rz(1.743248300000000) q[2];
ry(0.070196319000000) q[3];
rz(0.991081710000000) q[3];
ry(1.609732700000000) q[4];
rz(2.114325700000000) q[4];
ry(2.531830800000000) q[5];
rz(1.744502700000000) q[5];
ry(2.682546600000000) q[6];
rz(2.912247800000000) q[6];
ry(1.968865500000000) q[7];
rz(2.457317600000000) q[7];
ry(0.924107910000000) q[8];
rz(0.394185870000000) q[8];
ry(3.052173600000000) q[9];
rz(0.399110470000000) q[9];
ry(2.670408200000000) q[10];
rz(0.340072190000000) q[10];
ry(2.840522300000000) q[11];
rz(1.515907600000000) q[11];
ry(2.183446300000000) q[12];
rz(1.053540200000000) q[12];
ry(2.871494400000000) q[13];
rz(0.019954840000000) q[13];
ry(1.185645100000000) q[14];
rz(0.737102760000000) q[14];
ry(1.009492000000000) q[15];
rz(0.705163470000000) q[15];
ry(2.066473100000000) q[16];
rz(0.781065890000000) q[16];
ry(0.733038810000000) q[17];
rz(1.870442200000000) q[17];
ry(2.729314500000000) q[18];
rz(1.087647000000000) q[18];
ry(1.440130800000000) q[19];
rz(2.373165500000000) q[19];
ry(2.055571000000000) q[20];
rz(1.971878700000000) q[20];
ry(1.829360200000000) q[21];
rz(2.364657900000000) q[21];
ry(2.541932200000000) q[22];
rz(2.100166200000000) q[22];
ry(3.001712900000000) q[23];
rz(0.706950920000000) q[23];
ry(2.669073200000000) q[24];
rz(2.980595500000000) q[24];
ry(2.636186400000000) q[25];
rz(0.466143810000000) q[25];
ry(1.252380500000000) q[26];
rz(2.125754100000000) q[26];
ry(0.836100540000000) q[27];
rz(1.635613200000000) q[27];
ry(1.770478500000000) q[28];
rz(2.246667500000000) q[28];
ry(1.823399000000000) q[29];
rz(2.200582000000000) q[29];
cz q[0],q[1];
cz q[0],q[2];
cz q[0],q[3];
cz q[0],q[4];
cz q[0],q[5];
cz q[0],q[6];
cz q[0],q[7];
cz q[0],q[8];
cz q[0],q[9];
cz q[0],q[10];
cz q[0],q[11];
cz q[0],q[12];
cz q[0],q[13];
cz q[0],q[14];
cz q[0],q[15];
cz q[0],q[16];
cz q[0],q[17];
cz q[0],q[18];
cz q[0],q[19];
cz q[0],q[20];
cz q[0],q[21];
cz q[0],q[22];
cz q[0],q[23];
cz q[0],q[24];
cz q[0],q[25];
cz q[0],q[26];
cz q[0],q[27];
cz q[0],q[28];
cz q[0],q[29];
cz q[1],q[2];
cz q[1],q[3];
cz q[1],q[4];
cz q[1],q[5];
cz q[1],q[6];
cz q[1],q[7];
cz q[1],q[8];
cz q[1],q[9];
cz q[1],q[10];
cz q[1],q[11];
cz q[1],q[12];
cz q[1],q[13];
cz q[1],q[14];
cz q[1],q[15];
cz q[1],q[16];
cz q[1],q[17];
cz q[1],q[18];
cz q[1],q[19];
cz q[1],q[20];
cz q[1],q[21];
cz q[1],q[22];
cz q[1],q[23];
cz q[1],q[24];
cz q[1],q[25];
cz q[1],q[26];
cz q[1],q[27];
cz q[1],q[28];
cz q[1],q[29];
cz q[2],q[3];
cz q[2],q[4];
cz q[2],q[5];
cz q[2],q[6];
cz q[2],q[7];
cz q[2],q[8];
cz q[2],q[9];
cz q[2],q[10];
cz q[2],q[11];
cz q[2],q[12];
cz q[2],q[13];
cz q[2],q[14];
cz q[2],q[15];
cz q[2],q[16];
cz q[2],q[17];
cz q[2],q[18];
cz q[2],q[19];
cz q[2],q[20];
cz q[2],q[21];
cz q[2],q[22];
cz q[2],q[23];
cz q[2],q[24];
cz q[2],q[25];
cz q[2],q[26];
cz q[2],q[27];
cz q[2],q[28];
cz q[2],q[29];
cz q[3],q[4];
cz q[3],q[5];
cz q[3],q[6];
cz q[3],q[7];
cz q[3],q[8];
cz q[3],q[9];
cz q[3],q[10];
cz q[3],q[11];
cz q[3],q[12];
cz q[3],q[13];
cz q[3],q[14];
cz q[3],q[15];
cz q[3],q[16];
cz q[3],q[17];
cz q[3],q[18];
cz q[3],q[19];
cz q[3],q[20];
cz q[3],q[21];
cz q[3],q[22];
cz q[3],q[23];
cz q[3],q[24];
cz q[3],q[25];
cz q[3],q[26];
cz q[3],q[27];
cz q[3],q[28];
cz q[3],q[29];
cz q[4],q[5];
cz q[4],q[6];
cz q[4],q[7];
cz q[4],q[8];
cz q[4],q[9];
cz q[4],q[10];
cz q[4],q[11];
cz q[4],q[12];
cz q[4],q[13];
cz q[4],q[14];
cz q[4],q[15];
cz q[4],q[16];
cz q[4],q[17];
cz q[4],q[18];
cz q[4],q[19];
cz q[4],q[20];
cz q[4],q[21];
cz q[4],q[22];
cz q[4],q[23];
cz q[4],q[24];
cz q[4],q[25];
cz q[4],q[26];
cz q[4],q[27];
cz q[4],q[28];
cz q[4],q[29];
cz q[5],q[6];
cz q[5],q[7];
cz q[5],q[8];
cz q[5],q[9];
cz q[5],q[10];
cz q[5],q[11];
cz q[5],q[12];
cz q[5],q[13];
cz q[5],q[14];
cz q[5],q[15];
cz q[5],q[16];
cz q[5],q[17];
cz q[5],q[18];
cz q[5],q[19];
cz q[5],q[20];
cz q[5],q[21];
cz q[5],q[22];
cz q[5],q[23];
cz q[5],q[24];
cz q[5],q[25];
cz q[5],q[26];
cz q[5],q[27];
cz q[5],q[28];
cz q[5],q[29];
cz q[6],q[7];
cz q[6],q[8];
cz q[6],q[9];
cz q[6],q[10];
cz q[6],q[11];
cz q[6],q[12];
cz q[6],q[13];
cz q[6],q[14];
cz q[6],q[15];
cz q[6],q[16];
cz q[6],q[17];
cz q[6],q[18];
cz q[6],q[19];
cz q[6],q[20];
cz q[6],q[21];
cz q[6],q[22];
cz q[6],q[23];
cz q[6],q[24];
cz q[6],q[25];
cz q[6],q[26];
cz q[6],q[27];
cz q[6],q[28];
cz q[6],q[29];
cz q[7],q[8];
cz q[7],q[9];
cz q[7],q[10];
cz q[7],q[11];
cz q[7],q[12];
cz q[7],q[13];
cz q[7],q[14];
cz q[7],q[15];
cz q[7],q[16];
cz q[7],q[17];
cz q[7],q[18];
cz q[7],q[19];
cz q[7],q[20];
cz q[7],q[21];
cz q[7],q[22];
cz q[7],q[23];
cz q[7],q[24];
cz q[7],q[25];
cz q[7],q[26];
cz q[7],q[27];
cz q[7],q[28];
cz q[7],q[29];
cz q[8],q[9];
cz q[8],q[10];
cz q[8],q[11];
cz q[8],q[12];
cz q[8],q[13];
cz q[8],q[14];
cz q[8],q[15];
cz q[8],q[16];
cz q[8],q[17];
cz q[8],q[18];
cz q[8],q[19];
cz q[8],q[20];
cz q[8],q[21];
cz q[8],q[22];
cz q[8],q[23];
cz q[8],q[24];
cz q[8],q[25];
cz q[8],q[26];
cz q[8],q[27];
cz q[8],q[28];
cz q[8],q[29];
cz q[9],q[10];
cz q[9],q[11];
cz q[9],q[12];
cz q[9],q[13];
cz q[9],q[14];
cz q[9],q[15];
cz q[9],q[16];
cz q[9],q[17];
cz q[9],q[18];
cz q[9],q[19];
cz q[9],q[20];
cz q[9],q[21];
cz q[9],q[22];
cz q[9],q[23];
cz q[9],q[24];
cz q[9],q[25];
cz q[9],q[26];
cz q[9],q[27];
cz q[9],q[28];
cz q[9],q[29];
cz q[10],q[11];
cz q[10],q[12];
cz q[10],q[13];
cz q[10],q[14];
cz q[10],q[15];
cz q[10],q[16];
cz q[10],q[17];
cz q[10],q[18];
cz q[10],q[19];
cz q[10],q[20];
cz q[10],q[21];
cz q[10],q[22];
cz q[10],q[23];
cz q[10],q[24];
cz q[10],q[25];
cz q[10],q[26];
cz q[10],q[27];
cz q[10],q[28];
cz q[10],q[29];
cz q[11],q[12];
cz q[11],q[13];
cz q[11],q[14];
cz q[11],q[15];
cz q[11],q[16];
cz q[11],q[17];
cz q[11],q[18];
cz q[11],q[19];
cz q[11],q[20];
cz q[11],q[21];
cz q[11],q[22];
cz q[11],q[23];
cz q[11],q[24];
cz q[11],q[25];
cz q[11],q[26];
cz q[11],q[27];
cz q[11],q[28];
cz q[11],q[29];
cz q[12],q[13];
cz q[12],q[14];
cz q[12],q[15];
cz q[12],q[16];
cz q[12],q[17];
cz q[12],q[18];
cz q[12],q[19];
cz q[12],q[20];
cz q[12],q[21];
cz q[12],q[22];
cz q[12],q[23];
cz q[12],q[24];
cz q[12],q[25];
cz q[12],q[26];
cz q[12],q[27];
cz q[12],q[28];
cz q[12],q[29];
cz q[13],q[14];
cz q[13],q[15];
cz q[13],q[16];
cz q[13],q[17];
cz q[13],q[18];
cz q[13],q[19];
cz q[13],q[20];
cz q[13],q[21];
cz q[13],q[22];
cz q[13],q[23];
cz q[13],q[24];
cz q[13],q[25];
cz q[13],q[26];
cz q[13],q[27];
cz q[13],q[28];
cz q[13],q[29];
cz q[14],q[15];
cz q[14],q[16];
cz q[14],q[17];
cz q[14],q[18];
cz q[14],q[19];
cz q[14],q[20];
cz q[14],q[21];
cz q[14],q[22];
cz q[14],q[23];
cz q[14],q[24];
cz q[14],q[25];
cz q[14],q[26];
cz q[14],q[27];
cz q[14],q[28];
cz q[14],q[29];
cz q[15],q[16];
cz q[15],q[17];
cz q[15],q[18];
cz q[15],q[19];
cz q[15],q[20];
cz q[15],q[21];
cz q[15],q[22];
cz q[15],q[23];
cz q[15],q[24];
cz q[15],q[25];
cz q[15],q[26];
cz q[15],q[27];
cz q[15],q[28];
cz q[15],q[29];
cz q[16],q[17];
cz q[16],q[18];
cz q[16],q[19];
cz q[16],q[20];
cz q[16],q[21];
cz q[16],q[22];
cz q[16],q[23];
cz q[16],q[24];
cz q[16],q[25];
cz q[16],q[26];
cz q[16],q[27];
cz q[16],q[28];
cz q[16],q[29];
cz q[17],q[18];
cz q[17],q[19];
cz q[17],q[20];
cz q[17],q[21];
cz q[17],q[22];
cz q[17],q[23];
cz q[17],q[24];
cz q[17],q[25];
cz q[17],q[26];
cz q[17],q[27];
cz q[17],q[28];
cz q[17],q[29];
cz q[18],q[19];
cz q[18],q[20];
cz q[18],q[21];
cz q[18],q[22];
cz q[18],q[23];
cz q[18],q[24];
cz q[18],q[25];
cz q[18],q[26];
cz q[18],q[27];
cz q[18],q[28];
cz q[18],q[29];
cz q[19],q[20];
cz q[19],q[21];
cz q[19],q[22];
cz q[19],q[23];
cz q[19],q[24];
cz q[19],q[25];
cz q[19],q[26];
cz q[19],q[27];
cz q[19],q[28];
cz q[19],q[29];
cz q[20],q[21];
cz q[20],q[22];
cz q[20],q[23];
cz q[20],q[24];
cz q[20],q[25];
cz q[20],q[26];
cz q[20],q[27];
cz q[20],q[28];
cz q[20],q[29];
cz q[21],q[22];
cz q[21],q[23];
cz q[21],q[24];
cz q[21],q[25];
cz q[21],q[26];
cz q[21],q[27];
cz q[21],q[28];
cz q[21],q[29];
cz q[22],q[23];
cz q[22],q[24];
cz q[22],q[25];
cz q[22],q[26];
cz q[22],q[27];
cz q[22],q[28];
cz q[22],q[29];
cz q[23],q[24];
cz q[23],q[25];
cz q[23],q[26];
cz q[23],q[27];
cz q[23],q[28];
cz q[23],q[29];
cz q[24],q[25];
cz q[24],q[26];
cz q[24],q[27];
cz q[24],q[28];
cz q[24],q[29];
cz q[25],q[26];
cz q[25],q[27];
cz q[25],q[28];
cz q[25],q[29];
cz q[26],q[27];
cz q[26],q[28];
cz q[26],q[29];
cz q[27],q[28];
cz q[27],q[29];
cz q[28],q[29];
ry(2.645086600000000) q[0];
rz(0.201825930000000) q[0];
ry(0.599818860000000) q[1];
rz(1.670817200000000) q[1];
ry(2.156580100000000) q[2];
rz(2.884227800000000) q[2];
ry(2.400728200000000) q[3];
rz(2.384929000000000) q[3];
ry(3.126267700000000) q[4];
rz(2.445139600000000) q[4];
ry(0.313637970000000) q[5];
rz(0.750848500000000) q[5];
ry(0.686664730000000) q[6];
rz(2.609440700000000) q[6];
ry(2.885407600000000) q[7];
rz(2.855617700000000) q[7];
ry(2.615867500000000) q[8];
rz(1.351892600000000) q[8];
ry(2.356294000000000) q[9];
rz(2.857367400000000) q[9];
ry(2.259616500000000) q[10];
rz(2.868118600000000) q[10];
ry(2.649854400000000) q[11];
rz(2.899620200000000) q[11];
ry(0.238032690000000) q[12];
rz(0.221080440000000) q[12];
ry(2.540202100000000) q[13];
rz(0.728496160000000) q[13];
ry(2.067300400000000) q[14];
rz(1.339211800000000) q[14];
ry(3.111953500000000) q[15];
rz(2.424735600000000) q[15];
ry(0.359416740000000) q[16];
rz(0.491621010000000) q[16];
ry(0.176879780000000) q[17];
rz(1.538934500000000) q[17];
ry(2.503677000000000) q[18];
rz(0.538728160000000) q[18];
ry(2.735852700000000) q[19];
rz(1.918557900000000) q[19];
ry(1.415302700000000) q[20];
rz(0.531230080000000) q[20];
ry(2.777447100000000) q[21];
rz(1.058062800000000) q[21];
ry(1.830277700000000) q[22];
rz(1.859325100000000) q[22];
ry(0.121515080000000) q[23];
rz(1.593217600000000) q[23];
ry(3.085052500000000) q[24];
rz(0.131562460000000) q[24];
ry(2.172964800000000) q[25];
rz(2.347663100000000) q[25];
ry(0.326778680000000) q[26];
rz(3.044363700000000) q[26];
ry(2.074003400000000) q[27];
rz(2.552819600000000) q[27];
ry(2.105529300000000) q[28];
rz(2.558186400000000) q[28];
ry(1.200421500000000) q[29];
rz(0.367977610000000) q[29];
cz q[0],q[1];
cz q[0],q[2];
cz q[0],q[3];
cz q[0],q[4];
cz q[0],q[5];
cz q[0],q[6];
cz q[0],q[7];
cz q[0],q[8];
cz q[0],q[9];
cz q[0],q[10];
cz q[0],q[11];
cz q[0],q[12];
cz q[0],q[13];
cz q[0],q[14];
cz q[0],q[15];
cz q[0],q[16];
cz q[0],q[17];
cz q[0],q[18];
cz q[0],q[19];
cz q[0],q[20];
cz q[0],q[21];
cz q[0],q[22];
cz q[0],q[23];
cz q[0],q[24];
cz q[0],q[25];
cz q[0],q[26];
cz q[0],q[27];
cz q[0],q[28];
cz q[0],q[29];
cz q[1],q[2];
cz q[1],q[3];
cz q[1],q[4];
cz q[1],q[5];
cz q[1],q[6];
cz q[1],q[7];
cz q[1],q[8];
cz q[1],q[9];
cz q[1],q[10];
cz q[1],q[11];
cz q[1],q[12];
cz q[1],q[13];
cz q[1],q[14];
cz q[1],q[15];
cz q[1],q[16];
cz q[1],q[17];
cz q[1],q[18];
cz q[1],q[19];
cz q[1],q[20];
cz q[1],q[21];
cz q[1],q[22];
cz q[1],q[23];
cz q[1],q[24];
cz q[1],q[25];
cz q[1],q[26];
cz q[1],q[27];
cz q[1],q[28];
cz q[1],q[29];
cz q[2],q[3];
cz q[2],q[4];
cz q[2],q[5];
cz q[2],q[6];
cz q[2],q[7];
cz q[2],q[8];
cz q[2],q[9];
cz q[2],q[10];
cz q[2],q[11];
cz q[2],q[12];
cz q[2],q[13];
cz q[2],q[14];
cz q[2],q[15];
cz q[2],q[16];
cz q[2],q[17];
cz q[2],q[18];
cz q[2],q[19];
cz q[2],q[20];
cz q[2],q[21];
cz q[2],q[22];
cz q[2],q[23];
cz q[2],q[24];
cz q[2],q[25];
cz q[2],q[26];
cz q[2],q[27];
cz q[2],q[28];
cz q[2],q[29];
cz q[3],q[4];
cz q[3],q[5];
cz q[3],q[6];
cz q[3],q[7];
cz q[3],q[8];
cz q[3],q[9];
cz q[3],q[10];
cz q[3],q[11];
cz q[3],q[12];
cz q[3],q[13];
cz q[3],q[14];
cz q[3],q[15];
cz q[3],q[16];
cz q[3],q[17];
cz q[3],q[18];
cz q[3],q[19];
cz q[3],q[20];
cz q[3],q[21];
cz q[3],q[22];
cz q[3],q[23];
cz q[3],q[24];
cz q[3],q[25];
cz q[3],q[26];
cz q[3],q[27];
cz q[3],q[28];
cz q[3],q[29];
cz q[4],q[5];
cz q[4],q[6];
cz q[4],q[7];
cz q[4],q[8];
cz q[4],q[9];
cz q[4],q[10];
cz q[4],q[11];
cz q[4],q[12];
cz q[4],q[13];
cz q[4],q[14];
cz q[4],q[15];
cz q[4],q[16];
cz q[4],q[17];
cz q[4],q[18];
cz q[4],q[19];
cz q[4],q[20];
cz q[4],q[21];
cz q[4],q[22];
cz q[4],q[23];
cz q[4],q[24];
cz q[4],q[25];
cz q[4],q[26];
cz q[4],q[27];
cz q[4],q[28];
cz q[4],q[29];
cz q[5],q[6];
cz q[5],q[7];
cz q[5],q[8];
cz q[5],q[9];
cz q[5],q[10];
cz q[5],q[11];
cz q[5],q[12];
cz q[5],q[13];
cz q[5],q[14];
cz q[5],q[15];
cz q[5],q[16];
cz q[5],q[17];
cz q[5],q[18];
cz q[5],q[19];
cz q[5],q[20];
cz q[5],q[21];
cz q[5],q[22];
cz q[5],q[23];
cz q[5],q[24];
cz q[5],q[25];
cz q[5],q[26];
cz q[5],q[27];
cz q[5],q[28];
cz q[5],q[29];
cz q[6],q[7];
cz q[6],q[8];
cz q[6],q[9];
cz q[6],q[10];
cz q[6],q[11];
cz q[6],q[12];
cz q[6],q[13];
cz q[6],q[14];
cz q[6],q[15];
cz q[6],q[16];
cz q[6],q[17];
cz q[6],q[18];
cz q[6],q[19];
cz q[6],q[20];
cz q[6],q[21];
cz q[6],q[22];
cz q[6],q[23];
cz q[6],q[24];
cz q[6],q[25];
cz q[6],q[26];
cz q[6],q[27];
cz q[6],q[28];
cz q[6],q[29];
cz q[7],q[8];
cz q[7],q[9];
cz q[7],q[10];
cz q[7],q[11];
cz q[7],q[12];
cz q[7],q[13];
cz q[7],q[14];
cz q[7],q[15];
cz q[7],q[16];
cz q[7],q[17];
cz q[7],q[18];
cz q[7],q[19];
cz q[7],q[20];
cz q[7],q[21];
cz q[7],q[22];
cz q[7],q[23];
cz q[7],q[24];
cz q[7],q[25];
cz q[7],q[26];
cz q[7],q[27];
cz q[7],q[28];
cz q[7],q[29];
cz q[8],q[9];
cz q[8],q[10];
cz q[8],q[11];
cz q[8],q[12];
cz q[8],q[13];
cz q[8],q[14];
cz q[8],q[15];
cz q[8],q[16];
cz q[8],q[17];
cz q[8],q[18];
cz q[8],q[19];
cz q[8],q[20];
cz q[8],q[21];
cz q[8],q[22];
cz q[8],q[23];
cz q[8],q[24];
cz q[8],q[25];
cz q[8],q[26];
cz q[8],q[27];
cz q[8],q[28];
cz q[8],q[29];
cz q[9],q[10];
cz q[9],q[11];
cz q[9],q[12];
cz q[9],q[13];
cz q[9],q[14];
cz q[9],q[15];
cz q[9],q[16];
cz q[9],q[17];
cz q[9],q[18];
cz q[9],q[19];
cz q[9],q[20];
cz q[9],q[21];
cz q[9],q[22];
cz q[9],q[23];
cz q[9],q[24];
cz q[9],q[25];
cz q[9],q[26];
cz q[9],q[27];
cz q[9],q[28];
cz q[9],q[29];
cz q[10],q[11];
cz q[10],q[12];
cz q[10],q[13];
cz q[10],q[14];
cz q[10],q[15];
cz q[10],q[16];
cz q[10],q[17];
cz q[10],q[18];
cz q[10],q[19];
cz q[10],q[20];
cz q[10],q[21];
cz q[10],q[22];
cz q[10],q[23];
cz q[10],q[24];
cz q[10],q[25];
cz q[10],q[26];
cz q[10],q[27];
cz q[10],q[28];
cz q[10],q[29];
cz q[11],q[12];
cz q[11],q[13];
cz q[11],q[14];
cz q[11],q[15];
cz q[11],q[16];
cz q[11],q[17];
cz q[11],q[18];
cz q[11],q[19];
cz q[11],q[20];
cz q[11],q[21];
cz q[11],q[22];
cz q[11],q[23];
cz q[11],q[24];
cz q[11],q[25];
cz q[11],q[26];
cz q[11],q[27];
cz q[11],q[28];
cz q[11],q[29];
cz q[12],q[13];
cz q[12],q[14];
cz q[12],q[15];
cz q[12],q[16];
cz q[12],q[17];
cz q[12],q[18];
cz q[12],q[19];
cz q[12],q[20];
cz q[12],q[21];
cz q[12],q[22];
cz q[12],q[23];
cz q[12],q[24];
cz q[12],q[25];
cz q[12],q[26];
cz q[12],q[27];
cz q[12],q[28];
cz q[12],q[29];
cz q[13],q[14];
cz q[13],q[15];
cz q[13],q[16];
cz q[13],q[17];
cz q[13],q[18];
cz q[13],q[19];
cz q[13],q[20];
cz q[13],q[21];
cz q[13],q[22];
cz q[13],q[23];
cz q[13],q[24];
cz q[13],q[25];
cz q[13],q[26];
cz q[13],q[27];
cz q[13],q[28];
cz q[13],q[29];
cz q[14],q[15];
cz q[14],q[16];
cz q[14],q[17];
cz q[14],q[18];
cz q[14],q[19];
cz q[14],q[20];
cz q[14],q[21];
cz q[14],q[22];
cz q[14],q[23];
cz q[14],q[24];
cz q[14],q[25];
cz q[14],q[26];
cz q[14],q[27];
cz q[14],q[28];
cz q[14],q[29];
cz q[15],q[16];
cz q[15],q[17];
cz q[15],q[18];
cz q[15],q[19];
cz q[15],q[20];
cz q[15],q[21];
cz q[15],q[22];
cz q[15],q[23];
cz q[15],q[24];
cz q[15],q[25];
cz q[15],q[26];
cz q[15],q[27];
cz q[15],q[28];
cz q[15],q[29];
cz q[16],q[17];
cz q[16],q[18];
cz q[16],q[19];
cz q[16],q[20];
cz q[16],q[21];
cz q[16],q[22];
cz q[16],q[23];
cz q[16],q[24];
cz q[16],q[25];
cz q[16],q[26];
cz q[16],q[27];
cz q[16],q[28];
cz q[16],q[29];
cz q[17],q[18];
cz q[17],q[19];
cz q[17],q[20];
cz q[17],q[21];
cz q[17],q[22];
cz q[17],q[23];
cz q[17],q[24];
cz q[17],q[25];
cz q[17],q[26];
cz q[17],q[27];
cz q[17],q[28];
cz q[17],q[29];
cz q[18],q[19];
cz q[18],q[20];
cz q[18],q[21];
cz q[18],q[22];
cz q[18],q[23];
cz q[18],q[24];
cz q[18],q[25];
cz q[18],q[26];
cz q[18],q[27];
cz q[18],q[28];
cz q[18],q[29];
cz q[19],q[20];
cz q[19],q[21];
cz q[19],q[22];
cz q[19],q[23];
cz q[19],q[24];
cz q[19],q[25];
cz q[19],q[26];
cz q[19],q[27];
cz q[19],q[28];
cz q[19],q[29];
cz q[20],q[21];
cz q[20],q[22];
cz q[20],q[23];
cz q[20],q[24];
cz q[20],q[25];
cz q[20],q[26];
cz q[20],q[27];
cz q[20],q[28];
cz q[20],q[29];
cz q[21],q[22];
cz q[21],q[23];
cz q[21],q[24];
cz q[21],q[25];
cz q[21],q[26];
cz q[21],q[27];
cz q[21],q[28];
cz q[21],q[29];
cz q[22],q[23];
cz q[22],q[24];
cz q[22],q[25];
cz q[22],q[26];
cz q[22],q[27];
cz q[22],q[28];
cz q[22],q[29];
cz q[23],q[24];
cz q[23],q[25];
cz q[23],q[26];
cz q[23],q[27];
cz q[23],q[28];
cz q[23],q[29];
cz q[24],q[25];
cz q[24],q[26];
cz q[24],q[27];
cz q[24],q[28];
cz q[24],q[29];
cz q[25],q[26];
cz q[25],q[27];
cz q[25],q[28];
cz q[25],q[29];
cz q[26],q[27];
cz q[26],q[28];
cz q[26],q[29];
cz q[27],q[28];
cz q[27],q[29];
cz q[28],q[29];
ry(1.571521200000000) q[0];
rz(0.922771930000000) q[0];
ry(1.946857400000000) q[1];
rz(2.839492100000000) q[1];
ry(0.248041400000000) q[2];
rz(0.263260250000000) q[2];
ry(0.780389820000000) q[3];
rz(0.132352240000000) q[3];
ry(2.739466900000000) q[4];
rz(0.925148710000000) q[4];
ry(0.197701130000000) q[5];
rz(2.916034700000000) q[5];
ry(2.373297800000000) q[6];
rz(2.308166500000000) q[6];
ry(0.089765074000000) q[7];
rz(1.098686100000000) q[7];
ry(0.180988060000000) q[8];
rz(1.151662500000000) q[8];
ry(0.073284471000000) q[9];
rz(0.170810180000000) q[9];
ry(3.140534500000000) q[10];
rz(2.832372100000000) q[10];
ry(2.923676100000000) q[11];
rz(0.621171090000000) q[11];
ry(0.685919860000000) q[12];
rz(1.283475500000000) q[12];
ry(0.484112100000000) q[13];
rz(1.952230200000000) q[13];
ry(1.365359800000000) q[14];
rz(0.463717320000000) q[14];
ry(0.148544613552436) q[15];
rz(2.421344800000000) q[15];
ry(0.237758410000000) q[16];
rz(1.957175300000000) q[16];
ry(1.255472300000000) q[17];
rz(3.109010500000000) q[17];
ry(1.501286800000000) q[18];
rz(2.533434800000000) q[18];
ry(1.341386200000000) q[19];
rz(1.690394300000000) q[19];
ry(0.704046380000000) q[20];
rz(1.973503300000000) q[20];
ry(3.093171100000000) q[21];
rz(2.645610500000000) q[21];
ry(1.686210300000000) q[22];
rz(2.415592200000000) q[22];
ry(1.127550500000000) q[23];
rz(2.706017900000000) q[23];
ry(1.495526500000000) q[24];
rz(2.686870900000000) q[24];
ry(2.869952900000000) q[25];
rz(1.888066100000000) q[25];
ry(2.316263600000000) q[26];
rz(2.197748700000000) q[26];
ry(1.928439100000000) q[27];
rz(0.335580070000000) q[27];
ry(2.239341500000000) q[28];
rz(0.430487770000000) q[28];
ry(1.888107000000000) q[29];
rz(2.705316700000000) q[29];
cz q[0],q[1];
cz q[0],q[2];
cz q[0],q[3];
cz q[0],q[4];
cz q[0],q[5];
cz q[0],q[6];
cz q[0],q[7];
cz q[0],q[8];
cz q[0],q[9];
cz q[0],q[10];
cz q[0],q[11];
cz q[0],q[12];
cz q[0],q[13];
cz q[0],q[14];
cz q[0],q[15];
cz q[0],q[16];
cz q[0],q[17];
cz q[0],q[18];
cz q[0],q[19];
cz q[0],q[20];
cz q[0],q[21];
cz q[0],q[22];
cz q[0],q[23];
cz q[0],q[24];
cz q[0],q[25];
cz q[0],q[26];
cz q[0],q[27];
cz q[0],q[28];
cz q[0],q[29];
cz q[1],q[2];
cz q[1],q[3];
cz q[1],q[4];
cz q[1],q[5];
cz q[1],q[6];
cz q[1],q[7];
cz q[1],q[8];
cz q[1],q[9];
cz q[1],q[10];
cz q[1],q[11];
cz q[1],q[12];
cz q[1],q[13];
cz q[1],q[14];
cz q[1],q[15];
cz q[1],q[16];
cz q[1],q[17];
cz q[1],q[18];
cz q[1],q[19];
cz q[1],q[20];
cz q[1],q[21];
cz q[1],q[22];
cz q[1],q[23];
cz q[1],q[24];
cz q[1],q[25];
cz q[1],q[26];
cz q[1],q[27];
cz q[1],q[28];
cz q[1],q[29];
cz q[2],q[3];
cz q[2],q[4];
cz q[2],q[5];
cz q[2],q[6];
cz q[2],q[7];
cz q[2],q[8];
cz q[2],q[9];
cz q[2],q[10];
cz q[2],q[11];
cz q[2],q[12];
cz q[2],q[13];
cz q[2],q[14];
cz q[2],q[15];
cz q[2],q[16];
cz q[2],q[17];
cz q[2],q[18];
cz q[2],q[19];
cz q[2],q[20];
cz q[2],q[21];
cz q[2],q[22];
cz q[2],q[23];
cz q[2],q[24];
cz q[2],q[25];
cz q[2],q[26];
cz q[2],q[27];
cz q[2],q[28];
cz q[2],q[29];
cz q[3],q[4];
cz q[3],q[5];
cz q[3],q[6];
cz q[3],q[7];
cz q[3],q[8];
cz q[3],q[9];
cz q[3],q[10];
cz q[3],q[11];
cz q[3],q[12];
cz q[3],q[13];
cz q[3],q[14];
cz q[3],q[15];
cz q[3],q[16];
cz q[3],q[17];
cz q[3],q[18];
cz q[3],q[19];
cz q[3],q[20];
cz q[3],q[21];
cz q[3],q[22];
cz q[3],q[23];
cz q[3],q[24];
cz q[3],q[25];
cz q[3],q[26];
cz q[3],q[27];
cz q[3],q[28];
cz q[3],q[29];
cz q[4],q[5];
cz q[4],q[6];
cz q[4],q[7];
cz q[4],q[8];
cz q[4],q[9];
cz q[4],q[10];
cz q[4],q[11];
cz q[4],q[12];
cz q[4],q[13];
cz q[4],q[14];
cz q[4],q[15];
cz q[4],q[16];
cz q[4],q[17];
cz q[4],q[18];
cz q[4],q[19];
cz q[4],q[20];
cz q[4],q[21];
cz q[4],q[22];
cz q[4],q[23];
cz q[4],q[24];
cz q[4],q[25];
cz q[4],q[26];
cz q[4],q[27];
cz q[4],q[28];
cz q[4],q[29];
cz q[5],q[6];
cz q[5],q[7];
cz q[5],q[8];
cz q[5],q[9];
cz q[5],q[10];
cz q[5],q[11];
cz q[5],q[12];
cz q[5],q[13];
cz q[5],q[14];
cz q[5],q[15];
cz q[5],q[16];
cz q[5],q[17];
cz q[5],q[18];
cz q[5],q[19];
cz q[5],q[20];
cz q[5],q[21];
cz q[5],q[22];
cz q[5],q[23];
cz q[5],q[24];
cz q[5],q[25];
cz q[5],q[26];
cz q[5],q[27];
cz q[5],q[28];
cz q[5],q[29];
cz q[6],q[7];
cz q[6],q[8];
cz q[6],q[9];
cz q[6],q[10];
cz q[6],q[11];
cz q[6],q[12];
cz q[6],q[13];
cz q[6],q[14];
cz q[6],q[15];
cz q[6],q[16];
cz q[6],q[17];
cz q[6],q[18];
cz q[6],q[19];
cz q[6],q[20];
cz q[6],q[21];
cz q[6],q[22];
cz q[6],q[23];
cz q[6],q[24];
cz q[6],q[25];
cz q[6],q[26];
cz q[6],q[27];
cz q[6],q[28];
cz q[6],q[29];
cz q[7],q[8];
cz q[7],q[9];
cz q[7],q[10];
cz q[7],q[11];
cz q[7],q[12];
cz q[7],q[13];
cz q[7],q[14];
cz q[7],q[15];
cz q[7],q[16];
cz q[7],q[17];
cz q[7],q[18];
cz q[7],q[19];
cz q[7],q[20];
cz q[7],q[21];
cz q[7],q[22];
cz q[7],q[23];
cz q[7],q[24];
cz q[7],q[25];
cz q[7],q[26];
cz q[7],q[27];
cz q[7],q[28];
cz q[7],q[29];
cz q[8],q[9];
cz q[8],q[10];
cz q[8],q[11];
cz q[8],q[12];
cz q[8],q[13];
cz q[8],q[14];
cz q[8],q[15];
cz q[8],q[16];
cz q[8],q[17];
cz q[8],q[18];
cz q[8],q[19];
cz q[8],q[20];
cz q[8],q[21];
cz q[8],q[22];
cz q[8],q[23];
cz q[8],q[24];
cz q[8],q[25];
cz q[8],q[26];
cz q[8],q[27];
cz q[8],q[28];
cz q[8],q[29];
cz q[9],q[10];
cz q[9],q[11];
cz q[9],q[12];
cz q[9],q[13];
cz q[9],q[14];
cz q[9],q[15];
cz q[9],q[16];
cz q[9],q[17];
cz q[9],q[18];
cz q[9],q[19];
cz q[9],q[20];
cz q[9],q[21];
cz q[9],q[22];
cz q[9],q[23];
cz q[9],q[24];
cz q[9],q[25];
cz q[9],q[26];
cz q[9],q[27];
cz q[9],q[28];
cz q[9],q[29];
cz q[10],q[11];
cz q[10],q[12];
cz q[10],q[13];
cz q[10],q[14];
cz q[10],q[15];
cz q[10],q[16];
cz q[10],q[17];
cz q[10],q[18];
cz q[10],q[19];
cz q[10],q[20];
cz q[10],q[21];
cz q[10],q[22];
cz q[10],q[23];
cz q[10],q[24];
cz q[10],q[25];
cz q[10],q[26];
cz q[10],q[27];
cz q[10],q[28];
cz q[10],q[29];
cz q[11],q[12];
cz q[11],q[13];
cz q[11],q[14];
cz q[11],q[15];
cz q[11],q[16];
cz q[11],q[17];
cz q[11],q[18];
cz q[11],q[19];
cz q[11],q[20];
cz q[11],q[21];
cz q[11],q[22];
cz q[11],q[23];
cz q[11],q[24];
cz q[11],q[25];
cz q[11],q[26];
cz q[11],q[27];
cz q[11],q[28];
cz q[11],q[29];
cz q[12],q[13];
cz q[12],q[14];
cz q[12],q[15];
cz q[12],q[16];
cz q[12],q[17];
cz q[12],q[18];
cz q[12],q[19];
cz q[12],q[20];
cz q[12],q[21];
cz q[12],q[22];
cz q[12],q[23];
cz q[12],q[24];
cz q[12],q[25];
cz q[12],q[26];
cz q[12],q[27];
cz q[12],q[28];
cz q[12],q[29];
cz q[13],q[14];
cz q[13],q[15];
cz q[13],q[16];
cz q[13],q[17];
cz q[13],q[18];
cz q[13],q[19];
cz q[13],q[20];
cz q[13],q[21];
cz q[13],q[22];
cz q[13],q[23];
cz q[13],q[24];
cz q[13],q[25];
cz q[13],q[26];
cz q[13],q[27];
cz q[13],q[28];
cz q[13],q[29];
cz q[14],q[15];
cz q[14],q[16];
cz q[14],q[17];
cz q[14],q[18];
cz q[14],q[19];
cz q[14],q[20];
cz q[14],q[21];
cz q[14],q[22];
cz q[14],q[23];
cz q[14],q[24];
cz q[14],q[25];
cz q[14],q[26];
cz q[14],q[27];
cz q[14],q[28];
cz q[14],q[29];
cz q[15],q[16];
cz q[15],q[17];
cz q[15],q[18];
cz q[15],q[19];
cz q[15],q[20];
cz q[15],q[21];
cz q[15],q[22];
cz q[15],q[23];
cz q[15],q[24];
cz q[15],q[25];
cz q[15],q[26];
cz q[15],q[27];
cz q[15],q[28];
cz q[15],q[29];
cz q[16],q[17];
cz q[16],q[18];
cz q[16],q[19];
cz q[16],q[20];
cz q[16],q[21];
cz q[16],q[22];
cz q[16],q[23];
cz q[16],q[24];
cz q[16],q[25];
cz q[16],q[26];
cz q[16],q[27];
cz q[16],q[28];
cz q[16],q[29];
cz q[17],q[18];
cz q[17],q[19];
cz q[17],q[20];
cz q[17],q[21];
cz q[17],q[22];
cz q[17],q[23];
cz q[17],q[24];
cz q[17],q[25];
cz q[17],q[26];
cz q[17],q[27];
cz q[17],q[28];
cz q[17],q[29];
cz q[18],q[19];
cz q[18],q[20];
cz q[18],q[21];
cz q[18],q[22];
cz q[18],q[23];
cz q[18],q[24];
cz q[18],q[25];
cz q[18],q[26];
cz q[18],q[27];
cz q[18],q[28];
cz q[18],q[29];
cz q[19],q[20];
cz q[19],q[21];
cz q[19],q[22];
cz q[19],q[23];
cz q[19],q[24];
cz q[19],q[25];
cz q[19],q[26];
cz q[19],q[27];
cz q[19],q[28];
cz q[19],q[29];
cz q[20],q[21];
cz q[20],q[22];
cz q[20],q[23];
cz q[20],q[24];
cz q[20],q[25];
cz q[20],q[26];
cz q[20],q[27];
cz q[20],q[28];
cz q[20],q[29];
cz q[21],q[22];
cz q[21],q[23];
cz q[21],q[24];
cz q[21],q[25];
cz q[21],q[26];
cz q[21],q[27];
cz q[21],q[28];
cz q[21],q[29];
cz q[22],q[23];
cz q[22],q[24];
cz q[22],q[25];
cz q[22],q[26];
cz q[22],q[27];
cz q[22],q[28];
cz q[22],q[29];
cz q[23],q[24];
cz q[23],q[25];
cz q[23],q[26];
cz q[23],q[27];
cz q[23],q[28];
cz q[23],q[29];
cz q[24],q[25];
cz q[24],q[26];
cz q[24],q[27];
cz q[24],q[28];
cz q[24],q[29];
cz q[25],q[26];
cz q[25],q[27];
cz q[25],q[28];
cz q[25],q[29];
cz q[26],q[27];
cz q[26],q[28];
cz q[26],q[29];
cz q[27],q[28];
cz q[27],q[29];
cz q[28],q[29];
