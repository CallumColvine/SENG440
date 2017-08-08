// Butterfly implementation of DCT2 (Loeffler algorithm)

#include <stdio.h>
#include <math.h>
#include <time.h>

// These values are from the DCT slides page 2
#define ROOT_VAL 	(1.0 / ROOT2)
#define ARRAY_SIZE 	8

#define M_PI 3.14159265358979323846264338327


//Fixed point Constants
#define COS3 851  //1024 = 2^0
#define SIN3 569  //1024 = 2^0
#define COS1 1004 //1024 = 2^0
#define SIN1 200  //1024 = 2^0
#define COS6 392  //1024 = 2^0
#define SIN6 946  //1024 = 2^0

#define INVROOT8 362  //1024 = 2^0 

#define ROOT2 181 //1024 = 2^3

#if 0
//double COS3, SIN3, COS1, SIN1, COS6, SIN6;
#define COS3 0.83146961 //(cos((3. * M_PI) / 16.))
#define SIN3 0.55557023 //(sin((3. * M_PI) / 16.))
#define	COS1 0.98078528 //(cos((1. * M_PI) / 16.))
#define	SIN1 0.19509032 //(sin((1. * M_PI) / 16.))
#define	COS6 0.38268343 //(cos((6. * M_PI) / 16.))
#define SIN6 0.92387953 //(sin((6. * M_PI) / 16.))

#define ROOT2 1.4142136 //(sqrt(2.0))
#define INVROOT8 0.35355339 //(sqrt(8.0))
#endif

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


void dct(int X[ARRAY_SIZE][ARRAY_SIZE], int x[ARRAY_SIZE][ARRAY_SIZE])
{
	int i;
	//double x0,x1,x2,x3,x4,x5,x6,x7, temp;
	int x0,x1,x2,x3,x4,x5,x6,x7, temp;
	int tmp4,tmp5,tmp6,tmp7;
	 
	for (i = 0; i < 8; i++)
	{
		// Rows: Stage 1
		// Just butterfly
		x0 = x[i][0] + x[i][7];
		x7 = x[i][0] - x[i][7];
		x1 = x[i][1] + x[i][6];
		x6 = x[i][1] - x[i][6];
		x2 = x[i][2] + x[i][5];
		x5 = x[i][2] - x[i][5];
		x3 = x[i][3] + x[i][4];
		x4 = x[i][3] - x[i][4];
	
		// Rows: Top Stage 2
		temp = x0;
		x0 += x3;
		x3 = temp - x3;
		temp = x1;
		x1 += x2;
		x2 = temp - x2;
	 	
		//Rows: Top Stage 3 
		// Butterfly
		temp = x0;
		x0 += x1;
		x1 = temp - x1;
		// Rotator
	  	temp = x2;
		x2 = (ROOT2 * (x2 * COS6) + (x3 * SIN6)) >> 17;
		x3 = (ROOT2 * (x3 * COS6) - (temp * SIN6)) >> 17;
		
	/*	//Rows: Bottom Stage 2
		//temp = x4;
		tmp4 = ((x4 * COS3) + (x7 * SIN3)) >> 10;
		tmp7 = ((x7 * COS3) - (x4 * SIN3)) >> 10;
		//temp = x5;
		tmp5 = ((x5 * COS1) + (x6 * SIN1)) >> 10;
		tmp6 = ((x6 * COS1) - (x5 * SIN1)) >> 10;

		//Rows: Bottom Stage 3
		temp = tmp4;
		tmp4 += tmp6;
		tmp6 = temp - tmp6;
		temp = tmp7;
		tmp7 += tmp5;
		tmp5 = temp - tmp5;

		//Rows: Stage 4
		temp = tmp7;
		tmp7 += tmp4;
		tmp4 = temp - tmp4;
		tmp6 = (tmp6 * ROOT2) >> 7;
		tmp5 = (tmp5 * ROOT2) >> 7 ;
	*/

	// Bottom butterfly
		tmp7 = (x4 * (COS3 - SIN3)) + (x5 * (COS1 - SIN1)) + (x6 * (SIN1 + COS1)) + (x7 * (SIN3 + COS3)) >> 10;
		//tmp7 = ((x4 * COS3) - (x4 * SIN3) + (x5 * COS1) - (x5 * SIN1) + (x6 * SIN1) + (x6 * COS1) + (x7 * SIN3) + (x7 * COS3)) >> 10;
		tmp4 = ((x7 * COS3) - (x4 * SIN3) - (x4 * COS3) + (x5 * (COS1 + SIN1)) + (x6 * SIN1) - (x6 * COS1) - (x7 * SIN3)) >> 10;
		//tmp4 = ((x4 * SIN3) + (x4 * COS3) + (x5 * COS1) + (x5 * SIN1) + (x6 * SIN1) - (x6 * COS1) - (x7 * SIN3) + (x7 * COS3)) >> 10;
		// Scaling
		tmp5 = (((x7 * COS3) - (x4 * SIN3) - (x5 * COS1) - (x6 * SIN1)) * ROOT2) >> 17;
		tmp6 = (((x4 * COS3) + (x7 * SIN3) - (x6 * COS1) + (x5 * SIN1)) * ROOT2) >> 17;

/*	
		//Bottom: Stages2-4 Synthesized
		x4 = (x4*(-SIN3-COS3)  
			 + x5*(COS1+SIN1)  
			 + x6*(SIN1-COS1) 
			 + x7*(COS3-SIN3)) >> 10;

		x5 = (ROOT2 * 
			 (-x4*SIN3
			 - x5*COS1
			 - x6*SIN1
			 + x7*COS3)) >> 17;

		x6 = (ROOT2 * 
			 ( x4*COS3
			 + x5*SIN1
			 - x6*COS1
			 + x7*SIN3)) >> 17;

		x7 = (x4*(COS3-SIN3)
			 + x5*(COS1-SIN1)
			 + x6*(SIN1+COS1)
			 + x7*(COS3+SIN3)) >> 10 ;
*/
		// Assign values
		x[i][0] = (x0 * INVROOT8) >> 10;
		x[i][1] = (tmp7 * INVROOT8) >> 10;
		x[i][2] = (x2 * INVROOT8) >> 10;
		x[i][3] = (tmp5 * INVROOT8) >> 10; 	// May need scaling? What's the O?
		x[i][4] = (x1 * INVROOT8) >> 10; 	// May need scaling too
		x[i][5] = (tmp6 * INVROOT8) >> 10; 
		x[i][6] = (x3 * INVROOT8) >> 10;
		x[i][7] = (tmp4 * INVROOT8) >> 10;
	}
	// Columns
	for (i = 0; i < 8; i++)	
	{
		//Columns: Stage 1
		x0 = x[0][i] + x[7][i];
		x7 = x[0][i] - x[7][i];
		x1 = x[1][i] + x[6][i];
		x6 = x[1][i] - x[6][i];
		x2 = x[2][i] + x[5][i];
		x5 = x[2][i] - x[5][i];
		x3 = x[3][i] + x[4][i];
		x4 = x[3][i] - x[4][i];
			
		//Columns: Top Stage 2
		// Butterfly
		temp = x0;
		x0 += x3;
		x3 = temp - x3;
		temp = x1;
		x1 += x2;
		x2 = temp - x2;
		//Columns: Top Stage 3
    	// Top butterfly
		temp = x0;
		x0 += x1;
		x1 = temp - x1;
		// Top rotator
		// ----- Without constants -----
	 	temp = x2;
		x2 = (ROOT2 * (x2 * COS6) + (x3 * SIN6)) >> 17;
		x3 = (ROOT2 * (x3 * COS6) - (temp * SIN6)) >> 17;


		//Columns: Bottom Stage 2
		//temp = x4;
		tmp4 = ((x4 * COS3) + (x7 * SIN3)) >> 10;
		tmp7 = ((x7 * COS3) - (x4 * SIN3)) >> 10;
		//temp = x5;
		tmp5 = ((x5 * COS1) + (x6 * SIN1)) >> 10;
		tmp6 = ((x6 * COS1) - (x5 * SIN1)) >> 10;

		//Columns: Bottom Stage 3
		// Bottom butterfly
		temp = tmp4;
		tmp4 += tmp6;
		tmp6 = temp - tmp6;
		temp = tmp7;
		tmp7 += tmp5;
		tmp5 = temp - tmp5;

		//Columns: Bottom Stage 4 
		// Bottom butterfly
		temp = tmp7;
		tmp7 = tmp7 + tmp4;
		tmp4 = temp - tmp4;
		// Scaling
		tmp5 = (tmp5 * ROOT2) >> 7;
		tmp6 = (tmp6 * ROOT2) >> 7;

		//Columns: Bottom Stage 2

		//Columns: Bottom Stage 3
		// Bottom butterfly
	
		//Columns: Bottom Stage 4 
		// Bottom butterfly
		tmp7 = (x4 * (COS3 - SIN3)) + (x5 * (COS1 - SIN1)) + (x6 * (SIN1 + COS1)) + (x7 * (SIN3 + COS3)) >> 10;
		//tmp7 = ((x4 * COS3) - (x4 * SIN3) + (x5 * COS1) - (x5 * SIN1) + (x6 * SIN1) + (x6 * COS1) + (x7 * SIN3) + (x7 * COS3)) >> 10;
		tmp4 = ((x7 * COS3) - (x4 * SIN3) - (x4 * COS3) + (x5 * (COS1 + SIN1)) + (x6 * SIN1) - (x6 * COS1) - (x7 * SIN3)) >> 10;
		//tmp4 = ((x4 * SIN3) + (x4 * COS3) + (x5 * COS1) + (x5 * SIN1) + (x6 * SIN1) - (x6 * COS1) - (x7 * SIN3) + (x7 * COS3)) >> 10;
		// Scaling
		tmp5 = (((x7 * COS3) - (x4 * SIN3) - (x5 * COS1) - (x6 * SIN1)) * ROOT2) >> 17;
		tmp6 = (((x4 * COS3) + (x7 * SIN3) - (x6 * COS1) + (x5 * SIN1)) * ROOT2) >> 17;

/*
		//Synthesized Bottom Stages 2-4
		x4 = (x4*(-SIN3-COS3)  
			 + x5*(COS1+SIN1)  
			 + x6*(SIN1-COS1) 
			 + x7*(COS3-SIN3)) >> 10;

		x5 = (ROOT2 * 
			 (-x4*SIN3
			 - x5*COS1
			 - x6*SIN1
			 + x7*COS3)) >> 17;

		x6 = (ROOT2 * 
			 ( x4*COS3
			 + x5*SIN1
			 - x6*COS1
			 + x7*SIN3)) >> 17;

		x7 = (x4*(COS3-SIN3)
			 + x5*(COS1-SIN1)
			 + x6*(SIN1+COS1)
			 + x7*(COS3+SIN3)) >> 10 ;

*/
		// Assign values
		X[0][i] = (x0 * INVROOT8) >> 10;
		X[1][i] = (tmp7 * INVROOT8) >> 10;
		X[2][i] = (x2 * INVROOT8) >> 10;
		X[3][i] = (tmp5 * INVROOT8) >> 10; 	// May need scaling? What's the O?
		X[4][i] = (x1 * INVROOT8) >> 10;
		X[5][i] = (tmp6 * INVROOT8) >> 10; 	// May need scaling too
		X[6][i] = (x3 * INVROOT8) >> 10;
		X[7][i] = (tmp4 * INVROOT8) >> 10;
	}
}


void printArray(int array[ARRAY_SIZE][ARRAY_SIZE]){
	int u;
	for (u = 0; u < 8; u++)
	{
		int v;
		for (v = 0; v < 8; v++)
		{
			printf("%-4i", array[u][v]);
			printf("%s", " ");
		}
		printf("\n");
	}
}

void cmpArray(int array1[ARRAY_SIZE][ARRAY_SIZE], int array2[ARRAY_SIZE][ARRAY_SIZE]){
	int diff = 0; int u;
	for (u = 0; u < ARRAY_SIZE; u++)
	{
		int v;
		for (v = 0; v < ARRAY_SIZE; v++)
		{
			if (array1[u][v] != array2[u][v])
			{
				diff += array1[u][v] - array2[u][v];
				//printf("NOT EQUAL -> (%i,%i) = [last_test= %i,out = %i]\n", u, v, array1[u][v], array2[u][v]);
			}
		}
	}

	//printArray(array1);
	printf("DIFFERENCE = %i\n", diff);
	//printArray(array2);
}


// ToDo: Errors are in the 2nd part of the rotators
// x6, x3, and x4
int main(int argc, char const *argv[])
{
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

	
	int y[ARRAY_SIZE][ARRAY_SIZE] = {
		{249, 109, -4, 4, -3, 3, -7, -8},   
		{278, -64, 0, -8, -2, 3, -4, 2},    
		{-11, 1, 0, -1, -2, 0, 0, -2},   
		{27, 4, 0, 8, -8, 4, -5, 1}, 
		{-22, -8, 2, -9, 4, -3, 5, 1},    
		{-3, 14, -3, 14, -7, 0, -7, 1},    
		{-18, -7, 2, -7, 2, 0, 4, 0},  
		{2, 6, -2, 2, -1, -3, -3, -2},  
	};

	// Init array to 0's
	int X[ARRAY_SIZE][ARRAY_SIZE] = {0};
	
	clock_t begin = clock();

	dct(X,x);
	// print runtime of program
	clock_t end = clock();

	double timeSpent = (double)(end - begin) / CLOCKS_PER_SEC;
	printf("%s%f%c\n", "Program runtime: ", timeSpent, 's');
	// print whole output array

	printArray(X);
	printf("\n");
	printArray(expectedOut);
	cmpArray(y,X);

	return 0;
}