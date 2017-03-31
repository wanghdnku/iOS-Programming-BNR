//
//  WHDLearningService.h
//  iOS LMS
//
//  Created by Hayden on 2017/3/31.
//  Copyright © 2017年 unimelb. All rights reserved.
//

#import <Foundation/Foundation.h>

/********************************************************************************
 4、学习服务类：
   类型描述：实现具体的学习功能
   要求：
     设定方法通过获取输入的序号来实现对应序号的功能。其中
       1 是观看iOS学习视频，
       2 是下载iOS学习视频，
       3 是直接退出学习系统，其他序号是输入指令错误。在观看iOS学习视频中再实现查询、增加、删除
         iOS学习视频的功能。
********************************************************************************/

@interface WHDLearningService : NSObject

@property (nonatomic, copy) NSMutableArray *videos;

- (void)watchVideo;

- (void)downloadVideo;

- (void)quitLMS;

@end
