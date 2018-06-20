//
//  DYJLoginButton.m
//  YouJoin
//
//  Created by Lawrence on 2018/6/21.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import "DYJLoginButton.h"

@implementation DYJLoginButton

+ (DYJLoginButton *)buttonWithTitle:(NSString *)title backgroundColor:(UIColor *)backgroundColor titleColor:(UIColor *)titleColor frame:(CGRect)frame cornerRadius:(double)cornerRadius {
    DYJLoginButton *button = [[DYJLoginButton alloc]initWithFrame:frame];
    [button setTitle:title forState:UIControlStateNormal];
    [button setBackgroundColor:backgroundColor];
    [button.titleLabel setTextColor:titleColor];
    [button.titleLabel setFont:[UIFont systemFontOfSize:13.0 weight:UIFontWeightRegular]];
    button.layer.cornerRadius = cornerRadius;
    button.layer.masksToBounds = YES;
    return button;
}

@end
