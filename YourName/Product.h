//
//  Product.h
//  YourName
//
//  Created by nicholaslee on 27/03/2017.
//  Copyright © 2017 nicholaslee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Product : NSObject

@property (strong,nonatomic) NSString *productName;
@property (strong,nonatomic) NSString *launchDate;
@property(strong,nonatomic) UIImage *image;
@property(strong,nonatomic) NSString *url;


-(id) initWithName:(NSString*)name withDate:(NSString*)date withImage:(UIImage*)image withUrl:(NSString*)url;

@end
