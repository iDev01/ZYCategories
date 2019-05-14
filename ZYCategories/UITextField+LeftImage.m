//
//  UITextField+LeftImage.m
//  Category
//
//  Created by Ma Hao on 10/01/2018.
//  Copyright © 2018 zeroyear. All rights reserved.
//

#import "UITextField+LeftImage.h"

@implementation UITextField (LeftImage)

- (void)addImageWithImageName:(NSString *)imageName width:(NSInteger)width contentModeOfImageView:(UIViewContentMode)contentModeOfImageView leftViewMode:(UITextFieldViewMode)textFieldViewMode {
    self.leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
    CGRect frame = self.leftView.frame;
    frame.size.width = 40;
    self.leftView.frame = frame;
    ((UIImageView *)self.leftView).contentMode = contentModeOfImageView;
    self.leftViewMode = textFieldViewMode;
}

@end
