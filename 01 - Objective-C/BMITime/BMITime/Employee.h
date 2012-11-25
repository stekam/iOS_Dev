//
//  Employee.h
//  BMITime
//
//  Created by Stephan Kaminski on 01/11/12.
//  Copyright (c) 2012 SK. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

@interface Employee : Person
{
    int employeeID;
}

@property int employeeID;

@end
