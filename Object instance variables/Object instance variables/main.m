//
//  main.m
//  Object instance variables
//
//  Created by Stephan Kaminski on 04/11/12.
//  Copyright (c) 2012 SK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
           
        NSMutableArray *perss = [ [ NSMutableArray alloc] init];
        
        for (int i = 0 ; i != 10; i++ ){
            
            Person *pers = [ [ Person alloc ] init ];
            
            pers.weightInKilo = 90 + i;
            pers.heightInMeter = ( 18 - i )/10 ;
            
            [perss addObject:pers];
            
        }
        
        // add the assets to the person randomly
        for ( int i = 0 ; i != 10 ; i++){
            Asset *ass  = [[ Asset alloc ] init];
            [ ass setLabel:[NSString stringWithFormat:@"Laptop %d",i]];
            [ ass setResaleValue:i*17];
            
            NSUInteger randomIndex = random() % [ perss count ];
            
            Person *randpers = [ perss objectAtIndex:randomIndex];
            
            [ randpers addAssetsObjects:ass];
            
        }
        
        
        NSLog(@"Persons %@",perss);
        
        NSLog(@"Giving up one person");
        
        [ perss removeObjectAtIndex:5];
        
        perss = nil;
        
    }
    return 0;
}

