//
//  UIView+Border.h
//  Category
//
//  Created by Ma Hao on 12/01/2018.
//  Copyright © 2018 zeroyear. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface UIView (Border)

@property (nonatomic, strong) IBInspectable UIColor *borderColor;
@property (nonatomic, assign) IBInspectable CGFloat boarderWidth;
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;

@end
