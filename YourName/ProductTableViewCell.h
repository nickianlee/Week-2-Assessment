//
//  ProductTableViewCell.h
//  YourName
//
//  Created by nicholaslee on 27/03/2017.
//  Copyright © 2017 nicholaslee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *productImage;
@property (weak, nonatomic) IBOutlet UILabel *productLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;


@end
