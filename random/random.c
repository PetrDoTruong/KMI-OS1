#include <stdio.h>
long vypocet(long a, long b, long c);
long aritmetika(long a, long b, long c);
long kombinace(long a, long b, long c, long d);
void divide_and_store(int numerator, int denominator, int *quotiont, int *remainder);
void ordered(unsigned short *a, unsigned short *b);

int main(){
    // vypocet
    long a = 2;
    long b = 30;
    long c = 20;
    printf("vysledek = (a+b)*c a=2, b=30, c=20 je: %ld\n", vypocet(a, b, c));

    // aritmetika
    printf("vysledek = (a-b) + ca=2, b=30, c=20 je: %ld\n", aritmetika(a, b, c));

    // kombinace
    long d = 21;
    printf("vysledek = (a+b)-(c+d) a=2, b=30, c=20 d=21 je: %ld\n", kombinace(a, b, c, d));

    // div n store
    int num = 20;
    int den = 12;
    int q = 0;
    int r = 0;

    divide_and_store(num, den, &q, &r);
    printf("vysledek: %d / %d = %d, zbytek %d\n", num, den, q, r);

    // oredered
    unsigned short x = 10;
    unsigned short y = 20;
    ordered(&x, &y);
    printf("x=10, y=20 vysledek (ocekavano 20, 10): a = %hu, b = %hu\n", x, y);
    return 0;
}