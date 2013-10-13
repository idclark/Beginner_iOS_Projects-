//
//  BNRMapPoint.m
//  Whereami
//
//  Created by Ian Clark on 10/30/12.
//  Copyright (c) 2012 Ian Clark. All rights reserved.
//

#import "BNRMapPoint.h"

@implementation BNRMapPoint

@synthesize coordinate, title;

-(id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t
{
    self = [super init];
    if (self){
        coordinate = c;
        [self setTitle:t];
    }
    return self;
}

//remember to override init for our own initialization
-(id)init
{
    return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07, -89.32)
                              title:@"HomeTown"];
}

@end
