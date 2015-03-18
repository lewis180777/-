//
//  AppRootViewController.m
//  MarBus
//
//  Created by YiHai on 15-3-2.
//  Copyright (c) 2015年 YiHai. All rights reserved.
//

#import "AppRootViewController.h"
#import <UIButton+WebCache.h>
#import <UIImageView+WebCache.h>

@interface AppRootViewController ()

@end

@implementation AppRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"结婚巴士";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor clearColor];
    button.frame = self.view.frame;
    [button setTitle:@"wowo" forState:UIControlStateNormal];
    [button sd_setBackgroundImageWithURL:[NSURL URLWithString:@"http://img.firefoxchina.cn/2015/03/5/201503131104390.jpg"] forState:UIControlStateNormal placeholderImage:[UIImage imageNamed:@"btn.png"]];
    [self.view addSubview:button];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
