//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Ian  Clark on 12/31/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject
- (void)pushOperand:(double)operand;
- (double)performOperation:(NSString *)operation;

@property (readonly) id program;

+ (double)runProgram:(id)program;

+ (NSString *) descriptionOfProgram:(id)program;


@end
