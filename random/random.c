#include <stdio.h>
long vypocet(long a, long b, long c);

int main(){
    // vypocet
    long a = 2;
    long b = 30;
    long c = 20;
    printf("vypocet pro a=2, b=30, c=20 je: %ld\n", vypocet(a, b, c)); // vysledek = (a+b)*c
    
    return 0;
}