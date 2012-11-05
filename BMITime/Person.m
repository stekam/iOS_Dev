//
//  Person.m
//  BMITime
//
//  Created by Stephan Kaminski on 01/11/12.
//  Copyright (c) 2012 SK. All rights reserved.
//

#import "Person.h"
#import "Asset.h"



@implementation Person


@synthesize heightInMeter;
@synthesize weighInKilo;

-(void) setHeight:(float)h{
    heightInMeter = h;
}

-(void) setWeightInKilo:(int)h{
    weightInKilo = h;
}



-(void)addAssetsObjects:(Asset *)newAss{
    [ assets addObject:newAss];
}

-(unsigned int)valueOfAssets{
    unsigned int value;
    
    for( Asset *ass in assets){
        value += ass.resaleValue;
    }
    return value;
}

- (int) weightInKilo{
    return weightInKilo;
}


-(float) BMI{
    return weightInKilo / ( heightInMeter * heightInMeter);
}


- (float) heightInMeter{
    return heightInMeter;
}

@end
