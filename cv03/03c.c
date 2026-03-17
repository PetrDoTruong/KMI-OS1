#include <stdio.h>

int inc1(int arg);
int rectangle_circumference(int a, int b);
int obsah_obdelniku(int a, int b);
int obvod_ctverce(int a);
int obvod_trojuhelnika(int a, int b, int c);
int obvod_trojuhelnika2(int a);
int obsah_trojuhelnika2(int a, int b);
int objem_krychle(int a);
unsigned int avg(unsigned int a, unsigned int b, unsigned int c);

int main(){
    // inc
    printf("inc(2) je --> %i\n", inc1(2));
    // rectangle_circumference
    printf("obvod obdelnika o stranach 4x5: %i\n", rectangle_circumference(4, 5));
    //obsah_obdelniku
    printf("obsah obdelniku o velikosti 2 a 4 je: %i\n", obsah_obdelniku(2, 4));
    //obsah_ctverce
    printf("obvod čtverce o velikosti strany A = 5: %i\n", obvod_ctverce(5));
    // obvod_trojuhelnika
    printf("obvod trojuhelnika a=2, b=3, c=2 je: %i\n", obvod_trojuhelnika(2, 3, 2));
    // obvod_trojuhelnika který je rovnostraný
    printf("obvod rovnoramenneho trojuhelniku a=3 je: %i\n", obvod_trojuhelnika2(3));
	// obsah_trojuhelniku
    printf("obsah pravouhleho trojuhelniku a=3, b=4 je: %i\n", obsah_trojuhelnika2(3, 4));
    // objem krychle
    printf("objem krychle a=4 je: %i\n", objem_krychle(4));
    // avg
    printf("průměr a=2, b=4, c=9 je: %i\n", avg(2, 4, 9));
    return 0;
}
