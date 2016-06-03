//
//  ViewController.m
//  SolbegSoftUber
//
//  Created by Daniil Lobanov on 02.06.16.
//  Copyright © 2016 Daniil Lobanov. All rights reserved.
//

#import "ViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - NSObject

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        
    }
    return self;
}

#pragma mark - UIViewController

- (void)viewDidLoad
{    
    [super viewDidLoad];
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-33.868
                                                            longitude:151.2086
                                                                 zoom:6];
    GMSMapView *mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = camera.target;
    marker.snippet = @"Hello World";
    marker.appearAnimation = kGMSMarkerAnimationPop;
    marker.map = mapView;
    
    self.view = mapView;
}

@end
