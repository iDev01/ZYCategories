//
//  UIBarButtonItem+Extension.h
//  Category
//
//  Created by apple on 14-10-7.
//  Copyright (c) 2018年 zeroyear. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

/** 文字item */
+ (UIBarButtonItem *)itemWithTarget:(id)target
                             action:(SEL)action
                              title:(NSString *)title;
/** 图片item */
+ (UIBarButtonItem *)itemWithTarget:(id)target
                             action:(SEL)action
                              image:(NSString *)image;
@end
