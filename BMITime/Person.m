//
//  Person.m
//  BMITime
//
//  Created by Stephan Kaminski on 01/11/12.
//  Copyright (c) 2012 SK. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void) setHeight:(float)h{
    heightInMeter = h;
}

-(void) setWeightInKilo:(int)h{
    weightInKilo = h;
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
