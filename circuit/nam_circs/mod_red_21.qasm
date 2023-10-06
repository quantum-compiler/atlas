OPENQASM 2.0;
include "qelib1.inc";
qreg q[11];
h q[2];
h q[4];
x q[5];
h q[6];
h q[8];
h q[9];
cx q[3],q[4];
cx q[5],q[6];
cx q[7],q[9];
rz(pi*-0.250000) q[4];
rz(pi*-0.250000) q[6];
rz(pi*-0.250000) q[9];
cx q[1],q[4];
rz(pi*0.250000) q[4];
cx q[3],q[4];
rz(pi*-0.250000) q[4];
cx q[1],q[4];
cx q[1],q[3];
rz(pi*0.250000) q[4];
rz(pi*-0.250000) q[3];
h q[4];
cx q[1],q[3];
x q[4];
rz(pi*0.250000) q[1];
rz(pi*0.250000) q[3];
cx q[4],q[6];
rz(pi*0.250000) q[6];
cx q[5],q[6];
rz(pi*-0.250000) q[6];
cx q[4],q[6];
cx q[4],q[5];
rz(pi*0.250000) q[6];
rz(pi*-0.250000) q[5];
h q[6];
cx q[4],q[5];
x q[6];
rz(pi*0.250000) q[4];
rz(pi*0.250000) q[5];
cx q[6],q[9];
x q[4];
x q[5];
rz(pi*0.250000) q[9];
x q[4];
x q[5];
cx q[7],q[9];
rz(pi*-0.250000) q[9];
cx q[6],q[9];
cx q[6],q[7];
rz(pi*0.250000) q[9];
rz(pi*-0.250000) q[7];
h q[9];
cx q[6],q[7];
cx q[9],q[8];
rz(pi*0.250000) q[6];
rz(pi*0.250000) q[7];
rz(pi*-0.250000) q[8];
x q[6];
h q[7];
cx q[10],q[8];
h q[6];
rz(pi*0.250000) q[8];
cx q[5],q[6];
cx q[9],q[8];
rz(pi*0.250000) q[6];
rz(pi*-0.250000) q[8];
cx q[4],q[6];
cx q[10],q[8];
rz(pi*-0.250000) q[6];
cx q[10],q[9];
rz(pi*0.250000) q[8];
cx q[5],q[6];
rz(pi*-0.250000) q[9];
h q[8];
rz(pi*0.250000) q[6];
cx q[10],q[9];
cx q[8],q[0];
cx q[4],q[6];
rz(pi*0.250000) q[10];
rz(pi*0.250000) q[9];
cx q[4],q[5];
rz(pi*-0.250000) q[6];
rz(pi*0.250000) q[5];
cx q[4],q[5];
rz(pi*-0.250000) q[4];
rz(pi*-0.250000) q[5];
x q[4];
x q[5];
h q[4];
cx q[3],q[4];
rz(pi*0.250000) q[4];
cx q[1],q[4];
rz(pi*-0.250000) q[4];
cx q[3],q[4];
rz(pi*0.250000) q[4];
cx q[1],q[4];
cx q[1],q[3];
rz(pi*-0.250000) q[4];
rz(pi*0.250000) q[3];
cx q[1],q[3];
rz(pi*-0.250000) q[1];
rz(pi*-0.250000) q[3];
cx q[8],q[1];
cx q[3],q[4];
cx q[8],q[5];
cx q[1],q[2];
rz(pi*-0.250000) q[4];
cx q[5],q[6];
cx q[8],q[7];
rz(pi*-0.250000) q[2];
rz(pi*-0.250000) q[6];
rz(pi*-0.250000) q[7];
cx q[0],q[2];
rz(pi*0.250000) q[2];
cx q[1],q[2];
rz(pi*-0.250000) q[2];
cx q[0],q[2];
cx q[0],q[1];
rz(pi*0.250000) q[2];
rz(pi*-0.250000) q[1];
h q[2];
cx q[0],q[1];
x q[2];
rz(pi*0.250000) q[0];
rz(pi*0.250000) q[1];
cx q[2],q[4];
rz(pi*0.250000) q[4];
cx q[3],q[4];
rz(pi*-0.250000) q[4];
cx q[2],q[4];
cx q[2],q[3];
rz(pi*0.250000) q[4];
rz(pi*-0.250000) q[3];
h q[4];
cx q[2],q[3];
x q[4];
rz(pi*0.250000) q[2];
rz(pi*0.250000) q[3];
cx q[4],q[6];
x q[2];
rz(pi*0.250000) q[6];
x q[2];
cx q[5],q[6];
rz(pi*-0.250000) q[6];
cx q[4],q[6];
cx q[4],q[5];
rz(pi*0.250000) q[6];
rz(pi*-0.250000) q[5];
h q[6];
cx q[4],q[5];
x q[6];
rz(pi*0.250000) q[4];
rz(pi*0.250000) q[5];
cx q[6],q[7];
x q[4];
rz(pi*0.250000) q[7];
x q[4];
cx q[8],q[7];
rz(pi*-0.250000) q[7];
cx q[6],q[7];
cx q[6],q[8];
rz(pi*0.250000) q[7];
rz(pi*-0.250000) q[8];
h q[7];
cx q[6],q[8];
rz(pi*0.250000) q[6];
rz(pi*0.250000) q[8];
x q[6];
h q[6];
cx q[5],q[6];
rz(pi*0.250000) q[6];
cx q[4],q[6];
rz(pi*-0.250000) q[6];
cx q[5],q[6];
rz(pi*0.250000) q[6];
cx q[4],q[6];
cx q[4],q[5];
rz(pi*-0.250000) q[6];
rz(pi*0.250000) q[5];
h q[6];
cx q[4],q[5];
rz(pi*-0.250000) q[4];
rz(pi*-0.250000) q[5];
x q[4];
h q[5];
cx q[8],q[5];
rz(pi*0.250000) q[5];
cx q[4],q[5];
rz(pi*-0.250000) q[5];
cx q[8],q[5];
rz(pi*0.250000) q[5];
cx q[4],q[5];
cx q[4],q[8];
rz(pi*-0.250000) q[5];
rz(pi*0.250000) q[8];
h q[5];
cx q[4],q[8];
rz(pi*-0.250000) q[4];
rz(pi*-0.250000) q[8];
h q[4];
cx q[3],q[4];
rz(pi*0.250000) q[4];
cx q[2],q[4];
rz(pi*-0.250000) q[4];
cx q[3],q[4];
rz(pi*0.250000) q[4];
cx q[2],q[4];
cx q[2],q[3];
rz(pi*-0.250000) q[4];
rz(pi*0.250000) q[3];
h q[4];
cx q[2],q[3];
rz(pi*-0.250000) q[2];
rz(pi*-0.250000) q[3];
x q[2];
h q[3];
x q[2];
cx q[8],q[3];
rz(pi*-0.250000) q[3];
cx q[2],q[3];
rz(pi*0.250000) q[3];
cx q[8],q[3];
rz(pi*-0.250000) q[3];
cx q[2],q[3];
cx q[2],q[8];
rz(pi*0.250000) q[3];
rz(pi*-0.250000) q[8];
h q[3];
cx q[2],q[8];
rz(pi*0.250000) q[2];
rz(pi*0.250000) q[8];
x q[2];
h q[2];
cx q[1],q[2];
rz(pi*0.250000) q[2];
cx q[0],q[2];
rz(pi*-0.250000) q[2];
cx q[1],q[2];
rz(pi*0.250000) q[2];
cx q[0],q[2];
cx q[0],q[1];
rz(pi*-0.250000) q[2];
rz(pi*0.250000) q[1];
h q[2];
cx q[0],q[1];
rz(pi*-0.250000) q[0];
rz(pi*-0.250000) q[1];
x q[0];
h q[1];
cx q[8],q[1];
rz(pi*0.250000) q[1];
cx q[0],q[1];
rz(pi*-0.250000) q[1];
cx q[8],q[1];
rz(pi*0.250000) q[1];
cx q[0],q[1];
cx q[0],q[8];
rz(pi*-0.250000) q[1];
rz(pi*0.250000) q[8];
h q[1];
cx q[0],q[8];
rz(pi*-0.250000) q[0];
rz(pi*-0.250000) q[8];
x q[0];
h q[8];
cx q[9],q[8];
rz(pi*0.250000) q[8];
cx q[10],q[8];
rz(pi*-0.250000) q[8];
cx q[9],q[8];
rz(pi*0.250000) q[8];
cx q[10],q[8];
cx q[10],q[9];
rz(pi*-0.250000) q[8];
rz(pi*0.250000) q[9];
h q[8];
cx q[10],q[9];
rz(pi*-0.250000) q[10];
rz(pi*-0.250000) q[9];
