//
//  TImeViewController.h
//  HypnoTime
//
//  Created by Ian D Clark on 12/1/12.
//  Copyright (c) 2012 Ian D Clark. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TImeViewController : UIViewController
{
    IBOutlet UILabel *timelabel;
}
-(IBAction)showCurrentTime:(id)sender;

@end
