//
//  WHDUserOperation.h
//  iOS LMS
//
//  Created by Hayden on 2017/3/31.
//  Copyright © 2017年 unimelb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WHDUserInfo.h"

/***********************************************************************
 2、用户操作管理类：
   类型描述：实现注册、登录两项功能
   要求：
     (1) 显示注册成功后方可登录
     (2) 登录成功的条件必须是登录时的用户名、密码和注册时的用户名密码保持一致
     (3) 是否登录，通过序号1（登录）、2（不登录）表示
     (4) 通过scanf获取控制台输入的内容。（关于scanf的使用，详情可见最下方的提示）
***********************************************************************/

@interface WHDUserOperation : NSObject

@property (nonatomic, copy) NSMutableArray *users;

- (BOOL)signupNewUser:(WHDUserInfo *)user onDatabase:(NSMutableArray *)users;
- (BOOL)loginUser:(WHDUserInfo *)user fromDatabase:(NSMutableArray *)users;

@end
