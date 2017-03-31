//
//  WHDLearningManagementSystem.m
//  iOS LMS
//
//  Created by Hayden on 2017/3/31.
//  Copyright © 2017年 unimelb. All rights reserved.
//

#import "WHDLearningManagementSystem.h"

@implementation WHDLearningManagementSystem

- (instancetype)init {
    self = [super init];
    if (self) {
        _users = [[NSMutableArray alloc] init];
        _videos = [[NSMutableArray alloc] init];
        _loginService = [[WHDLoginService alloc] init];
        _learningService = [[WHDLearningService alloc] init];
    }
    return self;
}

- (void)startLearningManagementSystem {
    while (TRUE) {
        break;
    }
}

@end
