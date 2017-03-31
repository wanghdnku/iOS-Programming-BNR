//
//  WHDUserInfo.m
//  iOS LMS
//
//  Created by Hayden on 2017/3/31.
//  Copyright © 2017年 unimelb. All rights reserved.
//

#import "WHDUserInfo.h"

@implementation WHDUserInfo

- (instancetype)initWithName: (NSString *)name passWord:(NSString *)pwd {
    self = [super init];
    if (self) {
        self.username = name;
        self.password = pwd;
    }
    return self;
}

@end
