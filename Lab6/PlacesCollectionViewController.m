//
//  PlacesCollectionViewController.m
//  Lab6
//
//  Created by ITP Student on 4/22/15.
//  Copyright (c) 2015 Adrian. All rights reserved.
//

#import "PlacesCollectionViewController.h"
#import "PlacesModel.h"
#import "PlacesCollectionViewCell.h"
#import "DetailViewController.h"

@interface PlacesCollectionViewController ()
@property(strong, nonatomic) PlacesModel *model;
@end

@implementation PlacesCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    self.model = [PlacesModel sharedModel];
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DetailViewController *detailVC = segue.destinationViewController;
    
    NSIndexPath *indexPath = self.collectionView.indexPathsForSelectedItems[0];
    NSDictionary *place = [self.model placeAtIndex:indexPath.row];
    [detailVC setPlace:place];
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return [self.model numberOfPlaces];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PlacesCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Place"  forIndexPath:indexPath];
    NSDictionary *place = [self.model placeAtIndex:indexPath.row];
   
    [cell setViewCell:place];
    return cell;
}
- (void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    UICollectionViewFlowLayout *layout = (UICollectionViewFlowLayout *)[self.collectionView collectionViewLayout];
    if (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft || toInterfaceOrientation == UIInterfaceOrientationLandscapeRight){
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    }
    else{
        layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    }
    
}


#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
