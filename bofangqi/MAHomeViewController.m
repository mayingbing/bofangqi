//
//  MAHomeViewController.m
//  优酷简洁播放器
//
//  Created by mayingbing on 16/4/13.
//  Copyright © 2016年 aiche. All rights reserved.
//
#import "MAHomeViewController.h"
#import "MBProgressHUD.h"
#import <WebKit/WebKit.h>

#define screenSize [UIScreen mainScreen].bounds.size

@interface MAHomeViewController ()<WKNavigationDelegate>
@property(nonatomic ,strong)WKWebView *youkuView ;
@end

@implementation MAHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WKWebView *youkuView = [[WKWebView alloc]initWithFrame:self.view.bounds];
    youkuView.backgroundColor = [UIColor whiteColor];
    self.youkuView = youkuView;
    self.youkuView.allowsBackForwardNavigationGestures =YES;
    [self.view addSubview:youkuView];
    
    NSString *webUrl = @"http://m.iqiyi.com/dianshiju";
    
//    NSString *webUrl = @"http://m.baidu.com";
    
    NSURL *url = [[NSURL alloc]initWithString:webUrl];
    
    NSURLRequest *request = [[NSURLRequest alloc]initWithURL:url];
    youkuView.autoresizesSubviews = YES;
    [youkuView loadRequest:request];
    
    youkuView.navigationDelegate = self;
    
}

-(void)viewDidLayoutSubviews{
    
    [super viewDidLayoutSubviews];
    
    self.youkuView.frame = self.view.bounds;
    
    
}
-(void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation{
    
}
-(void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation{
    
}
-(void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation withError:(NSError *)error{
    
}

-(void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    
}


@end
