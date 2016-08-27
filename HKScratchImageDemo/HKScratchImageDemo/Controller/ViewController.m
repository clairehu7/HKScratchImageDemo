//
//  ViewController.m
//  HKScratchImageDemo
//
//  Created by hukaiyin on 16/8/27.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "ViewController.h"
#import "ShowImageViewController.h"

@interface ViewController ()<UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *scratchIV;
@property (weak, nonatomic) IBOutlet UIImageView *backGroundIV;

@property (nonatomic, strong)UIImage *resultImage;
@end

@implementation ViewController

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.scratchIV setUserInteractionEnabled:YES];
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGesture:)];
    [self.scratchIV addGestureRecognizer:pan];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIPanGestureRecognizer
- (void)panGesture:(UIPanGestureRecognizer *)sender {

    CGPoint panTouch = [sender locationInView:sender.view];
    CGRect scratchRect = CGRectMake(panTouch.x-20, panTouch.y-20, 40, 40);
    
    UIGraphicsBeginImageContextWithOptions(sender.view.frame.size, NO, 0);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    [sender.view.layer renderInContext:ctx];
    CGContextClearRect(ctx, scratchRect);
    UIImage*image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.scratchIV.image = image;
    
    if (sender.state == UIGestureRecognizerStateEnded) {
        [self checkSave];
    }
}

#pragma mark - Alert
- (void)checkSave {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"是否保存？" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    alertView.delegate = self;
    [alertView show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
        UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, YES, 1);
        [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
        UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
        
        self.resultImage = [UIImage imageWithCGImage:CGImageCreateWithImageInRect(img.CGImage, self.backGroundIV.frame)];
        UIGraphicsEndImageContext();
    }
}

#pragma mark - Btn Methods
- (IBAction)showImage:(UIButton *)sender {
    ShowImageViewController *vc = [[ShowImageViewController alloc]init];
    vc.image = self.resultImage;
    
    [self showViewController:vc sender:nil];
}

@end
