//
//  NSDate+Week.m
//  Category
//
//  Created by zeroyear on 2017/5/3.
//  Copyright © 2017年 zeroyear. All rights reserved.
//

#import "NSDate+Week.h"

@implementation NSDate (Week)

/** return 1~7 */
- (NSInteger)week {
    
    NSArray<NSString *> *weekdays = [NSArray arrayWithObjects: [NSNull null], @"7", @"1", @"2", @"3", @"4", @"5", @"6", nil];
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    NSTimeZone *timeZone = [[NSTimeZone alloc] initWithName:@"Asia/Shanghai"];
    
    [calendar setTimeZone: timeZone];
    
    NSCalendarUnit calendarUnit = NSCalendarUnitWeekday;
    
    NSDateComponents *theComponents = [calendar components:calendarUnit fromDate:self];
    
    return weekdays[theComponents.weekday].integerValue;
}

/** return 一~日 */
- (NSString *)week_cn {

    NSArray<NSString *> *weekdays = [NSArray arrayWithObjects: [NSNull null], @"日", @"一", @"二", @"三", @"四", @"五", @"六", nil];

    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];

    NSTimeZone *timeZone = [[NSTimeZone alloc] initWithName:@"Asia/Shanghai"];

    [calendar setTimeZone: timeZone];

    NSCalendarUnit calendarUnit = NSCalendarUnitWeekday;

    NSDateComponents *theComponents = [calendar components:calendarUnit fromDate:self];

    return weekdays[theComponents.weekday];
}

@end
