#include <stdio.h>

#include "calc.h"

int main(int argc, char **argv)
{
	int a = 4;
	int b = 2;

	printf("%d + %d = %d\n", a, b, sum(a, b));
	printf("%d - %d = %d\n", a, b, sub(a, b));
	printf("%d * %d = %d\n", a, b, mul(a, b));

	return 0;
}
