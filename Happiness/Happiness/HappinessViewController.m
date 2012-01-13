//
//  HappinessViewController.m
//  Happiness
//
//  Created by Ian  Clark on 1/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HappinessViewController.h"
#import "FaceView.h"

@interface HappinessViewController()

@property (nonatomic, weak) IBOutlet FaceView *faceView;
@end

@implementation HappinessViewController

@synthesize happiness = _happiness;

@synthesize faceView = _faceView; 

-(void)setHappiness:(int)happiness
{
    _happiness =happiness;
    [self.faceView setNeedsDisplay];
}





@end
