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
    if ( assets == nil ){
        assets = [ [ NSMutableArray alloc ] init ];
        }
    [ assets addObject:newAss];
    [ newAss setHolder:self];
}

-(unsigned int)valueOfAssets{
    unsigned int sum = 0;
    if ( assets != nil ){
        for( Asset *ass in assets){
            sum += ass.resaleValue;
        }
    }
    
    return sum;

}

- (int) weightInKilo{
    return weightInKilo;
}


-(float) BMI{
    return weightInKilo / ( heightInMeter * heightInMeter);
}



-(NSString *)description{

    return [ NSString stringWithFormat:@"%s : $%d", "Test" , [ self valueOfAssets]  ];
}


@end
