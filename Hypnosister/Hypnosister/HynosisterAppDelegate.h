//
//  HynosisterAppDelegate.h
//  Hypnosister
//
//  Created by Ian Clark on 11/1/12.
//  Copyright (c) 2012 Ian Clark. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HynosisView.h"

@interface HynosisterAppDelegate : UIResponder <UIApplicationDelegate, UIScrollViewDelegate>
{
    HynosisView *view;
}
@property (strong, nonatomic) UIWindow *window;

@end
