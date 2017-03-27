//
//  Product.m
//  YourName
//
//  Created by nicholaslee on 27/03/2017.
//  Copyright © 2017 nicholaslee. All rights reserved.
//

#import "Product.h"

@implementation Product

-(instancetype)init {
    self = [super init];
    if (self) {
        // Initialize self
        self.productName = @"Coming soon";
        self.launchDate = @"Coming soon";
        self.image = [UIImage imageNamed:@"Coming soon"];
        
        
    }
    return self;
}

-(id) initWithName:(NSString*)name withDate:(NSString*)date withImage:(UIImage*)image withUrl:(NSString *)url {


    self = [super init];
    if (self) {
        self.productName = name;
        self.launchDate = date;
        self.image = image;
        self.url = url;
    }
    return self;



}


@end
