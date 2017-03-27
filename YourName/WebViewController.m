//
//  WebViewController.m
//  YourName
//
//  Created by nicholaslee on 27/03/2017.
//  Copyright © 2017 nicholaslee. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController () <WebViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
//@property (strong , nonatomic) NSString*productUrl;  not needed

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadURL];
//    [self.productUrl isEqualToString:self.url];
}


-(void)loadURL{
    NSURL*URL = [NSURL URLWithString:self.url];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    [self.webView loadRequest:request];
    

}

-(void)willDismissController:(WebViewController *)controller{
    
}

@end
