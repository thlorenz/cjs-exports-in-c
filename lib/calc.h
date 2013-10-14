#ifndef CALC_H
#define CALC_H
typedef struct {
  int (*add)(int, int);
  int (*mult)(int, int);
} CalcExports;

CalcExports calc;
#endif
