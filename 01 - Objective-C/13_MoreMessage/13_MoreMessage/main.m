//
//  main.m
//  13_MoreMessage
//
//  Created by Stephan Kaminski on 01/11/12.
//  Copyright (c) 2012 SK. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *l_Now = [ [ NSDate alloc ] init];

        NSDate *l_HourLater = [ l_Now dateByAddingTimeInterval:3600];
        
        NSLog(@" Now contains %@ - in an hour it is %@ !", l_Now,  l_HourLater );
        
        NSCalendar *l_Cal = [ NSCalendar currentCalendar ];
        
        NSUInteger l_Day = [ l_Cal ordinalityOfUnit:NSWeekCalendarUnit
                                             inUnit:NSYearCalendarUnit
                                            forDate:l_Now ];
        NSLog(@" Today is the  in week %lu of the Year !", l_Day );
        
        NSTimeZone *tz = [ NSTimeZone systemTimeZone ];
    
        NSLog(@" Timezone %@ - Daylight Saving Time %c ? ", tz , [ tz isDaylightSavingTime ] );
    
        
        NSLog(@" Timezone %@ - Next Daylight Saving Date is %@ ? ", tz , [ tz nextDaylightSavingTimeTransition ] );
        

        
    }
    return 0;
}

