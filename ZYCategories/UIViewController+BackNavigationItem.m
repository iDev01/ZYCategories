//
//  UIViewController+BackNavigationItem.m
//  Category
//
//  Created by Ma Hao on 14/01/2018.
//  Copyright © 2018 zeroyear. All rights reserved.
//

#import "UIViewController+BackNavigationItem.h"

@implementation UIViewController (BackNavigationItem)

- (void)customizeBackButtonWithImageName:(NSString *)imageName {
    if (self.navigationController) {
        // 自定义左键，贴图，并重写返回方法
        
        if (self.navigationController.childViewControllers[0] == self) {
            return;
        }
        UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
        backButton.frame = CGRectMake(0, 0, 30, 30);
        [backButton setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        [backButton addTarget:self action:@selector(backButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *backBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:backButton];
        UIBarButtonItem *spaceItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
        spaceItem.width = - 10;
        self.navigationItem.leftBarButtonItems = @[backBarButtonItem, spaceItem];
        
    }
}

- (void)backButtonClicked:(UIButton *)button {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
