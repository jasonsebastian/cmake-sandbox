#include "subtract.h"
#include "multiply.h"

// Will result error because of PRIVATE
// #include "add.h"

#include<stdio.h>


int main(int argc, char *argv[])
{
    printf("2-1=%i\n", subtract(2, 1));
    printf("3*4=%i\n", multiply(3, 4));
    // printf("%i", add(4, 9));
    return 0;
}
