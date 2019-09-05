#include "multiply/multiply.h"
#include "add/add.h"

int multiply(int a, int b)
{
    int total = 0;
    for(int i=0; i<b; i++){
        total = add(total, a);
    }
    return total;
}
