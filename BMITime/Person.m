//
//  Person.m
//  BMITime
//
//  Created by Ian Clark on 10/24/12.
//  Copyright (c) 2012 Ian Clark. All rights reserved.
//

#import "Person.h"

@implementation Person
// use @synthesize to implement the property setter and getters
@synthesize heightInMeters, weihgtInKilos;

-(float) bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weihgtInKilos] / (h * h);
}
@end
