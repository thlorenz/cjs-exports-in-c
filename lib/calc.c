#include "calc.h"

static int
add(int a, int b) {
  return a + b;
}

static int
mult(int a, int b) {
  return a * b;
}

CalcExports calc = {
    add
  , mult
};
