#include <stdio.h>
#include <math.h>

// X[u, v] = (C[u] / 2) * (C[v] / 2) sum(0-7)i * sum(0-7)j of:
// 		x(i, j) * cos((2i + 1) * u * pi / 16) * cos((2j + 1) * v * pi / 16)

// These values are from the DCT slides page 2
float C[8] = {(1/sqrt(2.0)), 1, 1, 1, 1, 1, 1, 1, 1};
// Init array to 0's
int X[8][8] = {0};
// Init the example input values
int x[8][8] = {
	{75, 76, 75, 75, 69, 66, 77, 71},
	{73, 74, 73, 74, 63, 64, 68, 69},
	{69, 68, 71, 72, 67, 58, 48, 41},
	{59, 55, 56, 52, 47, 40, 24, 9},
	{51, 50, 45, 41, 33, 22, 7, -5},
	{43, 37, 32, 24, 15, 5, -6, -25},
	{29, 21, 9, -2, -10, -21, -44, -69},
	{9, -4, -17, -35, -52, -61, -57, -35}
}
// ToDo: Init the output matrix and write a comparison test

int main(int argc, char const *argv[])
{
	// NOTE: 8's are hard-coded. Could be changed depending on need
	for (int i = 0; i < 8; i++)
	{
		for (int j = 0; j < 8; j++)
		{
			X[i][j] = calcDCT(i, j);
		}
	}
	return 0;
}

int calcDCT(int i, int j){
	int outVal = 0;
	float iCVal = C[i] / 2;
	float jCVal = C[j] / 2;
	float cVal = iCVal * jCVal;
	// Perform DCT now
}