//
//  main.m
//  BMITime
//
//  Created by Stephan Kaminski on 01/11/12.
//  Copyright (c) 2012 SK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Person *pers = [ [ Person alloc ] init ];
        
        [ pers setWeightInKilo:80];
        [ pers setHeight:1.87];
        
        NSLog(@"Prsn Inst in Prsn - Weight %d and Height %f gives BMI is %f",  pers.weightInKilo , pers.heightInMeter, pers.BMI  );
        

        
        pers = [ [ Employee alloc ] init ];
        
        [ pers setWeightInKilo:80];
        [ pers setHeight:1.87];
        
        NSLog(@"Empl Inst in Prsn - Weight %d and Height %f gives BMI is %f",  pers.weightInKilo , pers.heightInMeter, pers.BMI  );
        
        NSMutableArray *emplTab = [ [ NSMutableArray alloc] init ];
        
        for( int i; i != 5 ; i++ ){
        
            Employee *empl = [ [ Employee alloc ] init ];
            empl.employeeID = i;
            [ empl setWeightInKilo:80];
            [ empl setHeight:1.87];
            [ emplTab addObject:empl];
        }
        
        
        for( Employee *empl in emplTab){
                   NSLog(@"Empl Inst in Empl - Weight %d and Height %f gives BMI is %f - EmplID %d ",  empl.weightInKilo , empl.heightInMeter, empl.BMI, [ empl employeeID ]  );
        }
        

        
        
       
    }
    return 0;
}

