//
//  BNRMapPoint.h
//  Whereami
//
//  Created by Ian Clark on 10/30/12.
//  Copyright (c) 2012 Ian Clark. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface BNRMapPoint : NSObject <MKAnnotation>
{
    
}

//new disgnated initializer for instances of BNRMapPoint
-(id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t;

//required property for MKAnnotation
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

//optional property for MKAnnotation
@property (nonatomic, copy) NSString *title;

@end
