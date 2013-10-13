//
//  BNRItem.h
//  RandomPosessions
//
//  Created by Ian Clark on 10/27/12.
//  Copyright (c) 2012 Ian Clark. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

//class method create a random object
+(id)randomItem;

-(id)initWithItemName:(NSString *)name
valueInDollars:(int)value
         serialNumber:(NSString *)sNumber;

@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;

@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;

@end
