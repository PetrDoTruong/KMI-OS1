#include <stdio.h>

int inc1(int arg);
int rectangle_circumference(int a, int b);
int obsah_obdelniku(int a, int b);
int obvod_ctvertce(int a);

int main(){

    printf("inc(2) je --> %i\n", inc1(2));
    printf("obvod obdelnika o stranach 4x5: %i\n", rectangle_circumference(4, 5));
    printf("obsah obdelniku o velikosti 2 a 4 je: %i\n", obsah_obdelniku(2, 4));
    printf("obvod čtverce o velikosti strany A = 5: %i\n", obvod_ctvertce(5));
    
	return 0;
}
