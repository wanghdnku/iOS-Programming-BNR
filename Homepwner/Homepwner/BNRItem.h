//
//  BNRItem.h
//  RandomItems
//
//  Created by Hayden on 2017/3/27.
//  Copyright © 2017年 unimelb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

// 属性

@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic, unsafe_unretained) int valueInDollars;
@property (nonatomic, readonly) NSDate *dateCreated;
@property (nonatomic, copy) NSString *itemKey;

// 类方法

+ (instancetype)randomItem;

// 初始化方法

- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber;
- (instancetype)initWithItemName:(NSString *)name serialNumber:(NSString *)sNumber;
- (instancetype)initWithItemName:(NSString *)name;

// 实例方法


@end
