//
//  Person.h
//  BMITime
//
//  Created by Stephan Kaminski on 01/11/12.
//  Copyright (c) 2012 SK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    float heightInMeter;
    int weightInKilo ;
}

- (void) setWeightInKilo:(int)h;
- (void) setHeight:(float)h;

- (int) weightInKilo;
- (float) heightInMeter;
- (float) BMI;


@end
