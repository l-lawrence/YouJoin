//
//  DYJLoginTextField.m
//  YouJoin
//
//  Created by Lawrence on 2018/6/3.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import "DYJLoginTextField.h"

@implementation DYJLoginTextField

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init {
    if (self = [super init]) {
        self = [self configureField:self];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self = [self configureField:self];
    }
    return self;
}

- (DYJLoginTextField *)configureField:(DYJLoginTextField *)field {
    field.borderStyle = UITextBorderStyleRoundedRect;
    field.layer.masksToBounds = YES;
    field.layer.cornerRadius = 3.0;
//    field.backgroundColor = [UIColor lightGrayColor];
    field.textAlignment = NSTextAlignmentCenter;
    field.layer.borderColor = [UIColor lightGrayColor].CGColor;
    field.autocorrectionType = UITextAutocorrectionTypeNo;
    field.tintColor = kBlueColor;
    field.clearButtonMode = UITextFieldViewModeWhileEditing;
    field.autocapitalizationType = UITextAutocapitalizationTypeNone;
    return field;
}

@end
