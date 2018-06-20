//
//  DYJViewController.h
//  YouJoin
//
//  Created by Lawrence on 2018/6/3.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DYJViewController : UIViewController

- (void)showLoading;
- (void)showLoadingWithText:(NSString *)text;

- (void)successHud;
- (void)successHudWithText:(NSString *)text;
- (void)failureHud;
- (void)failureHudWithText:(NSString *)text;
@end
