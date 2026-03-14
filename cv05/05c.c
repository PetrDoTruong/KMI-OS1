#include <stdio.h>
void swap(int *a, int *b);
void division(unsigned int x, unsigned int y,
    unsigned int *result, unsigned int *remainder);

int main(){
    //swap
    int a = 2;
    int b = 0;
    swap(&a, &b);
    printf("swap a=2, b=0 je: a=%i b=%i\n", a, b);

    //division
    int x = 4;
    int y = 2;
    unsigned int result;
    unsigned int remainder;
    division(x, y, &result, &remainder);
    printf("4/2 je: %i a zbytek je = %i\n", result, remainder);
    return 0;
}