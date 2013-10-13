//
//  main.m
//  RandomPosessions
//
//  Created by Ian Clark on 10/27/12.
//  Copyright (c) 2012 Ian Clark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
                
        BNRItem *backPack = [[BNRItem alloc] init];
        [backPack setItemName:@"BackPack"];
        
        BNRItem *calculator = [[BNRItem alloc] init];
        [calculator setItemName:@"Calculator"];
        
        //this is now a weak reference, so we don't get a retain cycle. 
        [backPack setContainedItem:calculator];
        NSLog(@"Setting items to nil...");
        
        backPack = nil;
        
        NSLog(@"Container: %@", [calculator container]);
        
        calculator = nil;
        
        
    }
    return 0;
}

