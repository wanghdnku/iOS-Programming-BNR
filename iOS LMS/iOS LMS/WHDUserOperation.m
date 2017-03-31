//
//  WHDUserOperation.m
//  iOS LMS
//
//  Created by Hayden on 2017/3/31.
//  Copyright © 2017年 unimelb. All rights reserved.
//

#import "WHDUserOperation.h"

@implementation WHDUserOperation

// 注册用户
- (BOOL)signupNewUser:(WHDUserInfo *)user onDatabase:(NSMutableArray *)users {
    // 检查用户是否已存在
    for (WHDUserInfo *u in users) {
        if (u.username == user.username) {
            NSLog(@"该用户已存在");
            return NO;
        }
    }
    NSLog(@"创建用户成功");
    [users addObject:user];
    return YES;
}

// 登录用户
- (BOOL)loginUser:(WHDUserInfo *)user fromDatabase:(NSMutableArray *)users {
    BOOL userExist = NO;
    BOOL correctPwd = NO;
    for (WHDUserInfo *u in users) {
        if (u.username == user.username) {
            userExist = YES;
            if (u.password == user.password) {
                correctPwd = YES;
            }
        }
        
    }
    if (!userExist) {
        NSLog(@"用户不存在");
        return NO;
    } else {
        if (!correctPwd) {
            NSLog(@"密码不正确");
            return NO;
        }
    }
    NSLog(@"登录成功");
    return YES;
}


@end
