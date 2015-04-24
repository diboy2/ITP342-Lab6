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
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.place[@"name"];
    NSURL *url = [NSURL URLWithString:self.place[@"website"]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
    
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


@end
