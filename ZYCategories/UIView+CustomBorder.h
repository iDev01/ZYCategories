//
//  UIView+CustomBorder.h
//  Demo
//
//  Created by Ma Hao on 2019/10/25.
//  Copyright © 2019 idev01. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (CustomBorder)

- (void)topBorderWithBorderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;
- (void)leftBorderWithBorderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;
- (void)rightBorderWithBorderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;
- (void)bottomBorderWithBorderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;


@end

NS_ASSUME_NONNULL_END
