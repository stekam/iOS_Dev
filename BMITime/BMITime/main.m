//
//  main.m
//  BMITime
//
//  Created by Stephan Kaminski on 01/11/12.
//  Copyright (c) 2012 SK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Person *pers = [ [ Person alloc ] init ];
        
        [ pers setWeightInKilo:80];
        [ pers setHeight:1.87];
        

        
        NSLog(@"Weight %d and Height %f gives BMI is %f",  pers.weightInKilo , pers.heightInMeter, pers.BMI  );
        
       
    }
    return 0;
}

