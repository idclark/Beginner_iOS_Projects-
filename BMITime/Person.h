//
//  Person.h
//  BMITime
//
//  Created by Ian Clark on 10/24/12.
//  Copyright (c) 2012 Ian Clark. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
//two instance variables
float heightInMeters;
int weightInKilos;
}
//set those accessor methods with @property
@property float heightInMeters;
@property int weihgtInKilos;
-(float)bodyMassIndex;

@end
