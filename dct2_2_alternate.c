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

#define COS7 200
#define COS5 569



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
	// int tmp4,tmp5,tmp6,tmp7;
	int z1, z2, z3, z4, z5;
	 
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
		// Rows: Top Stage 3 Butterfly
		temp = x0;
		x0 += x1;
		x1 = temp - x1;
		// We are done with 
		// x[i][0] = (x0 * INVROOT8);
		// x[i][4] = (x1 * INVROOT8); 	// May need scaling too
	 	x[i][0] = (int)(x0 + 0.5f);
		x[i][4] = (int)(x1 + 0.5f); 	// May need scaling too
	 	
	 	temp = x2;
		x2 = (ROOT2 * (x2 * COS6 + x3 * SIN6)) >> 17;
		x3 = (ROOT2 * (x3 * COS6 - temp * SIN6)) >> 17;
		x[i][2] = (int)(x2 + 0.5f);
		x[i][6] = (int)(x3 + 0.5f);

		//Rows: Bottom Stage 2

        // His begin
        z1 = x4 + x7;
        z2 = x5 + x6;
        z3 = x4 + x6;
        z4 = x5 + x7;
        z5 = (z3 + z4) * ROOT2 * COS3;

        z1 = z1 * ROOT2 * (COS7 - COS3);
        z2 = z2 * ROOT2 * (-COS1 - COS3);
        z3 = z3 * ROOT2 * (-COS3 - COS5);
        z4 = z4 * ROOT2 * (COS5 - COS3);

        z3 += z5;
        z4 += z5;

        x4 = x4 * ROOT2 * (-COS1 + COS3 + COS5 - COS7);
        x5 = x5 * ROOT2 * (COS1 + COS3 - COS5 + COS7);
        x6 = x6 * ROOT2 * (COS1 + COS3 + COS5 - COS7);
        x7 = x7 * ROOT2 * (COS1 + COS3 - COS5 - COS7);
        // His end

        // Assign values
		x[i][1] = (int)(x7 + z1 + z4 + 0.5f) >> 17;
		x[i][3] = (int)(x6 + z2 + z3 + 0.5f) >> 17; 	// May need scaling? What's the O?
		x[i][5] = (int)(x5 + z2 + z4 + 0.5f) >> 17; 
		x[i][7] = (int)(x4 + z1 + z3 + 0.5f) >> 17;

        // Mine
		// temp = x4;
		// x4 = ((x4 * COS3) + (x7 * SIN3)); 	
		// x7 = ((x7 * COS3) - (temp * SIN3));
		// temp = x5;
		// x5 = ((x5 * COS1) + (x6 * SIN1));
		// x6 = ((x6 * COS1) - (temp * SIN1));

		//Rows: Top Stage 3 

		// // Rotator
	 //  	temp = x2;
		// x2 = (ROOT2 * ((x2 * COS6) + (x3 * SIN6))) >> 17;
		// x3 = (ROOT2 * ((x3 * COS6) - (temp * SIN6))) >> 17;
		

		// //Rows: Bottom Stage 3
		// temp = x4;
		// x4 += x6;
		// x6 = temp - x6;
		// temp = tmp7;
		// x7 += x5;
		// x5 = temp - x5;

		// //Rows: Stage 4
		// temp = tmp7;
		// x7 += x4;
		// x4 = temp - x4;
		// x6 = (x6 * ROOT2);
		// x5 = (x5 * ROOT2);
	

		// // Assign values
		// x[i][1] = (x7 * INVROOT8) >> 17;
		// x[i][3] = (x5 * INVROOT8) >> 17; 	// May need scaling? What's the O?
		// x[i][5] = (x6 * INVROOT8) >> 17; 
		// x[i][7] = (x4 * INVROOT8) >> 17;
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
			
		temp = x0;
		x0 += x3;
		x3 = temp - x3;
		temp = x1;
		x1 += x2;
		x2 = temp - x2;
		// Rows: Top Stage 3 Butterfly
		temp = x0;
		x0 += x1;
		x1 = temp - x1;
		// We are done with 
		// x[i][0] = (x0 * INVROOT8);
		// x[i][4] = (x1 * INVROOT8); 	// May need scaling too
	 	X[0][i] = (int)(x0 + 0.5f) >> 3;
		X[4][i] = (int)(x1 + 0.5f) >> 3; 	// May need scaling too
	 	
	 	temp = x2;
		x2 = (ROOT2 * (x2 * COS6 + x3 * SIN6)) >> 17 ;
		x3 = (ROOT2 * (x3 * COS6 - temp * SIN6)) >> 17 ;
		X[2][i] = (int)(x2 + 0.5f) >> 3;
		X[6][i] = (int)(x3 + 0.5f) >> 3;

		//Rows: Bottom Stage 2

        // His begin
        z1 = x4 + x7;
        z2 = x5 + x6;
        z3 = x4 + x6;
        z4 = x5 + x7;
        z5 = (z3 + z4) * ROOT2 * COS3;

        z1 = z1 * ROOT2 * (COS7 - COS3);
        z2 = z2 * ROOT2 * (-COS1 - COS3);
        z3 = z3 * ROOT2 * (-COS3 - COS5);
        z4 = z4 * ROOT2 * (COS5 - COS3);


        z3 += z5;
        z4 += z5;

        x4 = x4 * ROOT2 * (-COS1 + COS3 + COS5 - COS7);
        x5 = x5 * ROOT2 * (COS1 + COS3 - COS5 + COS7);
        x6 = x6 * ROOT2 * (COS1 + COS3 + COS5 - COS7);
        x7 = x7 * ROOT2 * (COS1 + COS3 - COS5 - COS7);
        // His end
        // Assign values
		X[1][i] = (int)(x7 + z1 + z4 + 0.5f) >> 17 >> 3;
		X[3][i] = (int)(x6 + z2 + z3 + 0.5f) >> 17 >> 3; 	// May need scaling? What's the O?
		X[5][i] = (int)(x5 + z2 + z4 + 0.5f) >> 17 >> 3; 
		X[7][i] = (int)(x4 + z1 + z3 + 0.5f) >> 17 >> 3;
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

	
	// int y[ARRAY_SIZE][ARRAY_SIZE] = {
	// 	{249, 109, -4, 4, -3, 3, -7, -8},   
	// 	{278, -64, 0, -8, -2, 3, -4, 2},    
	// 	{-11, 1, 0, -1, -2, 0, 0, -2},   
	// 	{27, 4, 0, 8, -8, 4, -5, 1}, 
	// 	{-22, -8, 2, -9, 4, -3, 5, 1},    
	// 	{-3, 14, -3, 14, -7, 0, -7, 1},    
	// 	{-18, -7, 2, -7, 2, 0, 4, 0},  
	// 	{2, 6, -2, 2, -1, -3, -3, -2},  
	// };

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
	// cmpArray(y,X);

	return 0;
}