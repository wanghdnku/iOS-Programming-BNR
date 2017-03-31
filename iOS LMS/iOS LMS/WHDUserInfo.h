//
//  WHDUserInfo.h
//  iOS LMS
//
//  Created by Hayden on 2017/3/31.
//  Copyright © 2017年 unimelb. All rights reserved.
//

#import <Foundation/Foundation.h>

/**************************************
 1、用户信息类：
   类型描述：声明用户注册时的用户名、密码属性
   要求：用户名、密码都使用字符串类型
**************************************/


@interface WHDUserInfo : NSObject

@property (nonatomic, copy) NSString *username;
@property (nonatomic, copy) NSString *password;

- (instancetype)initWithName: (NSString *)name passWord:(NSString *)password;

@end
