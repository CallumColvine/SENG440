#include <stdio.h>


int inPx[8][8] = {
	{140, 144, 147, 140, 140, 155, 179, 175},
	{144, 152, 140, 147, 140, 148, 167, 179},
	{152, 155, 136, 167, 163, 162, 152, 172}, 
	{168, 145, 156, 160, 152, 155, 136, 160},
	{162, 148, 156, 148, 140, 136, 147, 162},
	{147, 167, 140, 155, 155, 140, 136, 162},
	{136, 156, 123, 167, 162, 144, 140, 147},
	{148, 155, 136, 155, 152, 147, 147, 136}
}

// Init array to 0's
int cosVals[8][8] = {0};

// 1. Shift values to be centered around 0 (-128 to 127)

int main(int argc, char const *argv[])
{
	// NxN matrix
	for (i = 0; i < N; i++) {
	    for (j = 0; j < N; j++) {
	        temp = 0.0;
	        for (x = 0; x < N; x++) {
	            for (y = 0; y < N; y++) {
	                temp += cosVals[x][i] * cosVals[y][j] * inPx[x][y];
	            }
	        }
	        temp *= sqrt(2 * N) * Coefficient[i][j];
	        DCT[i][j] = INT_ROUND(temp);
	    }
	}
	return 0;
}



// ... Learn to calc cosVals. Do manually from wiki page
