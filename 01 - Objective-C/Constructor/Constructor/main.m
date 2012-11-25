//
//  main.m
//  Constructor
//
//  Created by Stephan on 18/11/12.
//  Copyright (c) 2012 Stephan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Appliance *a = [ [ Appliance alloc ] init ];
        NSLog(@"%@", a);
        [ a setProductName:@"WashMa"];
        [ a setVoltage:33];
        NSLog(@"%@", a);
    }
    return 0;
}

