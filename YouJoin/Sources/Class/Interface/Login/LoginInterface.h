//
//  LoginInterface.h
//  YouJoin
//
//  Created by Lawrence on 2018/6/21.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LoginInterface <NSObject>

- (void)showLoading;
- (void)showSuccess:(NSString *)text;
- (void)showFailure:(NSString *)text;

@end
