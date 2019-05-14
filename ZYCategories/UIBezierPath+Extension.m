//
//  UIBezierPath+zeroyear.m
//  Category
//
//  Created by zeroyear on 2017/5/3.
//  Copyright © 2017年 zeroyear. All rights reserved.
//

#import "UIBezierPath+Extension.h"

@implementation UIBezierPath (Extension)

/** 填充渐变色 */
- (void)drawLinearGradientWithStartColor:(UIColor *)startColor endColor:(UIColor *)endColor {
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    NSArray *colors = @[(__bridge id) startColor.CGColor, (__bridge id) endColor.CGColor];
    CGFloat locations[] = { 0.0, 1.0 };
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef) colors, locations);
    
    //开始点&结束点
    CGRect pathRect = CGPathGetBoundingBox(self.CGPath);
    CGPoint startPoint = CGPointMake(CGRectGetMinX(pathRect), CGRectGetMinY(pathRect));
    CGPoint endPoint = CGPointMake(CGRectGetMinX(pathRect), CGRectGetMaxY(pathRect));
    
    CGContextSaveGState(ctx);
    CGContextAddPath(ctx, self.CGPath);
    CGContextClip(ctx);
    CGContextDrawLinearGradient(ctx, gradient, startPoint, endPoint, 0);
    CGContextRestoreGState(ctx);
    
    CGGradientRelease(gradient);
    CGColorSpaceRelease(colorSpace);
}

/** 画虚线 */
+ (void)drawDashLineWithStartPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint lineColor:(UIColor *)lineColor {
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:startPoint];
    [path addLineToPoint:endPoint];
    
    CGFloat dash[] = {4, 4};
    [path setLineDash:dash count:2 phase:0];
    [lineColor setStroke];
//    [[UIColor colorWithHex:@"0x757994"] setStroke];
    [path setLineWidth:1];
    [path stroke];
}

/** 画实线 */
+ (void)drawLineWithStartPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint lineWidth:(CGFloat)lineWidth lineColor:(UIColor *)lineColor {
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:startPoint];
    [path addLineToPoint:endPoint];
    [lineColor setStroke];
//    [[UIColor colorWithHex:@"0x323446"] setStroke];
    [path setLineWidth:lineWidth];
    [path stroke];
}

///** 画点线 */
//+ (void)drawPointLineWithStartPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint {
//    
//    UIBezierPath *path = [UIBezierPath bezierPath];
//    [path moveToPoint:startPoint];
//    [path addLineToPoint:endPoint];
//    
//    CGFloat singleW = 22.333333;
//    CGFloat pointW = 1;
//    CGFloat nullW = (singleW - pointW * 4) / 5;
//    
//    CGFloat dash[] = {pointW, nullW};
//    [path setLineDash:dash count:2 phase:0];
//    
//    [HEX_COLOR(0x323446) setStroke];
//    [path setLineWidth:1];
//    [path stroke];
//}

@end
