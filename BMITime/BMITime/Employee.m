//
//  Employee.m
//  BMITime
//
//  Created by Stephan Kaminski on 01/11/12.
//  Copyright (c) 2012 SK. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize employeeID;

- (float) BMI{
    return super.BMI / 2;
}

@end
