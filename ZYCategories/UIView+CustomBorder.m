//
//  UIView+CustomBorder.m
//  Demo
//
//  Created by Ma Hao on 2019/10/25.
//  Copyright © 2019 idev01. All rights reserved.
//

#import "UIView+CustomBorder.h"

@implementation UIView (CustomBorder)

- (void)topBorderWithBorderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor {
    CGRect rect = CGRectMake(0, 0, self.frame.size.width, borderWidth);
    [self drawBorderWithRect:rect color:borderColor];
}

- (void)leftBorderWithBorderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor {
    CGRect rect = CGRectMake(0, 0, borderWidth, self.frame.size.height);
    [self drawBorderWithRect:rect color:borderColor];
}

- (void)rightBorderWithBorderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor {
    CGRect rect = CGRectMake(self.frame.size.width, self.frame.size.width - borderWidth, borderWidth, self.frame.size.height);
    [self drawBorderWithRect:rect color:borderColor];
}

- (void)bottomBorderWithBorderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor {
    CGRect rect = CGRectMake(0, self.frame.size.height - borderWidth, self.frame.size.width, borderWidth);
    [self drawBorderWithRect:rect color:borderColor];
}

- (void)drawBorderWithRect:(CGRect)rect color:(UIColor *)color {
    UIBezierPath *lineBezierPath = [UIBezierPath bezierPathWithRect:rect];
    CAShapeLayer *lineShapeLayer = [CAShapeLayer layer];
    lineShapeLayer.path = lineBezierPath.CGPath;
    lineShapeLayer.fillColor = color.CGColor;
    [self.layer addSublayer:lineShapeLayer];
}


@end
