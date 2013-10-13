//
//  BNRImageStore.h
//  Homepwner
//
//  Created by Ian D Clark on 12/27/12.
//  Copyright (c) 2012 Ian D Clark. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRImageStore : NSObject
{
    NSMutableDictionary *dictionary;

}
+(BNRImageStore *)sharedStore;

-(void)setImage:(UIImage *)i forKey:(NSString *)s;
-(UIImage *)imageForKey:(NSString *)s;
-(void)deleteImageForKey:(NSString *)s;

@end
