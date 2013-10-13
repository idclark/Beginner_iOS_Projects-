//
//  main.c
//  BMICalc
//
//  Created by Ian Clark on 10/21/12.
//  Copyright (c) 2012 Ian Clark. All rights reserved.
//

#include <stdio.h>

typedef struct _Person{
    float heightInMeters;
    int weightInKilos;
    
} Person;

float bodyMassIndex(Person p)
{
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

int main(int argc, const char * argv[])
{
    Person person;
    person.weightInKilos = 96;
    person.heightInMeters = 1.8;
    float bmi = bodyMassIndex(person);
    printf("person has a BMI of %.2f\n", bmi);
    printf("person weighs %i kilograms\n", person.weightInKilos);
    printf("person is %.2f meters tall\n", person.heightInMeters);
    return 0;
}

