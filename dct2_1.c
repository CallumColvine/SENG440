// Butterfly implementation of DCT2 (Loeffler algorithm)

#include <stdio.h>
#include <math.h>

// These values are from the DCT slides page 2
#define ROOT_VAL 	(1.0 / sqrt(2.0))
#define ARRAY_SIZE 	8
// #define PI 			3.14
#define M_PI 3.14159265358979323846264338327


const float C[ARRAY_SIZE] = {ROOT_VAL, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0};
// Init array to 0's
int X[ARRAY_SIZE][ARRAY_SIZE] = {0};
// Init the example input values
int x[ARRAY_SIZE][ARRAY_SIZE] = {
	{75, 76, 75, 75, 69, 66, 77, 71},
	{73, 74, 73, 74, 63, 64, 68, 69},
	{69, 68, 71, 72, 67, 58, 48, 41},
	{59, 55, 56, 52, 47, 40, 24, 9},
	{51, 50, 45, 41, 33, 22, 7, -5},
	{43, 37, 32, 24, 15, 5, -6, -25},
	{29, 21, 9, -2, -10, -21, -44, -69},
	{9, -4, -17, -35, -52, -61, -57, -35}
};
// ToDo: Write a comparison test between output and expected output
int expectedOut[ARRAY_SIZE][ARRAY_SIZE] = {
	{251, 118, -13, 6, -2, 6, -1, 0},
	{279, -68, -8, -7, -1, 4, -4, -1},
	{-51, -14, 34, -14, 5, 0, -1, 0},
	{27, 5, -10, 8, -7, 4, -5, 1},
	{-22, -7, 14, -9, 4, -2, 1, 1},
	{-3, 15, -18, 15, -6, 2, -1, 2},
	{7, -9, 6, -6, 4, 0, 0, 2},
	{3, 7, -9, 3, 0, -2, -1, 0}
};


double x0, x1, x2, x3, x4, x5, x6, x7, temp;


void stage1(int i){
	// Just butterfly
	x0 = x[i][0] + x[i][7];
	x7 = x[i][0] - x[i][7];
	x1 = x[i][1] + x[i][6];
	x6 = x[i][1] - x[i][6];
	x2 = x[i][2] + x[i][5];
	x5 = x[i][2] - x[i][5];
	x3 = x[i][3] + x[i][4];
	x4 = x[i][3] - x[i][4];
}

void stage2(int i){
	// Butterfly
	temp = x0;
	x0 += x3;
	x3 = temp - x3;
	temp = x1;
	x1 += x2;
	x2 = temp - x2;
	// Rotator
	// ----- With constants -----
	// temp = x4;
	// x4 = x4 * 4 * cos((3 * M_PI) / 16) +
	// 	 x7 * 4 * sin((3 * M_PI) / 16);
	// // Out1
	// x7 = x7 * 7 * cos((3 * M_PI) / 16) -
	// 	 temp * 7 * sin((3 * M_PI) / 16);

	// temp = x5;
	// x5 = x5 * 5 * cos((1 * M_PI) / 16) +
	// 	 x6 * 5 * sin((1 * M_PI) / 16);
	// x6 = x6 * 6 * cos((1 * M_PI) / 16) -
	//      temp * 6 * sin((1 * M_PI) / 16);
	// ----- Without constants -----
	
	printf("%f\n", x7);
	// double z1 = cos((3 * M_PI) / 16) * (x7 + x4);
	// x4 = (sin((3 * M_PI) / 16) - cos((3 * M_PI) / 16)) * x7 + z1;
	// x7 = (-sin((3 * M_PI) / 16) - cos((3 * M_PI) / 16)) * x4 + z1;
	
	temp = x4;
	x4 = x4 * cos((3 * M_PI) / 16) +
		 x7 * sin((3 * M_PI) / 16);
	x7 = x7 * cos((3 * M_PI) / 16) -
		 temp * sin((3 * M_PI) / 16);

	
	temp = x5;
	x5 = x5 * cos((1 * M_PI) / 16) +
		 x6 * sin((1 * M_PI) / 16);
	x6 = x6 * cos((1 * M_PI) / 16) -
	     temp * sin((1 * M_PI) / 16);
}

void stage3(int i){
	// Top butterfly
	temp = x0;
	x0 += x1;
	x1 = temp - x1;
	// Top rotator
	// ----- With constants -----
	// temp = x2;
	// x2 = x2 * 2 * cos((1 * M_PI) / 16) +
	// 	 x3 * 2 * sin((1 * M_PI) / 16);
	// x3 = x3 * 3 * cos((1 * M_PI) / 16) -
	// 	 temp * 3 * sin((1 * M_PI) / 16);
	// ----- Without constants -----
 	temp = x2;
	x2 = sqrt(2.0) * x2 * cos((6. * M_PI) / 16.) +
		 sqrt(2.0) * x3 * sin((6. * M_PI) / 16.);
	x3 = sqrt(2.0) * x3 * cos((6. * M_PI) / 16.) -
		 sqrt(2.0) * temp * sin((6. * M_PI) / 16.);


	// Bottom butterfly
	temp = x4;
	x4 += x6;
	x6 = temp - x6;
	temp = x7;
	x7 += x5;
	x5 = temp - x5;

	
}

void stage4(int i){
	// ToDo: what was the top step here?
	// Bottom butterfly
	temp = x7;
	x7 += x4;
	x4 = temp - x4;

	// temp = x4;
	// x4 += x7;
	// x7 = temp - x7;

	x3 = x3 * sqrt(2.);
	x5 = x5 * sqrt(2.);
	// Assign values


	X[i][0] = x0 / sqrt(8.);
	X[i][1] = x4 / sqrt(8.);
	X[i][2] = x2 / sqrt(8.);
	X[i][3] = x6 / sqrt(8.); 	// May need scaling? What's the O?
	X[i][4] = x7 / sqrt(8.);
	X[i][5] = x3 / sqrt(8.); 	// May need scaling too
	X[i][6] = x5 / sqrt(8.);
	X[i][7] = x1 / sqrt(8.);
	// X[i][0] = x0;
	// X[i][1] = x4;
	// X[i][2] = x2;
	// X[i][3] = x6; 	// May need scaling? What's the O?
	// X[i][4] = x7;
	// X[i][5] = x3; 	// May need scaling too
	// X[i][6] = x5;
	// X[i][7] = x1;

}

void printArray(){
	int u;
	for (u = 0; u < 8; u++)
	{
		int v;
		for (v = 0; v < 8; v++)
		{
			printf("%-4i", X[u][v]);
			printf("%s", " ");
		}
		printf("\n");
	}
}

int main(int argc, char const *argv[])
{
	int i;
	for (i = 0; i < 8; i++)
	{
		stage1(i);
		stage2(i);
		stage3(i);
		stage4(i);
	}
	printArray();
	return 0;
}