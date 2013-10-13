//
//  HeavyViewController.m
//  HeavyRotation
//
//  Created by Ian D Clark on 12/2/12.
//  Copyright (c) 2012 Ian D Clark. All rights reserved.
//

#import "HeavyViewController.h"

@implementation HeavyViewController
-(BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)x
{
    //Return YES if incoming orientation is Portrait
    //or either of the landscapes, else return NO
    return (x == UIInterfaceOrientationPortrait)
    || UIInterfaceOrientationIsLandscape(x);
}

@end
