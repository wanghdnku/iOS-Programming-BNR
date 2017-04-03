//
//  BNRImageStore.m
//  Homepwner
//
//  Created by Hayden on 2017/4/3.
//  Copyright © 2017年 unimelb. All rights reserved.
//

#import "BNRImageStore.h"

#pragma mark 类扩展
@interface BNRImageStore ()

@property (nonatomic, strong) NSMutableDictionary *dictionary;

@end

#pragma mark 类实现
@implementation BNRImageStore

// 类方法
+ (instancetype)sharedStore {
    static BNRImageStore *sharedStore = nil;
    if (!sharedStore) {
        sharedStore = [[BNRImageStore alloc] initPrivate];
    }
    return sharedStore;
}

// 初始化方法
- (instancetype)init {
    @throw [NSException exceptionWithName:@"Singleton" reason:@"Use +[BNRItemStore sharedStore]" userInfo:nil];
    return nil;
}

- (instancetype)initPrivate {
    self = [super init];
    if (self) {
        _dictionary = [[NSMutableDictionary alloc] init];
    }
    return self;
}

// 实例方法
- (void)setImage:(UIImage *)image forKey:(NSString *)key {
    [self.dictionary setObject:image forKey:key];
    //self.dictionary[key] = image;
}

- (UIImage *)imageForKey:(NSString *)key {
    return [self.dictionary objectForKey:key];
    //return self.dictionary[key];
}

- (void)deleteImageForKey:(NSString *)key {
    if (!key) {
        return;
    }
    return [self.dictionary removeObjectForKey:key];
}

- (NSDictionary *)getAll {
    return self.dictionary;
}


@end
