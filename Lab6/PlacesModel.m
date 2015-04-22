//
//  PlacesModel.m
//  Lab6
//
//  Created by ITP Student on 4/22/15.
//  Copyright (c) 2015 Adrian. All rights reserved.
//

#import "PlacesModel.h"
// class extension
@interface PlacesModel ()
//private properties
@property(strong, nonatomic)NSMutableArray *places;
@property(strong, nonatomic)NSString *placesFilePath;

@end
//keys
NSString *const NameKey = @"name";
NSString *const WebsiteKey = @"website";
NSString *const ImageKey = @"image";
//plist
NSString *const PlacesPlist = @"places.plist";

@implementation PlacesModel
- (instancetype) init
{
    _placesFilePath = @"places.plist";
    _places = [NSMutableArray arrayWithContentsOfFile:_placesFilePath];
    
    if(!_places){ // no file
        _places = [[NSMutableArray alloc] initWithObjects:
                   [NSDictionary dictionaryWithObjectsAndKeys:@"The Getty",@"name",@"website", @"www.getty.edu",@"image","getty.jpg",nil],
                   nil];
    }
    
    
    return self;
}

@end
