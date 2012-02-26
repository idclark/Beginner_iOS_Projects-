//
//  FaceView.h
//  Happiness
//
//  Created by Ian  Clark on 1/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FaceView; 

@protocol FaceViewDataSourceProtocol
-(float) smileForFaceView:(FaceView *)sender; 
@end

@interface FaceView : UIView

@property (nonatomic) CGFloat scale;

- (void)pinch:(UIPinchGestureRecognizer *)gesture;


@property (nonatomic, weak) IBOutlet id <FaceViewDataSourceProtocol> dataSource; 
@end
