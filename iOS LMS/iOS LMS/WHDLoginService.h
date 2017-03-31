//
//  WHDLoginService.h
//  iOS LMS
//
//  Created by Hayden on 2017/3/31.
//  Copyright © 2017年 unimelb. All rights reserved.
//

#import <Foundation/Foundation.h>

/********************************************************************************
 3、登录服务类：
   类型描述：声明用户登录时的用户名、密码属性，以及实现选择是否登录对应的具体操作
   要求：
     (1) 用户名、密码都使用字符串类型
     (2) 设定方法通过获取输入的序号来实现对应序号的功能。其中 
       1 是登录相关操作，
       2 是不登录相关操作，其他序号是输入指令错误。
********************************************************************************/

@interface WHDLoginService : NSObject

- (void)loginOperation;

@end
