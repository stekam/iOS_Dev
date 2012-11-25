//
//  OwnedAppliance.h
//  Constructor
//
//  Created by Stephan on 18/11/12.
//  Copyright (c) 2012 Stephan. All rights reserved.
//

#import "Appliance.h"

@interface OwnedAppliance : Appliance{
    NSMutableArray *ownerNames;
}

-(id)initWithProductName:(NSString *)pn
          firstOwnerName:(NSString *)n;

-(void)addOwnerNamesObject:(NSString *)n;

-(void)removeOwnerNamesObject:(NSString *)n;

@end
