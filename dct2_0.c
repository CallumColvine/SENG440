// Naive implementation of DCT2

#include <stdlib.h>
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


int calcDCT(int u, int v){
	// Calculate the multiply values
	int outVal = 0;
	float iCVal = C[u] / 2;
	float jCVal = C[v] / 2;
	float cVal = iCVal * jCVal;
	// Perform DCT now
	double sumVal = 0;
	int i;
	for (i = 0; i < 8; i++)
	{
		int j;
		for (j = 0; j < 8; j++)
		{
			sumVal += (double)x[i][j] * 
					  cos(((2 * i) + 1) * u * M_PI / 16) * 
					  cos(((2 * j) + 1) * v * M_PI / 16);
		}
	}
	return round(sumVal * cVal);
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
	clock_t begin = clock();

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
	// print runtime of program
	clock_t end = clock();
	double timeSpent = (double)(end - begin) / CLOCKS_PER_SEC;
	printf("%s%f%c\n", "Program runtime: ", timeSpent, 's');
	// print whole output array
	printArray();
	return 0;
}
