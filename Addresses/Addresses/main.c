//
//  main.c
//  Addresses
//
//  Created by Ian Clark on 10/21/12.
//  Copyright (c) 2012 Ian Clark. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    int i = 17;
    int *AddressofI = &i;
    int c = 8;
    int *AddressofC = &c;
    
    printf("int i stores its value at %p\n", AddressofI);
    printf("this function starts at %p\n", main);
    *AddressofI = 89;
    printf("now i is %d\n", i);
    printf("the value of int stored at addressofI is %d\n", *AddressofI);
    printf("an int is %zu bytes\n", sizeof(int));
    printf("a pointer is %zu bytes\n", sizeof(int *));
    printf("the value of c is %i \n", c);
    printf("the value of c pointer is %p\n", AddressofC);
    printf("the value of with start is %d\n", *AddressofC);
    
    return 0;
}

int floater(int argc, const char * argv[])
{
    float b = 2.0;
    float *AddressofB = &b;
    printf("a float is %zu bytes\n", sizeof(b));
    printf("a pointer to float is %zu bytes\n", sizeof(AddressofB));
    return 0;
           
}