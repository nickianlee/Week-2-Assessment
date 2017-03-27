//
//  ListViewController.m
//  YourName
//
//  Created by nicholaslee on 27/03/2017.
//  Copyright © 2017 nicholaslee. All rights reserved.
//

#import "ListViewController.h"
#import "Product.h"
#import "ProductTableViewCell.h"
#import "DetailViewController.h"

@interface ListViewController () <UITableViewDelegate , UITableViewDataSource , DetailViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong ,nonatomic) NSMutableArray *products;
@property (nonatomic, assign) NSInteger selectIndex;
@property (weak, nonatomic) IBOutlet UINavigationItem *mainTitleBar;

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.products = [[NSMutableArray alloc] init];
    [self prepareTableView];
    [self generateProduct];
}


-(void)prepareTableView {

    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.tableView setEstimatedRowHeight:80];
    [self.tableView setRowHeight: UITableViewAutomaticDimension];
}

-(void)viewWillAppear:(BOOL)animated{

    [self.tableView reloadData];
    
}

-(void) generateProduct {

    Product *appleTv = [[Product alloc] initWithName:@"Apple TV 4th Generation" withDate:@"October 30" withImage:[UIImage imageNamed:@"AppleTV"]withUrl:@"https://en.wikipedia.org/wiki/Apple_TV"];
    [self.products addObject:appleTv];
    
    Product *imac = [[Product alloc] initWithName:@"iMac with Retina 5K display 27-inch" withDate:@"October 13" withImage:[UIImage imageNamed:@"Imac"] withUrl:@"https://en.wikipedia.org/wiki/IMac"];
    [self.products addObject:imac];
    
    Product *ipad = [[Product alloc] initWithName:@"iPad Pro 12.9 inch" withDate:@"November 11" withImage:[UIImage imageNamed:@"Ipad"] withUrl:@"https://en.wikipedia.org/wiki/IPad_Pro"];
    [self.products addObject:ipad];
    
    Product *iphone = [[Product alloc] initWithName:@"iPhone 6s 32GB,128GB" withDate:@"September 25" withImage:[UIImage imageNamed:@"Iphone"] withUrl:@"https://en.wikipedia.org/wiki/IPhone_6S"];
    [self.products addObject:iphone];
    
    Product *watch = [[Product alloc] initWithName:@"Apple Watch Sports" withDate:@"April 24" withImage:[UIImage imageNamed:@"Watch"]withUrl:@"https://en.wikipedia.org/wiki/Apple_Watch"];
    [self.products addObject:watch];
    
    
}



#pragma mark tableView datasource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [self.products count];


}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    ProductTableViewCell *nameCell = [tableView dequeueReusableCellWithIdentifier:@"appleCell"];
    Product *currentProduct = [self.products objectAtIndex:indexPath.row];
    
    [nameCell.productLabel setText:currentProduct.productName];
    [nameCell.dateLabel setText:currentProduct.launchDate];
    [nameCell.productImage setImage:currentProduct.image];
    
    return nameCell;

}

-(void) newUpdateTitle:(NSString *)title   {
    
    [self.mainTitleBar setTitle:title];
    
}

#pragma mark tableView Delegate 

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    self.selectIndex = indexPath.row;
    [self performSegueWithIdentifier:@"showDetail" sender:self];

}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if([segue.identifier isEqualToString:@"showDetail"]) {
        DetailViewController *destinationViewController = [segue destinationViewController];
        destinationViewController.selectProduct = [self.products objectAtIndex:self.selectIndex];
        destinationViewController.delegate = self;
    }



}


















@end
