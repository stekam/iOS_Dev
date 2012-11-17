//
//  main.m
//  Stockz
//
//  Created by Stephan on 17/11/12.
//  Copyright (c) 2012 Stephan. All rights reserved.
//

#import <Foundation/Foundation.h>
#define LOCAL_FILE  @"/tmp/stocks.plist"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *stocks = [ [ NSMutableArray alloc ] init ];
        
        NSMutableDictionary *stock ;
        
        
        stock = [ NSMutableDictionary dictionary];
        [ stock setObject:@"AAPL" forKey:@"symbol"];
        [ stock setObject:[NSNumber numberWithInt:150] forKey:@"shares" ];
        [ stocks addObject:stock];
    
        stock = [ NSMutableDictionary dictionary];
        [ stock setObject:@"GOOG" forKey:@"symbol"];
        [ stock setObject:[NSNumber numberWithInt:250] forKey:@"shares" ];
        [ stocks addObject:stock];
        
        
        [ stocks writeToFile:LOCAL_FILE atomically:YES];
    
        
        NSArray *stockList = [ NSArray arrayWithContentsOfFile:LOCAL_FILE];
    
        for (NSDictionary *d in stockList) {
            NSLog(@"I have %@ shares of %@", [ d objectForKey:@"shares"] , [ d objectForKey:@"symbol"]);
        }
        
    }
    return 0;
}

