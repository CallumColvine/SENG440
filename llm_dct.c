  // https://unix4lyfe.org/dct-1d/
#include <math.h>
#include <stdio.h>

// Implementation of LLM DCT.
void llm_dct(const double in[8], double out[8]) {
  // Constants:
  const double s1 = sin(1. * M_PI / 16.);
  const double c1 = cos(1. * M_PI / 16.);
  const double s3 = sin(3. * M_PI / 16.);
  const double c3 = cos(3. * M_PI / 16.);
  const double r2s6 = sqrt(2.) * sin(6. * M_PI / 16.);
  const double r2c6 = sqrt(2.) * cos(6. * M_PI / 16.);

  // After stage 1:
  const double s1_0 =  in[0] + in[7];
  const double s1_1 =  in[1] + in[6];
  const double s1_2 =  in[2] + in[5];
  const double s1_3 =  in[3] + in[4];
  const double s1_4 = -in[4] + in[3];
  const double s1_5 = -in[5] + in[2];
  const double s1_6 = -in[6] + in[1];
  const double s1_7 = -in[7] + in[0];

  // After stage 2:
  const double s2_0 =  s1_0 + s1_3;
  const double s2_1 =  s1_1 + s1_2;
  const double s2_2 = -s1_2 + s1_1;
  const double s2_3 = -s1_3 + s1_0;

  const double z1 = c3 * (s1_7 + s1_4);
  const double s2_4 = ( s3-c3) * s1_7 + z1;
  const double s2_7 = (-s3-c3) * s1_4 + z1;

  const double z2 = c1 * (s1_6 + s1_5);
  const double s2_5 = ( s1-c1) * s1_6 + z2;
  const double s2_6 = (-s1-c1) * s1_5 + z2;

  // After stage 3:
  const double s3_0 =  s2_0 + s2_1;
  const double s3_1 = -s2_1 + s2_0;

  const double z3 = r2c6 * (s2_3 + s2_2);
  const double s3_2 = ( r2s6-r2c6) * s2_3 + z3;
  const double s3_3 = (-r2s6-r2c6) * s2_2 + z3;

  const double s3_4 =  s2_4 + s2_6;
  const double s3_5 = -s2_5 + s2_7;
  const double s3_6 = -s2_6 + s2_4;
  const double s3_7 =  s2_7 + s2_5;

  // After stage 4:
  const double s4_4 = -s3_4 + s3_7;
  const double s4_5 =  s3_5 * sqrt(2.);
  const double s4_6 =  s3_6 * sqrt(2.);
  const double s4_7 =  s3_7 + s3_4;

  // Shuffle and scaling:
  // out[0] = s3_0 / sqrt(8.);
  // out[4] = s3_1 / sqrt(8.);
  // out[2] = s3_2 / sqrt(8.);
  // out[6] = s3_3 / sqrt(8.);
  // out[7] = s4_4 / sqrt(8.);
  // out[3] = s4_5 / sqrt(8.);  // Alternative: s3_5 / 2
  // out[5] = s4_6 / sqrt(8.);
  // out[1] = s4_7 / sqrt(8.);
  out[0] = s3_0;
  out[4] = s3_1;
  out[2] = s3_2;
  out[6] = s3_3;
  out[7] = s4_4;
  out[3] = s4_5;  // Alternative: s3_5 / 2
  out[5] = s4_6;
  out[1] = s4_7;
}

int main(int argc, char const *argv[])
{
  double in[8] = {75, 76, 75, 75, 69, 66, 77, 71};
  int i;
  double out[8];
  llm_dct(in, out);
  for (i = 0; i < 8; i++)
  {
    printf("%-4f\n", out[i]);
  }
  return 0;
}

#if 0
// Naive implementation of LLM DCT.
// Easier to read, but uses more multiplications for rotation.
void llm_dct(const double in[8], double out[8]) {
  // After stage 1:
  const double s1_0 =  in[0] + in[7];
  const double s1_1 =  in[1] + in[6];
  const double s1_2 =  in[2] + in[5];
  const double s1_3 =  in[3] + in[4];
  const double s1_4 = -in[4] + in[3];
  const double s1_5 = -in[5] + in[2];
  const double s1_6 = -in[6] + in[1];
  const double s1_7 = -in[7] + in[0];

  // After stage 2:
  const double s2_0 =  s1_0 + s1_3;
  const double s2_1 =  s1_1 + s1_2;
  const double s2_2 = -s1_2 + s1_1;
  const double s2_3 = -s1_3 + s1_0;

  const double s2_4 =  s1_4 * cos(3. * M_PI / 16.) + s1_7 * sin(3. * M_PI / 16.);
  const double s2_7 = -s1_4 * sin(3. * M_PI / 16.) + s1_7 * cos(3. * M_PI / 16.);

  const double s2_5 =  s1_5 * cos(1. * M_PI / 16.) + s1_6 * sin(1. * M_PI / 16.);
  const double s2_6 = -s1_5 * sin(1. * M_PI / 16.) + s1_6 * cos(1. * M_PI / 16.);

  // After stage 3:
  const double s3_0 =  s2_0 + s2_1;
  const double s3_1 = -s2_1 + s2_0;

  const double s3_2 = sqrt(2.) * ( s2_2 * cos(6. * M_PI / 16.) + s2_3 * sin(6. * M_PI / 16.));
  const double s3_3 = sqrt(2.) * (-s2_2 * sin(6. * M_PI / 16.) + s2_3 * cos(6. * M_PI / 16.));

  const double s3_4 =  s2_4 + s2_6;
  const double s3_5 = -s2_5 + s2_7;
  const double s3_6 = -s2_6 + s2_4;
  const double s3_7 =  s2_7 + s2_5;

  // After stage 4:
  const double s4_4 = -s3_4 + s3_7;
  const double s4_5 =  s3_5 * sqrt(2.);
  const double s4_6 =  s3_6 * sqrt(2.);
  const double s4_7 =  s3_7 + s3_4;

  // Shuffle and scaling:
  out[0] = s3_0 / sqrt(8.);
  out[4] = s3_1 / sqrt(8.);
  out[2] = s3_2 / sqrt(8.);
  out[6] = s3_3 / sqrt(8.);
  out[7] = s4_4 / sqrt(8.);
  out[3] = s4_5 / sqrt(8.);
  out[5] = s4_6 / sqrt(8.);
  out[1] = s4_7 / sqrt(8.);
}
#endif

// vim:set ts=2 sw=2 et:
