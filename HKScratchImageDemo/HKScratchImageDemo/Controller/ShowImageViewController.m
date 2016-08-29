//
//  ShowImageViewController.m
//  HKScratchImageDemo
//
//  Created by hukaiyin on 16/8/27.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "ShowImageViewController.h"

@interface ShowImageViewController ()

@end

@implementation ShowImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Result";
    self.view.backgroundColor = [UIColor colorWithRed:0.310 green:0.627 blue:0.984 alpha:1.000];
    UIImageView *iv = [[UIImageView alloc]initWithImage:self.image];
    iv.frame = CGRectMake(0, 64, iv.frame.size.width, iv.frame.size.height);
    [self.view addSubview:iv];
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
