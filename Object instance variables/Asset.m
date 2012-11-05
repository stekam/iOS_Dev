//
//  Asset.m
//  Object instance variables
//
//  Created by Stephan Kaminski on 04/11/12.
//  Copyright (c) 2012 SK. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize label;
@synthesize resaleValue;


-(NSString *)description{
    return [ NSString stringWithFormat:@"%@ : $%d", self.label, self.resaleValue];
}

-(void)dealloc{
    NSLog(@"deallocating %@" , self);
}


@end
