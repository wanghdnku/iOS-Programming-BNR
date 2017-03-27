//
//  main.m
//  RandomItems
//
//  Created by Hayden on 2017/3/27.
//  Copyright © 2017年 unimelb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        /*
        for (int i = 0; i < 10; i++) {
            // 使用了快捷方法，并非自己持有。（快捷方法创建对象会被放到autoreleasepool?）
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        */
         
        BNRItem *backpack = [[BNRItem alloc] initWithItemName:@"Backpack"];
        [items addObject:backpack];
        BNRItem *calculator = [[BNRItem alloc] initWithItemName:@"Calculator"];
        [items addObject:calculator];
        
        backpack.containedItem = calculator;
        
        backpack = nil;
        calculator = nil;
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        NSLog(@"Setting items to nil");
        // 因为使用了快捷方法，所以在此释放也没用
        items = nil;
        //sleep(10);
        NSLog(@"All items has been desdroyed");
        sleep(10);
        
    }
    return 0;
}
