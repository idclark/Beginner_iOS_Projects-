//
//  HynosisView.m
//  Hypnosister
//
//  Created by Ian Clark on 11/1/12.
//  Copyright (c) 2012 Ian Clark. All rights reserved.
//

#import "HynosisView.h"

@implementation HynosisView

@synthesize circleColor;

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self){
        //all hypnosis views start with clear
        [self setBackgroundColor:[UIColor clearColor]];
        [self setCircleColor:[UIColor lightGrayColor]];
    }
    return self;
}

-(BOOL)becomeFirstResponder
{
    return YES;
}

-(void)drawRect:(CGRect)dirtyRect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect bounds = [self bounds];
    
    //figure out the center of the bounds of the rectangle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    //the radious of the circle should be nearly as big as the view
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    //thickness of the line should be 10 points wide
    CGContextSetLineWidth(ctx, 10);
    
    //the color of the line should be grey
    [[self circleColor] setStroke];
    
    //draw concentric circles
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        CGContextAddArc(ctx, center.x, center.y, currentRadius, 0.0, M_PI * 2.0, YES);
        
    CGContextStrokePath(ctx);
    }
    //create a string
    NSString *text = @"You are getting sleepy.";
    
    //get a font to draw it in
    UIFont *font = [UIFont boldSystemFontOfSize:28];
    CGRect textRect;
    
    //how big is this string when drawn in this font?
    textRect.size = [text sizeWithFont:font];
    
    //lets put the string in the center of the view
    textRect.origin.x = center.x - textRect.size.width / 2.0;
    textRect.origin.y = center.y - textRect.size.height / 2.0;
    
    //set the fill color of the current context to black
    [[UIColor blackColor] setFill];
    
    //shadow will move 4 pt to right and 3 pt down
    CGSize offset = CGSizeMake(4, 3);
    CGColorRef color = [[UIColor darkGrayColor] CGColor];
    
    //set the dhadow of the context with these parameters
    CGContextSetShadowWithColor(ctx, offset, 2.0, color);
    
    //draw the string
    [text drawInRect:textRect withFont:font];
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake) {
    NSLog(@"Device started shaking");
    [self setCircleColor:[UIColor redColor]];
     }
}

-(void)setCircleColor:(UIColor *)clr
{
    circleColor = clr;
    [self setNeedsDisplay];
}
@end
