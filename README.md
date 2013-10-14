# cjs-exports-in-c

Attempt at simulating commonJS style exports as closely as possible in pure C, i.e. without rewriting the source and/or
pre-processor statements.

```C
#include <stdio.h>
#include "lib/calc.h"

int main(void)
{
  int sum = calc.add(1, 2);
  int prod = calc.mult(3, 4);
  printf("sum: %d, product: %d", sum, prod);

  return 0;
}
```

Although `calc` magically appears, it's at least only **one** var, which represents the `module.exports` and allows
accessing all exposed functions.

In order to make this work `CalcExports` also becomes available, but can be safely ignored.

## Try it

`make start`
