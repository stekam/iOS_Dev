//
//  Appliance.m
//  Constructor
//
//  Created by Stephan on 18/11/12.
//  Copyright (c) 2012 Stephan. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance

@synthesize productName;
@synthesize voltage;

-(id)init{
    return [ self initWithProductName:@"Unknown"];
//    self = [ super init];
//    
//    if (self){
//        [ self setVoltage:120];
//        //voltage = 120 ;
//    }
//    return self;
}

-(id)initWithProductName:(NSString *)name{
    self = [ super init];
    
    if (self){
        [ self setVoltage:120];
        [ self setProductName:name];
    }
    return self;
    
}

-(NSString *)description{
    return [ NSString stringWithFormat:@"<%@ : %d>", productName, voltage];
}


@end
