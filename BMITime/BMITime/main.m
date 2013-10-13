//
//  main.m
//  BMITime
//
//  Created by Ian Clark on 10/24/12.
//  Copyright (c) 2012 Ian Clark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Person()
@end
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Person *ian = [[Person alloc] init];
        
        [ian weightInKilos:96];
        [ian heightInMeters:1.8];
        
        float bmi = [ian bodyMassIndex];
        NSLog(@"Ian (%d, %f) has a BMI of %f",
              [ian weightInKilos], [ian heightInMeters], bmi);
        
    }

    return 0;
}

