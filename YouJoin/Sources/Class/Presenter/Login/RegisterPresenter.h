//
//  RegisterPresenter.h
//  YouJoin
//
//  Created by Lawrence on 2018/6/27.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RegisterInterface.h"

@interface RegisterPresenter : NSObject

@property(nonatomic,weak) id<RegisterInterface> interface;

- (void)didClickSignBtnWithUsername:(NSString *)username password:(NSString *)password email:(NSString *)email;
@end
