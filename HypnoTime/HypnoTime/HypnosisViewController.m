//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by Ian D Clark on 12/1/12.
//  Copyright (c) 2012 Ian D Clark. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HynosisView.h"

@implementation HypnosisViewController

-(void) loadView
{
    CGRect frame = [[UIScreen mainScreen] bounds];
    HynosisView *v = [[HynosisView alloc] initWithFrame:frame];
    
    //set it as *the* view of this controller
    [self setView:v];
    
}

-(id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)bundle
{
    //call the superclasses designated initializer
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        UITabBarItem *tbi = [self tabBarItem];
        
        //give it a label
        [tbi setTitle: @"Hypnosis"];
    }
    return self;
}
@end
