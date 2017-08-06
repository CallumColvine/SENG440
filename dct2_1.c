// Butterfly implementation of DCT2 (Loeffler algorithm)

#include <stdio.h>
#include <math.h>
#include <time.h>

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


double x0, x1, x2, x3, x4, x5, x6, x7, z1, temp;
double cos3, sin3, cos1, sin1, cos6, sin6;


void stage1R(int i){
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

void stage2R(int i){
	// Butterfly
	temp = x0;
	x0 += x3;
	x3 = temp - x3;
	temp = x1;
	x1 += x2;
	x2 = temp - x2;
	// Rotator
	// ----- Without constants -----
	temp = x4;
	x4 = (x4 * cos3) +
		 (x7 * sin3);
	x7 = (x7 * cos3) -
		 (temp * sin3);

	temp = x5;
	x5 = (x5 * cos1) +
		 (x6 * sin1);
	x6 = (x6 * cos1) -
	     (temp * sin1);
}

void stage3R(int i){
	// Top butterfly
	temp = x0;
	x0 += x1;
	x1 = temp - x1;
	// Top rotator
  	temp = x2;
	x2 = (sqrt(2.0) * x2 * cos6) +
		 (sqrt(2.0) * x3 * sin6);
	x3 = (sqrt(2.0) * x3 * cos6) -
		 (sqrt(2.0) * temp * sin6);
	// Bottom butterfly
	temp = x4;
	x4 += x6;
	x6 = temp - x6;
	temp = x7;
	x7 += x5;
	x5 = temp - x5;
}

void stage4R(int i){
	// Bottom butterfly
	temp = x7;
	x7 += x4;
	x4 = temp - x4;
	x3 = x3 * sqrt(2.);
	x5 = x5 * sqrt(2.);
	// Assign values
	x[i][0] = x0 / sqrt(8.);
	x[i][1] = x7 / sqrt(8.);
	x[i][2] = x2 / sqrt(8.);
	x[i][3] = x5 / sqrt(8.); 	// May need scaling? What's the O?
	x[i][4] = x1 / sqrt(8.);
	x[i][5] = x6 / sqrt(8.); 	// May need scaling too
	x[i][6] = x3 / sqrt(8.);
	x[i][7] = x4 / sqrt(8.);
}

// Now do columns
void stage1C(int i){
	// Just butterfly
	x0 = x[0][i] + x[7][i];
	x7 = x[0][i] - x[7][i];
	x1 = x[1][i] + x[6][i];
	x6 = x[1][i] - x[6][i];
	x2 = x[2][i] + x[5][i];
	x5 = x[2][i] - x[5][i];
	x3 = x[3][i] + x[4][i];
	x4 = x[3][i] - x[4][i];
}

void stage2C(int i){
	// Butterfly
	temp = x0;
	x0 += x3;
	x3 = temp - x3;
	temp = x1;
	x1 += x2;
	x2 = temp - x2;
	// Rotator
	// ----- Without constants -----
	temp = x4;
	x4 = (x4 * cos3) +
		 (x7 * sin3);
	x7 = (x7 * cos3) -
		 (temp * sin3);
	temp = x5;
	x5 = (x5 * cos1) +
		 (x6 * sin1);
	x6 = (x6 * cos1) -
	     (temp * sin1);
}

void stage3C(int i){
	// Top butterfly
	temp = x0;
	x0 += x1;
	x1 = temp - x1;
	// Top rotator
	// ----- Without constants -----
 	temp = x2;
	x2 = (sqrt(2.0) * x2 * cos6) +
		 (sqrt(2.0) * x3 * sin6);
	x3 = (sqrt(2.0) * x3 * cos6) -
		 (sqrt(2.0) * temp * sin6);
	// Bottom butterfly
	temp = x4;
	x4 += x6;
	x6 = temp - x6;
	temp = x7;
	x7 += x5;
	x5 = temp - x5;
}

void stage4C(int i){
	// ToDo: what was the top step here?
	// Bottom butterfly
	temp = x7;
	x7 += x4;
	x4 = temp - x4;

	x3 = x3 * sqrt(2.);
	x5 = x5 * sqrt(2.);
	// Assign values
	X[0][i] = x0 / sqrt(8.);
	X[1][i] = x7 / sqrt(8.);
	X[2][i] = x2 / sqrt(8.);
	X[3][i] = x5 / sqrt(8.); 	// May need scaling? What's the O?
	X[4][i] = x1 / sqrt(8.);
	X[5][i] = x6 / sqrt(8.); 	// May need scaling too
	X[6][i] = x3 / sqrt(8.);
	X[7][i] = x4 / sqrt(8.);
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

// ToDo: Errors are in the 2nd part of the rotators
// x6, x3, and x4
int main(int argc, char const *argv[])
{
	clock_t begin = clock();
	// Rows
	cos3 = cos((3. * M_PI) / 16.);
	sin3 = sin((3. * M_PI) / 16.);
	cos1 = cos((1. * M_PI) / 16.);
	sin1 = sin((1. * M_PI) / 16.);
	cos6 = cos((6. * M_PI) / 16.);
	sin6 = sin((6. * M_PI) / 16.);

	int i;
	for (i = 0; i < 8; i++)
	{
		// Function calls to modify rows
		stage1R(i);
		stage2R(i);
		stage3R(i);
		stage4R(i);
	}
	// Columns
	int j;
	for (j = 0; j < 8; j++)
	{
		// Function calls to modify columns
		stage1C(j);
		stage2C(j);
		stage3C(j);
		stage4C(j);
	}
	// print runtime of program
	clock_t end = clock();
	double timeSpent = (double)(end - begin) / CLOCKS_PER_SEC;
	printf("%s%f%c\n", "Program runtime: ", timeSpent, 's');
	// print whole output array
	printArray();
	return 0;
}