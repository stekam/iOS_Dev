//
//  OwnedAppliance.m
//  Constructor
//
//  Created by Stephan on 18/11/12.
//  Copyright (c) 2012 Stephan. All rights reserved.
//

#import "OwnedAppliance.h"

@implementation OwnedAppliance


-(id)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n{
    self = [ super initWithProductName:pn];
    
    if(self){
        ownerNames = [[ NSMutableArray alloc ] init ];
        if(n){
            [ ownerNames addObject:n];
        }
    }
    
    return self;
}


-(void)addOwnerNamesObject:(NSString *)n{
    [ownerNames addObject:n];
}


-(void)removeOwnerNamesObject:(NSString *)n{
    [ ownerNames removeObject:n];
}


-(id)initWithProductName:(NSString *)name{
    return [ self initWithProductName:name firstOwnerName:nil];
}

@end
