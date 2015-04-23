//
//  PlacesCollectionViewCell.m
//  Lab6
//
//  Created by ITP Student on 4/22/15.
//  Copyright (c) 2015 Adrian. All rights reserved.
//

#import "PlacesCollectionViewCell.h"
// class extension
@interface PlacesCollectionViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation PlacesCollectionViewCell
-(void) setViewCell:(NSDictionary *) place{
    UIImage *placeImage = [UIImage imageNamed:place[@"image"]];
    self.imageView.image = placeImage;
    self.label.text = place[@"name"];
    
}

@end
