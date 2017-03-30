//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Hayden on 2017/3/30.
//  Copyright © 2017年 unimelb. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Hypnotize";
        self.tabBarItem.image = [UIImage imageNamed:@"Hypno.png"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"BNRHypnosisViewCOntroller loaded its view.");
}

- (void)loadView {
    // 创建一个BNRHypnosisView对象并赋给BNRHypnosisViewController的view属性
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] init];
    
    self.view = backgroundView;
    
    
}

@end
