OPENQASM 2.0;
include "qelib1.inc";
qreg q[34];
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
h q[30];
h q[31];
h q[32];
h q[33];
x q[0];
cp(1.795114200000000) q[0],q[1];
cp(-2.692956900000000) q[0],q[2];
cp(0.897271520000000) q[0],q[3];
cp(1.794543000000000) q[0],q[4];
cp(-2.694099200000000) q[0],q[5];
cp(0.894986850000000) q[0],q[6];
cp(1.789973700000000) q[0],q[7];
cp(-2.703237900000000) q[0],q[8];
cp(0.876709530000000) q[0],q[9];
cp(1.753419100000000) q[0],q[10];
cp(-2.776347200000000) q[0],q[11];
cp(0.730490940000000) q[0],q[12];
cp(1.460981900000000) q[0],q[13];
cp(2.921963800000000) q[0],q[14];
cp(-0.439257800000000) q[0],q[15];
cp(-0.878515590000000) q[0],q[16];
cp(-1.757031200000000) q[0],q[17];
cp(2.769122900000000) q[0],q[18];
cp(-0.744939420000000) q[0],q[19];
cp(-1.489878800000000) q[0],q[20];
cp(-2.979757700000000) q[0],q[21];
cp(0.323669950000000) q[0],q[22];
cp(0.647339890000000) q[0],q[23];
cp(1.294679800000000) q[0],q[24];
cp(2.589359600000000) q[0],q[25];
cp(-1.104466200000000) q[0],q[26];
cp(-2.208932300000000) q[0],q[27];
cp(1.865320600000000) q[0],q[28];
cp(-2.552544031041707) q[0],q[29];
cp(1.178097245096172) q[0],q[30];
cp(2.356194490192345) q[0],q[31];
cp(-1.570796326794897) q[0],q[32];
cp(3.141592653589793) q[0],q[33];
h q[1];
cp(-1.570796326794897) q[2],q[1];
h q[2];
cp(-0.785398163397448) q[3],q[1];
cp(-1.570796326794897) q[3],q[2];
h q[3];
cp(-0.392699081698724) q[4],q[1];
cp(-0.785398163397448) q[4],q[2];
cp(-1.570796326794897) q[4],q[3];
h q[4];
cp(-0.196349540849362) q[5],q[1];
cp(-0.392699081698724) q[5],q[2];
cp(-0.785398163397448) q[5],q[3];
cp(-1.570796326794897) q[5],q[4];
h q[5];
cp(-0.098174770424681) q[6],q[1];
cp(-0.196349540849362) q[6],q[2];
cp(-0.392699081698724) q[6],q[3];
cp(-0.785398163397448) q[6],q[4];
cp(-1.570796326794897) q[6],q[5];
h q[6];
cp(-0.049087385212341) q[7],q[1];
cp(-0.098174770424681) q[7],q[2];
cp(-0.196349540849362) q[7],q[3];
cp(-0.392699081698724) q[7],q[4];
cp(-0.785398163397448) q[7],q[5];
cp(-1.570796326794897) q[7],q[6];
h q[7];
cp(-0.024543692606170) q[8],q[1];
cp(-0.049087385212341) q[8],q[2];
cp(-0.098174770424681) q[8],q[3];
cp(-0.196349540849362) q[8],q[4];
cp(-0.392699081698724) q[8],q[5];
cp(-0.785398163397448) q[8],q[6];
cp(-1.570796326794897) q[8],q[7];
h q[8];
cp(-0.012271846303085) q[9],q[1];
cp(-0.024543692606170) q[9],q[2];
cp(-0.049087385212341) q[9],q[3];
cp(-0.098174770424681) q[9],q[4];
cp(-0.196349540849362) q[9],q[5];
cp(-0.392699081698724) q[9],q[6];
cp(-0.785398163397448) q[9],q[7];
cp(-1.570796326794897) q[9],q[8];
h q[9];
cp(-0.006135923151543) q[10],q[1];
cp(-0.003067961575771) q[11],q[1];
cp(-0.001533980787886) q[12],q[1];
cp(-0.000766990393943) q[13],q[1];
cp(-0.000383495196971) q[14],q[1];
cp(-0.000191747598486) q[15],q[1];
cp(-0.000095873799243) q[16],q[1];
cp(-0.000047936899621) q[17],q[1];
cp(-0.000023968449811) q[18],q[1];
cp(-0.000011984224905) q[19],q[1];
cp(-0.000005992112453) q[20],q[1];
cp(-0.000002996056226) q[21],q[1];
cp(-0.000001498028113) q[22],q[1];
cp(-0.000000749014057) q[23],q[1];
cp(-0.000000374507028) q[24],q[1];
cp(-0.000000187253514) q[25],q[1];
cp(-0.000000093626757) q[26],q[1];
cp(-0.000000046813379) q[27],q[1];
cp(-0.000000023406689) q[28],q[1];
cp(-0.000000011703345) q[29],q[1];
cp(-0.000000005851672) q[30],q[1];
cp(-0.000000002925836) q[31],q[1];
cp(-0.000000001462918) q[32],q[1];
cp(-0.000000000731459) q[33],q[1];
cp(-0.012271846303085) q[10],q[2];
cp(-0.006135923151543) q[11],q[2];
cp(-0.003067961575771) q[12],q[2];
cp(-0.001533980787886) q[13],q[2];
cp(-0.000766990393943) q[14],q[2];
cp(-0.000383495196971) q[15],q[2];
cp(-0.000191747598486) q[16],q[2];
cp(-0.000095873799243) q[17],q[2];
cp(-0.000047936899621) q[18],q[2];
cp(-0.000023968449811) q[19],q[2];
cp(-0.000011984224905) q[20],q[2];
cp(-0.000005992112453) q[21],q[2];
cp(-0.000002996056226) q[22],q[2];
cp(-0.000001498028113) q[23],q[2];
cp(-0.000000749014057) q[24],q[2];
cp(-0.000000374507028) q[25],q[2];
cp(-0.000000187253514) q[26],q[2];
cp(-0.000000093626757) q[27],q[2];
cp(-0.000000046813379) q[28],q[2];
cp(-0.000000023406689) q[29],q[2];
cp(-0.000000011703345) q[30],q[2];
cp(-0.000000005851672) q[31],q[2];
cp(-0.000000002925836) q[32],q[2];
cp(-0.000000001462918) q[33],q[2];
cp(-0.024543692606170) q[10],q[3];
cp(-0.012271846303085) q[11],q[3];
cp(-0.006135923151543) q[12],q[3];
cp(-0.003067961575771) q[13],q[3];
cp(-0.001533980787886) q[14],q[3];
cp(-0.000766990393943) q[15],q[3];
cp(-0.000383495196971) q[16],q[3];
cp(-0.000191747598486) q[17],q[3];
cp(-0.000095873799243) q[18],q[3];
cp(-0.000047936899621) q[19],q[3];
cp(-0.000023968449811) q[20],q[3];
cp(-0.000011984224905) q[21],q[3];
cp(-0.000005992112453) q[22],q[3];
cp(-0.000002996056226) q[23],q[3];
cp(-0.000001498028113) q[24],q[3];
cp(-0.000000749014057) q[25],q[3];
cp(-0.000000374507028) q[26],q[3];
cp(-0.000000187253514) q[27],q[3];
cp(-0.000000093626757) q[28],q[3];
cp(-0.000000046813379) q[29],q[3];
cp(-0.000000023406689) q[30],q[3];
cp(-0.000000011703345) q[31],q[3];
cp(-0.000000005851672) q[32],q[3];
cp(-0.000000002925836) q[33],q[3];
cp(-0.049087385212341) q[10],q[4];
cp(-0.024543692606170) q[11],q[4];
cp(-0.012271846303085) q[12],q[4];
cp(-0.006135923151543) q[13],q[4];
cp(-0.003067961575771) q[14],q[4];
cp(-0.001533980787886) q[15],q[4];
cp(-0.000766990393943) q[16],q[4];
cp(-0.000383495196971) q[17],q[4];
cp(-0.000191747598486) q[18],q[4];
cp(-0.000095873799243) q[19],q[4];
cp(-0.000047936899621) q[20],q[4];
cp(-0.000023968449811) q[21],q[4];
cp(-0.000011984224905) q[22],q[4];
cp(-0.000005992112453) q[23],q[4];
cp(-0.000002996056226) q[24],q[4];
cp(-0.000001498028113) q[25],q[4];
cp(-0.000000749014057) q[26],q[4];
cp(-0.000000374507028) q[27],q[4];
cp(-0.000000187253514) q[28],q[4];
cp(-0.000000093626757) q[29],q[4];
cp(-0.000000046813379) q[30],q[4];
cp(-0.000000023406689) q[31],q[4];
cp(-0.000000011703345) q[32],q[4];
cp(-0.000000005851672) q[33],q[4];
cp(-0.098174770424681) q[10],q[5];
cp(-0.049087385212341) q[11],q[5];
cp(-0.024543692606170) q[12],q[5];
cp(-0.012271846303085) q[13],q[5];
cp(-0.006135923151543) q[14],q[5];
cp(-0.003067961575771) q[15],q[5];
cp(-0.001533980787886) q[16],q[5];
cp(-0.000766990393943) q[17],q[5];
cp(-0.000383495196971) q[18],q[5];
cp(-0.000191747598486) q[19],q[5];
cp(-0.000095873799243) q[20],q[5];
cp(-0.000047936899621) q[21],q[5];
cp(-0.000023968449811) q[22],q[5];
cp(-0.000011984224905) q[23],q[5];
cp(-0.000005992112453) q[24],q[5];
cp(-0.000002996056226) q[25],q[5];
cp(-0.000001498028113) q[26],q[5];
cp(-0.000000749014057) q[27],q[5];
cp(-0.000000374507028) q[28],q[5];
cp(-0.000000187253514) q[29],q[5];
cp(-0.000000093626757) q[30],q[5];
cp(-0.000000046813379) q[31],q[5];
cp(-0.000000023406689) q[32],q[5];
cp(-0.000000011703345) q[33],q[5];
cp(-0.196349540849362) q[10],q[6];
cp(-0.098174770424681) q[11],q[6];
cp(-0.049087385212341) q[12],q[6];
cp(-0.024543692606170) q[13],q[6];
cp(-0.012271846303085) q[14],q[6];
cp(-0.006135923151543) q[15],q[6];
cp(-0.003067961575771) q[16],q[6];
cp(-0.001533980787886) q[17],q[6];
cp(-0.000766990393943) q[18],q[6];
cp(-0.000383495196971) q[19],q[6];
cp(-0.000191747598486) q[20],q[6];
cp(-0.000095873799243) q[21],q[6];
cp(-0.000047936899621) q[22],q[6];
cp(-0.000023968449811) q[23],q[6];
cp(-0.000011984224905) q[24],q[6];
cp(-0.000005992112453) q[25],q[6];
cp(-0.000002996056226) q[26],q[6];
cp(-0.000001498028113) q[27],q[6];
cp(-0.000000749014057) q[28],q[6];
cp(-0.000000374507028) q[29],q[6];
cp(-0.000000187253514) q[30],q[6];
cp(-0.000000093626757) q[31],q[6];
cp(-0.000000046813379) q[32],q[6];
cp(-0.000000023406689) q[33],q[6];
cp(-0.392699081698724) q[10],q[7];
cp(-0.196349540849362) q[11],q[7];
cp(-0.098174770424681) q[12],q[7];
cp(-0.049087385212341) q[13],q[7];
cp(-0.024543692606170) q[14],q[7];
cp(-0.012271846303085) q[15],q[7];
cp(-0.006135923151543) q[16],q[7];
cp(-0.003067961575771) q[17],q[7];
cp(-0.001533980787886) q[18],q[7];
cp(-0.000766990393943) q[19],q[7];
cp(-0.000383495196971) q[20],q[7];
cp(-0.000191747598486) q[21],q[7];
cp(-0.000095873799243) q[22],q[7];
cp(-0.000047936899621) q[23],q[7];
cp(-0.000023968449811) q[24],q[7];
cp(-0.000011984224905) q[25],q[7];
cp(-0.000005992112453) q[26],q[7];
cp(-0.000002996056226) q[27],q[7];
cp(-0.000001498028113) q[28],q[7];
cp(-0.000000749014057) q[29],q[7];
cp(-0.000000374507028) q[30],q[7];
cp(-0.000000187253514) q[31],q[7];
cp(-0.000000093626757) q[32],q[7];
cp(-0.000000046813379) q[33],q[7];
cp(-0.785398163397448) q[10],q[8];
cp(-0.392699081698724) q[11],q[8];
cp(-0.196349540849362) q[12],q[8];
cp(-0.098174770424681) q[13],q[8];
cp(-0.049087385212341) q[14],q[8];
cp(-0.024543692606170) q[15],q[8];
cp(-0.012271846303085) q[16],q[8];
cp(-0.006135923151543) q[17],q[8];
cp(-0.003067961575771) q[18],q[8];
cp(-0.001533980787886) q[19],q[8];
cp(-0.000766990393943) q[20],q[8];
cp(-0.000383495196971) q[21],q[8];
cp(-0.000191747598486) q[22],q[8];
cp(-0.000095873799243) q[23],q[8];
cp(-0.000047936899621) q[24],q[8];
cp(-0.000023968449811) q[25],q[8];
cp(-0.000011984224905) q[26],q[8];
cp(-0.000005992112453) q[27],q[8];
cp(-0.000002996056226) q[28],q[8];
cp(-0.000001498028113) q[29],q[8];
cp(-0.000000749014057) q[30],q[8];
cp(-0.000000374507028) q[31],q[8];
cp(-0.000000187253514) q[32],q[8];
cp(-0.000000093626757) q[33],q[8];
cp(-1.570796326794897) q[10],q[9];
cp(-0.785398163397448) q[11],q[9];
cp(-0.392699081698724) q[12],q[9];
cp(-0.196349540849362) q[13],q[9];
cp(-0.098174770424681) q[14],q[9];
cp(-0.049087385212341) q[15],q[9];
cp(-0.024543692606170) q[16],q[9];
cp(-0.012271846303085) q[17],q[9];
cp(-0.006135923151543) q[18],q[9];
cp(-0.003067961575771) q[19],q[9];
cp(-0.001533980787886) q[20],q[9];
cp(-0.000766990393943) q[21],q[9];
cp(-0.000383495196971) q[22],q[9];
cp(-0.000191747598486) q[23],q[9];
cp(-0.000095873799243) q[24],q[9];
cp(-0.000047936899621) q[25],q[9];
cp(-0.000023968449811) q[26],q[9];
cp(-0.000011984224905) q[27],q[9];
cp(-0.000005992112453) q[28],q[9];
cp(-0.000002996056226) q[29],q[9];
cp(-0.000001498028113) q[30],q[9];
cp(-0.000000749014057) q[31],q[9];
cp(-0.000000374507028) q[32],q[9];
cp(-0.000000187253514) q[33],q[9];
h q[10];
cp(-1.570796326794897) q[11],q[10];
h q[11];
cp(-0.785398163397448) q[12],q[10];
cp(-1.570796326794897) q[12],q[11];
h q[12];
cp(-0.392699081698724) q[13],q[10];
cp(-0.785398163397448) q[13],q[11];
cp(-1.570796326794897) q[13],q[12];
h q[13];
cp(-0.196349540849362) q[14],q[10];
cp(-0.392699081698724) q[14],q[11];
cp(-0.785398163397448) q[14],q[12];
cp(-1.570796326794897) q[14],q[13];
h q[14];
cp(-0.098174770424681) q[15],q[10];
cp(-0.196349540849362) q[15],q[11];
cp(-0.392699081698724) q[15],q[12];
cp(-0.785398163397448) q[15],q[13];
cp(-1.570796326794897) q[15],q[14];
h q[15];
cp(-0.049087385212341) q[16],q[10];
cp(-0.098174770424681) q[16],q[11];
cp(-0.196349540849362) q[16],q[12];
cp(-0.392699081698724) q[16],q[13];
cp(-0.785398163397448) q[16],q[14];
cp(-1.570796326794897) q[16],q[15];
h q[16];
cp(-0.024543692606170) q[17],q[10];
cp(-0.049087385212341) q[17],q[11];
cp(-0.098174770424681) q[17],q[12];
cp(-0.196349540849362) q[17],q[13];
cp(-0.392699081698724) q[17],q[14];
cp(-0.785398163397448) q[17],q[15];
cp(-1.570796326794897) q[17],q[16];
h q[17];
cp(-0.012271846303085) q[18],q[10];
cp(-0.024543692606170) q[18],q[11];
cp(-0.049087385212341) q[18],q[12];
cp(-0.098174770424681) q[18],q[13];
cp(-0.196349540849362) q[18],q[14];
cp(-0.392699081698724) q[18],q[15];
cp(-0.785398163397448) q[18],q[16];
cp(-1.570796326794897) q[18],q[17];
h q[18];
cp(-0.006135923151543) q[19],q[10];
cp(-0.012271846303085) q[19],q[11];
cp(-0.024543692606170) q[19],q[12];
cp(-0.049087385212341) q[19],q[13];
cp(-0.098174770424681) q[19],q[14];
cp(-0.196349540849362) q[19],q[15];
cp(-0.392699081698724) q[19],q[16];
cp(-0.785398163397448) q[19],q[17];
cp(-1.570796326794897) q[19],q[18];
h q[19];
cp(-0.003067961575771) q[20],q[10];
cp(-0.006135923151543) q[20],q[11];
cp(-0.012271846303085) q[20],q[12];
cp(-0.024543692606170) q[20],q[13];
cp(-0.049087385212341) q[20],q[14];
cp(-0.098174770424681) q[20],q[15];
cp(-0.196349540849362) q[20],q[16];
cp(-0.392699081698724) q[20],q[17];
cp(-0.785398163397448) q[20],q[18];
cp(-1.570796326794897) q[20],q[19];
h q[20];
cp(-0.001533980787886) q[21],q[10];
cp(-0.003067961575771) q[21],q[11];
cp(-0.006135923151543) q[21],q[12];
cp(-0.012271846303085) q[21],q[13];
cp(-0.024543692606170) q[21],q[14];
cp(-0.049087385212341) q[21],q[15];
cp(-0.098174770424681) q[21],q[16];
cp(-0.196349540849362) q[21],q[17];
cp(-0.392699081698724) q[21],q[18];
cp(-0.785398163397448) q[21],q[19];
cp(-1.570796326794897) q[21],q[20];
h q[21];
cp(-0.000766990393943) q[22],q[10];
cp(-0.001533980787886) q[22],q[11];
cp(-0.003067961575771) q[22],q[12];
cp(-0.006135923151543) q[22],q[13];
cp(-0.012271846303085) q[22],q[14];
cp(-0.024543692606170) q[22],q[15];
cp(-0.049087385212341) q[22],q[16];
cp(-0.098174770424681) q[22],q[17];
cp(-0.196349540849362) q[22],q[18];
cp(-0.392699081698724) q[22],q[19];
cp(-0.785398163397448) q[22],q[20];
cp(-1.570796326794897) q[22],q[21];
h q[22];
cp(-0.000383495196971) q[23],q[10];
cp(-0.000766990393943) q[23],q[11];
cp(-0.001533980787886) q[23],q[12];
cp(-0.003067961575771) q[23],q[13];
cp(-0.006135923151543) q[23],q[14];
cp(-0.012271846303085) q[23],q[15];
cp(-0.024543692606170) q[23],q[16];
cp(-0.049087385212341) q[23],q[17];
cp(-0.098174770424681) q[23],q[18];
cp(-0.196349540849362) q[23],q[19];
cp(-0.392699081698724) q[23],q[20];
cp(-0.785398163397448) q[23],q[21];
cp(-1.570796326794897) q[23],q[22];
h q[23];
cp(-0.000191747598486) q[24],q[10];
cp(-0.000383495196971) q[24],q[11];
cp(-0.000766990393943) q[24],q[12];
cp(-0.001533980787886) q[24],q[13];
cp(-0.003067961575771) q[24],q[14];
cp(-0.006135923151543) q[24],q[15];
cp(-0.012271846303085) q[24],q[16];
cp(-0.024543692606170) q[24],q[17];
cp(-0.049087385212341) q[24],q[18];
cp(-0.098174770424681) q[24],q[19];
cp(-0.196349540849362) q[24],q[20];
cp(-0.392699081698724) q[24],q[21];
cp(-0.785398163397448) q[24],q[22];
cp(-1.570796326794897) q[24],q[23];
h q[24];
cp(-0.000095873799243) q[25],q[10];
cp(-0.000191747598486) q[25],q[11];
cp(-0.000383495196971) q[25],q[12];
cp(-0.000766990393943) q[25],q[13];
cp(-0.001533980787886) q[25],q[14];
cp(-0.003067961575771) q[25],q[15];
cp(-0.006135923151543) q[25],q[16];
cp(-0.012271846303085) q[25],q[17];
cp(-0.024543692606170) q[25],q[18];
cp(-0.049087385212341) q[25],q[19];
cp(-0.098174770424681) q[25],q[20];
cp(-0.196349540849362) q[25],q[21];
cp(-0.392699081698724) q[25],q[22];
cp(-0.785398163397448) q[25],q[23];
cp(-1.570796326794897) q[25],q[24];
h q[25];
cp(-0.000047936899621) q[26],q[10];
cp(-0.000095873799243) q[26],q[11];
cp(-0.000191747598486) q[26],q[12];
cp(-0.000383495196971) q[26],q[13];
cp(-0.000766990393943) q[26],q[14];
cp(-0.001533980787886) q[26],q[15];
cp(-0.003067961575771) q[26],q[16];
cp(-0.006135923151543) q[26],q[17];
cp(-0.012271846303085) q[26],q[18];
cp(-0.024543692606170) q[26],q[19];
cp(-0.049087385212341) q[26],q[20];
cp(-0.098174770424681) q[26],q[21];
cp(-0.196349540849362) q[26],q[22];
cp(-0.392699081698724) q[26],q[23];
cp(-0.785398163397448) q[26],q[24];
cp(-1.570796326794897) q[26],q[25];
h q[26];
cp(-0.000023968449811) q[27],q[10];
cp(-0.000047936899621) q[27],q[11];
cp(-0.000095873799243) q[27],q[12];
cp(-0.000191747598486) q[27],q[13];
cp(-0.000383495196971) q[27],q[14];
cp(-0.000766990393943) q[27],q[15];
cp(-0.001533980787886) q[27],q[16];
cp(-0.003067961575771) q[27],q[17];
cp(-0.006135923151543) q[27],q[18];
cp(-0.012271846303085) q[27],q[19];
cp(-0.024543692606170) q[27],q[20];
cp(-0.049087385212341) q[27],q[21];
cp(-0.098174770424681) q[27],q[22];
cp(-0.196349540849362) q[27],q[23];
cp(-0.392699081698724) q[27],q[24];
cp(-0.785398163397448) q[27],q[25];
cp(-1.570796326794897) q[27],q[26];
h q[27];
cp(-0.000011984224905) q[28],q[10];
cp(-0.000023968449811) q[28],q[11];
cp(-0.000047936899621) q[28],q[12];
cp(-0.000095873799243) q[28],q[13];
cp(-0.000191747598486) q[28],q[14];
cp(-0.000383495196971) q[28],q[15];
cp(-0.000766990393943) q[28],q[16];
cp(-0.001533980787886) q[28],q[17];
cp(-0.003067961575771) q[28],q[18];
cp(-0.006135923151543) q[28],q[19];
cp(-0.012271846303085) q[28],q[20];
cp(-0.024543692606170) q[28],q[21];
cp(-0.049087385212341) q[28],q[22];
cp(-0.098174770424681) q[28],q[23];
cp(-0.196349540849362) q[28],q[24];
cp(-0.392699081698724) q[28],q[25];
cp(-0.785398163397448) q[28],q[26];
cp(-1.570796326794897) q[28],q[27];
h q[28];
cp(-0.000005992112453) q[29],q[10];
cp(-0.000011984224905) q[29],q[11];
cp(-0.000023968449811) q[29],q[12];
cp(-0.000047936899621) q[29],q[13];
cp(-0.000095873799243) q[29],q[14];
cp(-0.000191747598486) q[29],q[15];
cp(-0.000383495196971) q[29],q[16];
cp(-0.000766990393943) q[29],q[17];
cp(-0.001533980787886) q[29],q[18];
cp(-0.003067961575771) q[29],q[19];
cp(-0.006135923151543) q[29],q[20];
cp(-0.012271846303085) q[29],q[21];
cp(-0.024543692606170) q[29],q[22];
cp(-0.049087385212341) q[29],q[23];
cp(-0.098174770424681) q[29],q[24];
cp(-0.196349540849362) q[29],q[25];
cp(-0.392699081698724) q[29],q[26];
cp(-0.785398163397448) q[29],q[27];
cp(-1.570796326794897) q[29],q[28];
h q[29];
cp(-0.000002996056226) q[30],q[10];
cp(-0.000005992112453) q[30],q[11];
cp(-0.000011984224905) q[30],q[12];
cp(-0.000023968449811) q[30],q[13];
cp(-0.000047936899621) q[30],q[14];
cp(-0.000095873799243) q[30],q[15];
cp(-0.000191747598486) q[30],q[16];
cp(-0.000383495196971) q[30],q[17];
cp(-0.000766990393943) q[30],q[18];
cp(-0.001533980787886) q[30],q[19];
cp(-0.003067961575771) q[30],q[20];
cp(-0.006135923151543) q[30],q[21];
cp(-0.012271846303085) q[30],q[22];
cp(-0.024543692606170) q[30],q[23];
cp(-0.049087385212341) q[30],q[24];
cp(-0.098174770424681) q[30],q[25];
cp(-0.196349540849362) q[30],q[26];
cp(-0.392699081698724) q[30],q[27];
cp(-0.785398163397448) q[30],q[28];
cp(-1.570796326794897) q[30],q[29];
h q[30];
cp(-0.000001498028113) q[31],q[10];
cp(-0.000002996056226) q[31],q[11];
cp(-0.000005992112453) q[31],q[12];
cp(-0.000011984224905) q[31],q[13];
cp(-0.000023968449811) q[31],q[14];
cp(-0.000047936899621) q[31],q[15];
cp(-0.000095873799243) q[31],q[16];
cp(-0.000191747598486) q[31],q[17];
cp(-0.000383495196971) q[31],q[18];
cp(-0.000766990393943) q[31],q[19];
cp(-0.001533980787886) q[31],q[20];
cp(-0.003067961575771) q[31],q[21];
cp(-0.006135923151543) q[31],q[22];
cp(-0.012271846303085) q[31],q[23];
cp(-0.024543692606170) q[31],q[24];
cp(-0.049087385212341) q[31],q[25];
cp(-0.098174770424681) q[31],q[26];
cp(-0.196349540849362) q[31],q[27];
cp(-0.392699081698724) q[31],q[28];
cp(-0.785398163397448) q[31],q[29];
cp(-1.570796326794897) q[31],q[30];
h q[31];
cp(-0.000000749014057) q[32],q[10];
cp(-0.000001498028113) q[32],q[11];
cp(-0.000002996056226) q[32],q[12];
cp(-0.000005992112453) q[32],q[13];
cp(-0.000011984224905) q[32],q[14];
cp(-0.000023968449811) q[32],q[15];
cp(-0.000047936899621) q[32],q[16];
cp(-0.000095873799243) q[32],q[17];
cp(-0.000191747598486) q[32],q[18];
cp(-0.000383495196971) q[32],q[19];
cp(-0.000766990393943) q[32],q[20];
cp(-0.001533980787886) q[32],q[21];
cp(-0.003067961575771) q[32],q[22];
cp(-0.006135923151543) q[32],q[23];
cp(-0.012271846303085) q[32],q[24];
cp(-0.024543692606170) q[32],q[25];
cp(-0.049087385212341) q[32],q[26];
cp(-0.098174770424681) q[32],q[27];
cp(-0.196349540849362) q[32],q[28];
cp(-0.392699081698724) q[32],q[29];
cp(-0.785398163397448) q[32],q[30];
cp(-1.570796326794897) q[32],q[31];
h q[32];
cp(-0.000000374507028) q[33],q[10];
cp(-0.000000749014057) q[33],q[11];
cp(-0.000001498028113) q[33],q[12];
cp(-0.000002996056226) q[33],q[13];
cp(-0.000005992112453) q[33],q[14];
cp(-0.000011984224905) q[33],q[15];
cp(-0.000023968449811) q[33],q[16];
cp(-0.000047936899621) q[33],q[17];
cp(-0.000095873799243) q[33],q[18];
cp(-0.000191747598486) q[33],q[19];
cp(-0.000383495196971) q[33],q[20];
cp(-0.000766990393943) q[33],q[21];
cp(-0.001533980787886) q[33],q[22];
cp(-0.003067961575771) q[33],q[23];
cp(-0.006135923151543) q[33],q[24];
cp(-0.012271846303085) q[33],q[25];
cp(-0.024543692606170) q[33],q[26];
cp(-0.049087385212341) q[33],q[27];
cp(-0.098174770424681) q[33],q[28];
cp(-0.196349540849362) q[33],q[29];
cp(-0.392699081698724) q[33],q[30];
cp(-0.785398163397448) q[33],q[31];
cp(-1.570796326794897) q[33],q[32];
h q[33];
