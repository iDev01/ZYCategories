//
//  UINavigationBar+Alpha.m
//  ABPAssistant
//
//  Created by Ma Hao on 18/03/2018.
//  Copyright © 2018 zeroyear. All rights reserved.
//

#import "UINavigationBar+Alpha.h"

@implementation UINavigationBar (Alpha)

- (void)setNeedsNavigationBackground:(CGFloat)alpha {
    [self setBackgroundImage:[self imageWithColor:[UIColor colorWithWhite:1 alpha:alpha]] forBarMetrics:UIBarMetricsDefault];
}

- (void)setNeedsNavigationTitleColor:(UIColor *)color {
    self.titleTextAttributes = @{NSForegroundColorAttributeName : color};
}
- (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0, 0, 1, 1);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [color setFill];
    CGContextFillRect(context, rect);
    UIImage *imgae = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return imgae;
}

@end
