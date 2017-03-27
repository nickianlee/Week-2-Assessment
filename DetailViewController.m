//
//  DetailViewController.m
//  YourName
//
//  Created by nicholaslee on 27/03/2017.
//  Copyright © 2017 nicholaslee. All rights reserved.
//

#import "DetailViewController.h"
#import "WebViewController.h"
#import "ListViewController.h"
#import "Product.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *showProductImage;
@property (weak, nonatomic) IBOutlet UIButton *changeButton;
@property (weak, nonatomic) IBOutlet UITextField *changeTextField;
@property (weak, nonatomic) IBOutlet UIButton *urlButton;
@property (weak, nonatomic) IBOutlet UITextField *changeDate;



@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.showProductImage setImage:self.selectProduct.image];
    [self.changeTextField setText: self.selectProduct.productName];
    [self.changeDate setText: self.selectProduct.launchDate];
    
    [self.urlButton addTarget:self action:@selector(tapUrlButton) forControlEvents:UIControlEventTouchUpInside];
    
    [self.changeTextField setEnabled:NO];
    [self.changeDate setEnabled:NO];
    [self setTitle:self.selectProduct.productName];
    
    
}


-(void)tapUrlButton {


    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    WebViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"WebViewController"];
  //to pass data forward
    controller.url = self.selectProduct.url;
    
    [self.navigationController pushViewController:controller animated:YES];
    
   // [self presentViewController:controller animated:YES completion:NULL];

}

- (IBAction)editButton:(id)sender {
    // to improve the line change == NO with !
    if (!self.changeTextField.enabled ){
        [self.changeTextField setEnabled:YES];
        [self.changeDate setEnabled:YES];
        
    }else {
    
        self.changeTextField.enabled = NO;
        self.changeDate.enabled = NO;
        
    }
    
    
    self.selectProduct.productName = self.changeTextField.text;
    self.selectProduct.launchDate = self.changeDate.text;
    [self setTitle:self.selectProduct.productName];
}

- (IBAction)tapChangeTitle:(id)sender {
    NSString* newTitle = self.changeTextField.text;
    
    if(self.delegate){
        [self.delegate newUpdateTitle:newTitle];
    
    
    }
    
}




@end
