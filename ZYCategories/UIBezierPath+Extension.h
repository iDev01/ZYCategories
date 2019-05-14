//
//  UIBezierPath+zeroyear.h
//  Category
//
//  Created by Ma Hao on 2017/5/3.
//  Copyright © 2017年 zeroyear. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBezierPath (Extension)

/** 填充渐变色 */
- (void)drawLinearGradientWithStartColor:(UIColor *)startColor endColor:(UIColor *)endColor;

/** 画虚线 */
+ (void)drawDashLineWithStartPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint lineColor:(UIColor *)lineColor;

/** 画实线 */
+ (void)drawLineWithStartPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint lineWidth:(CGFloat)lineWidth lineColor:(UIColor *)lineColor;

///** 画点线 */
//+ (void)drawPointLineWithStartPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint;

@end
