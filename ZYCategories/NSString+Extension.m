//
//  NSString+Extension.m
//  Category
//
//  Created by Ma Hao on 13/03/2018.
//  Copyright © 2018 zeroyear. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

- (NSString *)trim {
    return [self stringByReplacingOccurrencesOfString:@" " withString:@""];
}

@end
