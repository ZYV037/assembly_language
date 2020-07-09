#include <stdlib.h>
#include <stdio.h>

char big_array[1<<24];  // 16MB
char huge_array[1<<28];  // 256MB

int beyond;
char* p1, *p2, *p3, *p4;

int useless(){ return 0; }

int main()
{
    p1 = malloc(1<<28);
    p2 = malloc(1<<8);
    p3 = malloc(1<<28);
    p4 = malloc(1<<8);

    printf("big_array: %p\n", big_array);
    printf("huge_array: %p\n", huge_array);

    printf("p1: %p\n", p1);
    printf("p2: %p\n", p2);
    printf("p3: %p\n", p3);
    printf("p4: %p\n", p4);
}