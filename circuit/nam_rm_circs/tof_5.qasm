OPENQASM 2.0;
include "qelib1.inc";
qreg q[9];
h q[5];
h q[6];
h q[7];
h q[8];
cx q[1],q[5];
rz(pi*-0.250000) q[5];
cx q[0],q[5];
rz(pi*0.250000) q[5];
cx q[1],q[5];
rz(pi*-0.250000) q[5];
cx q[0],q[5];
cx q[0],q[1];
rz(pi*0.250000) q[5];
cx q[0],q[1];
h q[5];
cx q[5],q[6];
rz(pi*-0.250000) q[6];
cx q[2],q[6];
rz(pi*0.250000) q[6];
cx q[5],q[6];
rz(pi*-0.250000) q[6];
cx q[2],q[6];
cx q[2],q[5];
rz(pi*0.250000) q[6];
cx q[2],q[5];
h q[6];
cx q[6],q[7];
rz(pi*-0.250000) q[7];
cx q[3],q[7];
rz(pi*0.250000) q[7];
cx q[6],q[7];
rz(pi*-0.250000) q[7];
cx q[3],q[7];
cx q[3],q[6];
rz(pi*0.250000) q[7];
cx q[3],q[6];
h q[7];
cx q[7],q[8];
rz(pi*-0.250000) q[8];
cx q[4],q[8];
rz(pi*0.250000) q[8];
cx q[7],q[8];
rz(pi*-0.250000) q[8];
cx q[4],q[8];
cx q[4],q[7];
rz(pi*0.250000) q[8];
rz(pi*-0.250000) q[7];
h q[8];
cx q[4],q[7];
rz(pi*0.250000) q[4];
rz(pi*0.250000) q[7];
h q[7];
cx q[6],q[7];
rz(pi*0.250000) q[7];
cx q[3],q[7];
rz(pi*-0.250000) q[7];
cx q[6],q[7];
rz(pi*0.250000) q[7];
cx q[3],q[7];
cx q[3],q[6];
rz(pi*-0.250000) q[7];
cx q[3],q[6];
h q[7];
h q[6];
cx q[5],q[6];
rz(pi*0.250000) q[6];
cx q[2],q[6];
rz(pi*-0.250000) q[6];
cx q[5],q[6];
rz(pi*0.250000) q[6];
cx q[2],q[6];
cx q[2],q[5];
rz(pi*-0.250000) q[6];
cx q[2],q[5];
h q[6];
h q[5];
cx q[1],q[5];
rz(pi*0.250000) q[5];
cx q[0],q[5];
rz(pi*-0.250000) q[5];
cx q[1],q[5];
rz(pi*0.250000) q[5];
cx q[0],q[5];
cx q[0],q[1];
rz(pi*-0.250000) q[5];
cx q[0],q[1];
h q[5];
