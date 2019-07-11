//
//  UIDevice+iPad.m
//  Demo
//
//  Created by Ma Hao on 2019/7/11.
//  Copyright © 2019 idev01. All rights reserved.
//

#import "UIDevice+iPad.h"

@implementation UIDevice (iPad)

- (BOOL)isiPad {
    return [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad;
}

@end
