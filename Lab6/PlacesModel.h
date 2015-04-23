//
//  PlacesModel.h
//  Lab6
//
//  Created by ITP Student on 4/22/15.
//  Copyright (c) 2015 Adrian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlacesModel : NSObject

+ (instancetype) sharedModel;
- (NSUInteger) numberOfPlaces;
- (NSDictionary *) placeAtIndex: (NSUInteger) index;
@end
