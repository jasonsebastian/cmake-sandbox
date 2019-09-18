#include <stdio.h>

#include <calc/add.h>
#include <subtract.h>
#include <multiply.h>

int main(void) {
    printf("add(3, 2) = %d\n", add(3, 2));
    printf("subtract(3, 2) = %d\n", subtract(3, 2));
    printf("multiply(3, 2) = %d\n", multiply(3, 2));
    return 0;
}
