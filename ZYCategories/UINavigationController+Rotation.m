//
//  UINavigationController+Rotation.m
//  Category
//
//  Created by Ma Hao on 2018/4/27.
//  Copyright © 2018 Ma Hao. All rights reserved.
//

#import "UINavigationController+Rotation.h"

@implementation UINavigationController (Rotation)

-(BOOL)shouldAutorotate {
    return [self.topViewController shouldAutorotate];
}

-(NSUInteger)supportedInterfaceOrientations {
    return [self.topViewController supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return [self.topViewController preferredInterfaceOrientationForPresentation];
}

@end
