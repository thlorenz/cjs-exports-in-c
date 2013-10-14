#include <stdio.h>
#include "lib/calc.h"

int main(void)
{
  int sum = calc.add(1, 2);
  int prod = calc.mult(3, 4);
  printf("sum: %d, product: %d", sum, prod);

  return 0;
}
