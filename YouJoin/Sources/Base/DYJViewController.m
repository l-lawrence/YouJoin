//
//  DYJViewController.m
//  YouJoin
//
//  Created by Lawrence on 2018/6/3.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import "DYJViewController.h"
#import <SVProgressHUD.h>

@interface DYJViewController ()

@end

@implementation DYJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor: [UIColor whiteColor]];
}

- (void)showLoading {
    [self showLoadingWithText:@"Loading..."];
}

- (void)showLoadingWithText:(NSString *)text {
    [SVProgressHUD showWithStatus:text];
}

- (void)successHud {
    [self successHudWithText:@"success!"];
}

- (void)successHudWithText:(NSString *)text {
    [SVProgressHUD showSuccessWithStatus:text];
}

- (void)failureHud {
    [self failureHudWithText:@"failure!"];
}

- (void)failureHudWithText:(NSString *)text {
    [SVProgressHUD showErrorWithStatus:text];
}

@end
