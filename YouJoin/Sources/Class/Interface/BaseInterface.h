//
//  BaseInterface.h
//  YouJoin
//
//  Created by Lawrence on 2018/6/27.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BaseInterface <NSObject>

- (void)showLoading;
- (void)showSuccess:(NSString *)text;
- (void)showFailure:(NSString *)text;

@end
