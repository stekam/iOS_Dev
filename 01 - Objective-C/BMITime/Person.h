//
//  Person.h
//  BMITime
//
//  Created by Stephan Kaminski on 01/11/12.
//  Copyright (c) 2012 SK. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Asset;

@interface Person : NSObject
{
    float heightInMeter;
    int weightInKilo ;
    NSMutableArray *assets;
}
@property float heightInMeter;
@property int weighInKilo;

- (void) setWeightInKilo:(int)h;
- (void) setHeight:(float)h;

-(void)addAssetsObjects:(Asset *)newAss;
-(unsigned int)valueOfAssets;


- (int) weightInKilo;
- (float) heightInMeter;
- (float) BMI;


@end
