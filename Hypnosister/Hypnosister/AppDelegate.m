//
//  AppDelegate.m
//  Hypnosister
//
//  Created by Hayden on 2017/3/28.
//  Copyright © 2017年 unimelb. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate () <UIScrollViewDelegate>

@property (nonatomic, strong) BNRHypnosisView *hypnosisView;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    UIViewController *vc = [[UIViewController alloc] init];
    [self.window setRootViewController:vc];
    
    
    /*
    CGRect firstFrame = self.window.bounds;
    BNRHypnosisView *firstView = [[BNRHypnosisView alloc] initWithFrame:firstFrame];
    [self.window.rootViewController.view addSubview:firstView];
    */
    
    CGRect screenRect = self.window.bounds;
    CGRect bigRect = screenRect;
    //bigRect.size.width *= 2.0;
    //bigRect.size.height *= 2.0;
    
    // 创建一个UIScrollView
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    scrollView.delegate = self;
    // 镜头与子视图边缘对齐
    scrollView.pagingEnabled = NO;
    [self.window.rootViewController.view addSubview:scrollView];
    // 创建一个大尺寸BNRHypnosisView对象并加入UIScrollView
    _hypnosisView = [[BNRHypnosisView alloc] initWithFrame:screenRect];
    [scrollView addSubview:_hypnosisView];
    // 创建第二个BNRHypnosisView
    //screenRect.origin.x += screenRect.size.width;
    //BNRHypnosisView *anotherView = [[BNRHypnosisView alloc] initWithFrame:screenRect];
    //[scrollView addSubview:anotherView];
    scrollView.contentSize = bigRect.size;
    scrollView.maximumZoomScale = 2.0;
    scrollView.minimumZoomScale = 1.0;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return _hypnosisView;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
