//
//  LoginPresenter.h
//  YouJoin
//
//  Created by Lawrence on 2018/6/21.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginInterface.h"

@interface LoginPresenter : NSObject

@property(nonatomic,weak) id<LoginInterface> interface;

- (void)didClickLoginBtnWithUsername:(NSString *)username password:(NSString *)password;

@end
