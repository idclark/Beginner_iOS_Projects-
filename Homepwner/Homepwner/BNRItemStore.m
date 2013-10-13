//
//  BNRItemStore.m
//  Homepwner
//
//  Created by Ian D Clark on 12/16/12.
//  Copyright (c) 2012 Ian D Clark. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@implementation BNRItemStore

+(BNRItemStore *)sharedStore
{
    static BNRItemStore *sharedStore = nil;
    if (!sharedStore)
        sharedStore = [[super allocWithZone:nil] init];
    
    return sharedStore;
        
    
}

//to prevent creating a new instance of BNRItemstore override the class method to instantiate the single instance
+(id)allocWithZone:(NSZone *)zone
{
    return [self sharedStore];
}

//override init to create an instance of NSMutableArray and assign it to the instance variable
-(id) init
{
    self = [super init];
    if (self){
        allItems = [[NSMutableArray alloc ] init];
    }
    return self;
}

//implement the two methods
-(NSArray *)allItems
{
    return allItems;
}

-(BNRItem *)createItem
{
    BNRItem *p = [BNRItem randomItem];
    [allItems addObject:p];
    return p;
}

-(void)removeItem:(BNRItem *)p
{
    [allItems removeObjectIdenticalTo:p];
}

-(void)moveItemAtIndex:(int)from
               toIndex:(int)to
{
    if (from == to) {
        return;
    }
    //get pinter ro onject eing moved so we can er=insert it
    BNRItem *p = [allItems objectAtIndex:from];
    //remove p from array
    [allItems removeObjectAtIndex:from];
    //insert p in array at new location
    [allItems insertObject:p atIndex:to];
}

@end
