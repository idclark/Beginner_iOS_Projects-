//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Ian D Clark on 12/16/12.
//  Copyright (c) 2012 Ian D Clark. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject
{
    NSMutableArray *allItems;
}

//class method prefixed with a +
+(BNRItemStore *)sharedStore;

-(void)removeItem:(BNRItem *)p;
-(NSArray *) allItems;
-(NSArray *) createItem;
-(void)moveItemAtIndex:(int)from
               toIndex:(int)to;

@end
