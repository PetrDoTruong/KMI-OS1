#include <stdio.h>

int sgn(int i);
char max2c(char a, char b);
unsigned short max3us(unsigned short a, unsigned short b, unsigned short c);

int main(){
    //sgn
    printf("je sgn(2) kladné/záporné nebo nula? --> %i\n", sgn(2));
    printf("je sgn(-2) kladné/záporné nebo nula? --> %i\n", sgn(-2));
    printf("je sgn(0) kladné/záporné nebo nula? --> %i\n", sgn(0));

    //max2c
    printf("největší hodnota z hodnot A = 2, B = 4, je %i\n", max2c(2, 4));
    printf("největší hodnota z hodnot A = 4, B = 0, je %i\n", max2c(4, 0));

    printf("největší hodnota z hodnot A = a, B = b, je %c\n", max2c('a', 'b'));

    //max3us
    printf("největší hodnota z hodnot A = 2, B = 0, C = 1 je %hd\n", max3us(2, 0, 1));
    printf("největší hodnota z hodnot A = 0, B = 20, C = 2 je %hd\n", max3us(0, 20, 2));
    printf("největší hodnota z hodnot A = 1, B = 3, C = 200 je %hd\n", max3us( 1, 3, 200));
    printf("největší hodnota z hodnot A = 1, B = 0, C = 200 je %hd\n", max3us( 1, 0, 200));

	return 0;
}
