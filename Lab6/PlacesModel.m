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

+(instancetype) sharedModel{
    static PlacesModel  *_sharedModel =nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedModel = [[self alloc] init];
    });
    return _sharedModel;
}

- (instancetype) init
{
    _placesFilePath = [[NSBundle mainBundle] pathForResource:@"places" ofType:@"plist" ];
    _places = [NSMutableArray arrayWithContentsOfFile:_placesFilePath];
    
    if(!_places){ // no file
        _places = [[NSMutableArray alloc] initWithObjects:
                   [NSDictionary dictionaryWithObjectsAndKeys:@"The Getty",@"name", @"www.getty.edu",@"website","getty.jpg",@"image",nil],
                   nil];
    }
    
    
    return self;
}

- (NSUInteger) numberOfPlaces{
    return [self.places count];
}

- (NSDictionary *) placeAtIndex: (NSUInteger) index{
    return [self.places objectAtIndex:index];
}

@end
