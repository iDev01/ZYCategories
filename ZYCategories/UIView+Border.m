//
//  UIView+Border.m
//  Category
//
//  Created by Ma Hao on 12/01/2018.
//  Copyright © 2018 zeroyear. All rights reserved.
//

#import "UIView+Border.h"
IB_DESIGNABLE
@implementation UIView (Border)

- (UIColor *)borderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)boarderWidth {
    return self.layer.borderWidth;
}

- (void)setBoarderWidth:(CGFloat)boarderWidth {
    self.layer.borderWidth = boarderWidth;
}

- (CGFloat)cornerRadius {
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    self.layer.cornerRadius = cornerRadius;
}

@end
