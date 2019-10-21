//
//  UIView+Shadow.h
//  Category
//
//  Created by Ma Hao on 2019/10/21.
//  Copyright © 2019 idev01. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Shadow)

@property (nonatomic, assign) IBInspectable CGSize shadowOffset;
@property (nonatomic, assign) IBInspectable CGFloat shadowRadius;
@property (nonatomic, assign) IBInspectable CGFloat shadowOpacity;
@property (nonatomic, strong) IBInspectable UIColor *shadowColor;


@end

NS_ASSUME_NONNULL_END
