#!/bin/bash

rm *.o
echo ""
echo "**********q_1.c************"
echo "Compiling and Running q_1.c"
gcc q_1.c -o q_1.o
./q_1.o > qsol1.txt
echo "Your output"
cat qsol1.txt
diff qsol1.txt sol1.txt
echo "Your score: "
read $q1
echo ""
echo "**********q_2.c************"
echo "Compiling and Running q_2.c"
gcc q_2.c -o q_2.o
./q_2.o > qsol2.txt
echo "Your output"
cat qsol2.txt
diff qsol2.txt sol2.txt
echo ""
echo "**********q_3.c************"
echo "Compiling and Running q_3.c"
gcc q_3.c -o q_3.o
./q_3.o > qsol3.txt
echo "Your output"
cat qsol3.txt
./q_3.o > qsol3.txt
diff qsol3.txt sol3.txt
echo ""
echo "**********q_4.txt**********"
echo "Printing q_4.txt"
cat q_4.txt
echo ""
echo "**********q_5.c************"
echo "Compiling and Running q_5.c"
gcc q_5.c -o q_5.o
