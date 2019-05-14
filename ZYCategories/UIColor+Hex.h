//
//  UIColor+Hex.h
//  Category
//
//  Created by Ma Hao on 16/01/2018.
//  Copyright © 2018 zeroyear. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

+ (UIColor *)colorWithHex:(NSString *)hex;
+ (UIColor *)colorWithHex:(NSString *)hex alpha:(CGFloat)alpha;

@end
