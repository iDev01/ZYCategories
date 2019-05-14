//
//  UITextField+LeftImage.h
//  Category
//
//  Created by Ma Hao on 10/01/2018.
//  Copyright © 2018 zeroyear. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (LeftImage)

- (void)addImageWithImageName:(NSString *)imageName width:(NSInteger)width contentModeOfImageView:(UIViewContentMode)contentModeOfImageView leftViewMode:(UITextFieldViewMode)textFieldViewMode;

@end
