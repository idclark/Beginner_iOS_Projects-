//
//  TImeViewController.m
//  HypnoTime
//
//  Created by Ian D Clark on 12/1/12.
//  Copyright (c) 2012 Ian D Clark. All rights reserved.
//

#import "TImeViewController.h"

@implementation TImeViewController
-(IBAction)showCurrentTime:(id)sender
{
    NSDate *now = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle:NSDateFormatterMediumStyle];
    
    [timelabel setText:[formatter stringFromDate:now]];
}

-(id) initWithNibName:(NSString *)nibName bundle:(NSBundle *)bundle
{
    
    //get a pointer to the application bundle object
    
    self = [super initWithNibName:@"TimeViewController"
                           bundle:[NSBundle mainBundle]];
    if (self) {
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle:@"Time"];
    }
    return self;
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor greenColor]];
}
@end
