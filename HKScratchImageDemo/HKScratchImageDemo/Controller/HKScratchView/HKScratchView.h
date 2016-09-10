//
//  HKScratchView.h
//  HKScratchImageDemo
//
//  Created by hukaiyin on 16/9/7.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HKScratchView : UIView

@property (nonatomic, strong)UIImage *resultImg; //目前显示的结果图片

- (instancetype)initWithFrame:(CGRect)frame topImg:(UIImage *)topImg bottomImg:(UIImage *)bottomImg;

- (instancetype)initWithFrame:(CGRect)frame topImgView:(UIImageView *)topImgView bottomImgView:(UIImageView *)bottomImgView;

- (void)clearTopImg;//消去上层图片
@end
