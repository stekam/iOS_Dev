//
//  main.m
//  14_NSString
//
//  Created by Stephan Kaminski on 01/11/12.
//  Copyright (c) 2012 SK. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        NSHost *hst = [ NSHost currentHost];
        
        NSString *stg = [ hst localizedName];
        
        NSLog(@"Localized Name %@ ", stg);
        
        
    }
    return 0;
}

