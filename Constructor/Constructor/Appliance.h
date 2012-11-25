//
//  Appliance.h
//  Constructor
//
//  Created by Stephan on 18/11/12.
//  Copyright (c) 2012 Stephan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject

@property (copy) NSString *productName;
@property int *voltage;

-(id)initWithProductName:( NSString *)name;

@end
