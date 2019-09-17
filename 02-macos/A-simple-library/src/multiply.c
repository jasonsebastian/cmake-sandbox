#include "calc/add.h"
#include "multiply.h"

int multiply(int a, int b) {
    int total = 0;
    for (int i = 0; i < a; i++) {
        total = add(total, b);
    }
    return total;
}
