//
//  DetailViewController.m
//  Lab6
//
//  Created by ITP on 4/22/15.
//  Copyright (c) 2015 Adrian. All rights reserved.
//

#import "DetailViewController.h"
#import "PlacesCollectionViewCell.h"
@interface DetailViewController ()
@property (strong, nonatomic) NSDictionary *place;
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

-(void)setPlace:(NSDictionary *) place{
    self.place = place;
}




@end
