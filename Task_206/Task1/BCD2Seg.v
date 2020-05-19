module BCD2Seg (
	input [3:0] bcd,
	output [7:0] out
);
/*
   BCD  | Seven Segment
A B C D | 0 1 2 3 4 5 6
========|==============
0 0 0 0 | 1 1 1 1 1 1 0
0 0 0 1 | 0 1 1 0 0 0 0
0 0 1 0 | 1 1 0 1 1 0 1
0 0 1 1 | 1 1 1 1 0 0 1

0 1 0 0 | 0 1 1 0 0 1 1
0 1 0 1 | 1 0 1 1 0 1 1
0 1 1 0 | 1 0 1 1 1 1 1
0 1 1 1 | 1 1 1 0 0 0 0

1 0 0 0 | 1 1 1 1 1 1 1
1 0 0 1 | 1 1 1 1 0 1 1


1 0 1 0 | 1 1 1 1 1 1 0
1 0 1 1 | 0 1 1 0 0 0 0

1 1 0 0 | 1 1 0 1 1 0 1
1 1 0 1 | 1 1 1 1 0 0 1
1 1 1 0 | 0 1 1 0 0 1 1
1 1 1 1 | 1 0 1 1 0 1 1

Seg:6 ~((~A&&~B&&~C)||(~A&&B&&C&&D)||(A&&~B&&C))
           AB
C     00 01 10 11
D 00| 0  1  1  1
  01| 0  1  1  1
  10| 1  1  0  1
  11| 1  0  0  1
  
Seg:5 ~((~A&&~B&&(C||D))||(C&&D&&~(A&&B))||(A&&B&&~C))
           AB
C     00 01 10 11
D 00| 1  1  1  0
  01| 0  1  1  0
  10| 0  1  1  1
  11| 0  0  0  1
  
Seg:4 ~((~A&&B&&~C&&~D)||(D)||(A&&B&&C&&~D))
           AB
C     00 01 10 11
D 00| 1  0  1  1
  01| 0  0  0  0
  10| 1  1  1  0
  11| 0  0  0  0
  
Seg:3 ~((~A&&B&&~C&&~D)||(~A&&~B&&~C&&D)||(A&&B&&C&&~D)||((A^B)&&C&&D))
           AB
C     00 01 10 11
D 00| 1  0  1  1
  01| 0  1  1  1
  10| 1  1  1  0
  11| 1  0  0  1
  
Seg:2	~((A&&B&&~C&&~D)||(~A&&~B&&C&&~D))
           AB
C     00 01 10 11
D 00| 1  1  1  0
  01| 1  1  1  1
  10| 0  1  1  1
  11| 1  1  1  1
  
Seg:1 ~((~A&&B&&(C^D))||(A&&B&&C&&D))
           AB
C     00 01 10 11
D 00| 1  1  1  1
  01| 1  0  1  1
  10| 1  0  1  1
  11| 1  1  1  0
  
Seg:0 ~(~(A^C)&&(B^D))
           AB
C     00 01 10 11
D 00| 1  0  1  1
  01| 0  1  1  1
  10| 1  1  1  0
  11| 1  1  0  1
  


*/
	wire A,B,C,D;
	assign {A,B,C,D} = bcd;
	assign out[7] = 1'b1;
	assign out[6] = ((~A&&~B&&~C)||(~A&&B&&C&&D)||(A&&~B&&C));
	assign out[5] = ((~A&&~B&&(C||D))||(C&&D&&~(A&&B))||(A&&B&&~C));
	assign out[4] = ((~A&&B&&~C&&~D)||(D)||(A&&B&&C&&~D));
	assign out[3] = ((~A&&B&&~C&&~D)||(~A&&~B&&~C&&D)||(A&&B&&C&&~D)||((A^B)&&C&&D));
	assign out[2] = ((A&&B&&~C&&~D)||(~A&&~B&&C&&~D));
	assign out[1] = ((~A&&B&&(C^D))||(A&&B&&C&&D));
	assign out[0] = (~(A^C)&&(B^D));

endmodule