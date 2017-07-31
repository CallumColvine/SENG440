#include <stdio.h>
// #define _USE_MATH_DEFINES
#include <math.h>

// X[u, v] = (C[u] / 2) * (C[v] / 2) sum(0-7)i * sum(0-7)j of:
// 		x(i, j) * cos((2i + 1) * u * pi / 16) * cos((2j + 1) * v * pi / 16)

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
// ToDo: Init the output matrix and write a comparison test


int calcDCT(int u, int v){
	// Calculate the multiply values
	int outVal = 0;
	float iCVal = C[u] / 2;
	float jCVal = C[v] / 2;
	float cVal = iCVal * jCVal;
	// Perform DCT now
	int sumVal = 0;
	int i;
	for (i = 0; i < 8; i++)
	{
		int j;
		for (j = 0; j < 8; j++)
		{
			sumVal += x[i][j] * 
					  cos((2 * i) * u * M_PI / 16) * 
					  cos((2 * j) * v * M_PI / 16);
		}
	}
	// printf("%f\n", sumVal * cVal);
	return round(sumVal * cVal);
}

void printArray(){
	int u;
	for (u = 0; u < 8; u++)
	{
		int v;
		for (v = 0; v < 8; v++)
		{
			// X[u][v] = calcDCT(u, v);
			printf("%i", X[u][v]);
			printf("%s", " ");
		}
		printf("\n");
	}
}

int main(int argc, char const *argv[])
{
	// NOTE: 8's are hard-coded. Could be changed depending on need

	int u;
	for (u = 0; u < 8; u++)
	{
		int v;
		for (v = 0; v < 8; v++)
		{
			X[u][v] = calcDCT(u, v);
		}
	}
	printArray();
	// printf("%i\n", calcDCT(0, 0));
	return 0;
}
