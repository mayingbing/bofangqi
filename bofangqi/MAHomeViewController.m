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
@property(nonatomic ,strong)UIWebView *youkuView ;
@end

@implementation MAHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imgView = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:imgView];
    imgView.image = [UIImage imageNamed:@"wk"];
    imgView.contentMode = UIViewContentModeScaleAspectFill;
    
    UIButton *youkuBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:youkuBtn];
    youkuBtn.frame = CGRectMake((screenSize.width-100)/2, screenSize.height*0.3, 100, 40);
    [youkuBtn setTitle:@"优酷视频" forState:UIControlStateNormal];
    [youkuBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [youkuBtn addTarget:self action:@selector(setInYouKu) forControlEvents:UIControlEventTouchUpInside];
    
    youkuBtn.backgroundColor = [UIColor cyanColor];
    youkuBtn.layer.cornerRadius = 3;
    youkuBtn.layer.masksToBounds = YES;
    
    
    
    UIButton *iqiyiBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:iqiyiBtn];
    iqiyiBtn.frame = CGRectMake((screenSize.width-100)/2, screenSize.height*0.6, 100, 40);
    [iqiyiBtn setTitle:@"爱奇艺视频" forState:UIControlStateNormal];
    [iqiyiBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [iqiyiBtn addTarget:self action:@selector(setInAiqiyi) forControlEvents:UIControlEventTouchUpInside];
    
    iqiyiBtn.backgroundColor = [UIColor cyanColor];
    iqiyiBtn.layer.cornerRadius = 3;
    iqiyiBtn.layer.masksToBounds = YES;

}

-(void)setInYouKu{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://tv.youku.com/cn/index2?from=y1.3-idx-uhome-1519-20887.205921-205922.102-100"]];
}

-(void)setInAiqiyi{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.iqiyi.com/dianshiju/"]];
}
@end
