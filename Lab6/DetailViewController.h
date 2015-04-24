//
//  DetailViewController.h
//  Lab6
//
//  Created by ITP on 4/22/15.
//  Copyright (c) 2015 Adrian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UIWebViewDelegate>
@property (strong, nonatomic) NSDictionary *place;
@end
