//
//  BNRImageStore.h
//  Homepwner
//
//  Created by Hayden on 2017/4/3.
//  Copyright © 2017年 unimelb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BNRImageStore : NSObject

+ (instancetype)sharedStore;

- (void)setImage:(UIImage *)image forKey:(NSString *)key;
- (UIImage *)imageForKey:(NSString *)key;
- (void)deleteImageForKey:(NSString *)key;

- (NSDictionary *)getAll;

@end
