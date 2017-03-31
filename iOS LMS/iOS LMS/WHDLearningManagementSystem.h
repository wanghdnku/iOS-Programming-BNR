//
//  WHDLearningManagementSystem.h
//  iOS LMS
//
//  Created by Hayden on 2017/3/31.
//  Copyright © 2017年 unimelb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WHDUserInfo.h"
#import "WHDUserOperation.h"
#import "WHDLoginService.h"
#import "WHDLearningService.h"

@interface WHDLearningManagementSystem : NSObject

@property (nonatomic, copy) NSMutableArray *users;
@property (nonatomic, copy) NSMutableArray *videos;
@property (nonatomic, copy) WHDLoginService *loginService;
@property (nonatomic, copy) WHDLearningService *learningService;

- (void)startLearningManagementSystem;

@end
