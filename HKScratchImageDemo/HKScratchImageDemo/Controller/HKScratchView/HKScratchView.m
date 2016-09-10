//
//  HKScratchView.m
//  HKScratchImageDemo
//
//  Created by hukaiyin on 16/9/7.
//  Copyright © 2016年 HKY. All rights reserved.
//

#import "HKScratchView.h"

@interface HKScratchView ()

@property (nonatomic, strong) UIImageView *topImgView;
@property (nonatomic, strong) UIImageView *bottomImgView;

@end

@implementation HKScratchView

#pragma mark - Life Cycle
- (instancetype)initWithFrame:(CGRect)frame topImg:(UIImage *)topImg bottomImg:(UIImage *)bottomImg {
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}


- (instancetype)initWithFrame:(CGRect)frame topImgView:(UIImageView *)topImgView bottomImgView:(UIImageView *)bottomImgView {
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

#pragma mark - Public

- (void)clearTopImg {
    //TODO: 渐隐效果
    self.topImgView.hidden = YES;
}

#pragma mark - Setters & Getters

- (UIImage *)resultImg {
    //TODO: 取当前 HKScratchView 显示图片。注意在 clearTopImg 之后，应只显示bottom
    return _resultImg;
}

@end
