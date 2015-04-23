//
//  PlacesCollectionViewController.h
//  Lab6
//
//  Created by ITP Student on 4/22/15.
//  Copyright (c) 2015 Adrian. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^CellCompletionHandler)(NSDictionary *place);

@interface PlacesCollectionViewController : UICollectionViewController
@property(copy, nonatomic) CellCompletionHandler completionHandler;
@end
