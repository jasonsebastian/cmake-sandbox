#include<"add_library.h">
#include<"subtract_library.h">
#include<"stdio.h">

int main(void){
    printf("1+2:%i", add_func(1,2));
    printf("2-1:%i", subtract_func(2,1));
}
