//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by Hayden on 2017/3/28.
//  Copyright © 2017年 unimelb. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    float maxRadius = hypot(bounds.size.width, bounds.size.width);
    
    UIBezierPath *path = [[UIBezierPath alloc] init];

    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        [path addArcWithCenter:center radius:currentRadius startAngle:0.0 endAngle:2.0*M_PI clockwise:YES];
    }
    
    path.lineWidth = 10;
    [[UIColor lightGrayColor] setStroke];
    [path stroke];
    
    
    // 画一个三角形
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(currentContext);
    UIBezierPath *pathTriangle = [[UIBezierPath alloc] init];
    [pathTriangle moveToPoint:CGPointMake(center.x, 90)];
    [pathTriangle addLineToPoint:CGPointMake(center.x - 90, 380)];
    [pathTriangle addLineToPoint:CGPointMake(center.x + 90, 380)];
    //[pathTriangle addLineToPoint:CGPointMake(center.x, 80)];
    
    
    //[pathTriangle addArcWithCenter:center radius:maxRadius / 4.0 startAngle:0.0 endAngle:2.0*M_PI clockwise:YES];
    // 设置剪切路径
    [pathTriangle addClip];
    CGFloat locations[2] = {0.0, 1.0};
    CGFloat components[8] = {1.0, 0.0, 0.0, 1.0,
                             1.0, 1.0, 0.0, 1.0};
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, components, locations, 2);
    CGPoint startPoint = CGPointMake(0.0, 100.0);
    CGPoint endPoint = CGPointMake(0.0, 300.0);
    CGContextDrawLinearGradient(currentContext, gradient, startPoint, endPoint, kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    CGGradientRelease(gradient);
    CGColorSpaceRelease(colorSpace);
    CGContextRestoreGState(currentContext);
    
    
    
    // 初级练习：绘制图像
    UIImage *logoImage = [UIImage imageNamed:@"logo"];
    float logo_width = self.bounds.size.width / 2.0;
    float logo_height = self.bounds.size.width / 2.0 * logoImage.size.height / logoImage.size.width;
    float logo_x = center.x - logo_width / 2.0;
    float logo_y = center.y - logo_height / 2.0;
    CGRect logoRect = CGRectMake(logo_x, logo_y, logo_width, logo_height);
    
    // 为图像增加阴影效果
    currentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(currentContext);
    CGContextSetShadow(currentContext, CGSizeMake(4, 7), 3);
    //CGContextRestoreGState(currentContext);
    
    [logoImage drawInRect:logoRect];
    
    // 高级练习：阴影和渐变
    
}

@end
