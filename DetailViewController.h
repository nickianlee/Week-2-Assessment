//
//  DetailViewController.h
//  YourName
//
//  Created by nicholaslee on 27/03/2017.
//  Copyright © 2017 nicholaslee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"


@class DetailViewController;
@protocol DetailViewControllerDelegate <NSObject>

-(void)newUpdateTitle:(NSString*) title;

@end


@interface DetailViewController : UIViewController

@property (strong,nonatomic) Product *selectProduct;
@property(weak , nonatomic) id <DetailViewControllerDelegate> delegate;
@end
