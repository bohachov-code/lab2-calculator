#include <stdio.h>
#include "calculator.h"

int main() {
	printf("Calculator Demo\n");
	printf("===============\n");
	printf("10 + 5 = %d\n", add(10, 5));
	printf("10 - 5 = %d\n", subtract(10, 5));
	return 0;
}

