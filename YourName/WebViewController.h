//
//  WebViewController.h
//  YourName
//
//  Created by nicholaslee on 27/03/2017.
//  Copyright © 2017 nicholaslee. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WebViewController;

@protocol WebViewControllerDelegate <NSObject>

-(void)willDismissController:(WebViewController*) controller;

@end


@interface WebViewController : UIViewController
@property (strong,nonatomic) NSString *url;
@property (weak, nonatomic) id<WebViewControllerDelegate> delegate;

@end
