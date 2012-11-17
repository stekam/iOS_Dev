//
//  Logger.m
//  Callbacks
//
//  Created by Stephan on 17/11/12.
//  Copyright (c) 2012 Stephan. All rights reserved.
//

#import "Logger.h"

@implementation Logger

- (void)sayOuch:(NSTimer *)t{
    NSLog(@"Ouch %@ " , t.fireDate );
        
}

- (void)connection:(NSURLConnection *)connection
    didReceiveData:(NSData *)data{
    if (!incdata){
        incdata = [ [ NSMutableData alloc] init ];
    }

[ incdata appendData:data];

NSLog(@"%lu bytes of data received - %lu bytes received so far ", [ data length ], [ incdata length ] );

}



- (void) connectionDidFinishLoading:(NSURLConnection *)conn
{
    NSLog(@"Data transfer finished!");
    NSString *output = [ [ NSString alloc] initWithData:incdata encoding:NSUTF8StringEncoding ];
    incdata = nil;
    
    NSLog(@"%lu bytes have been read", [ output length]);
    
//    NSLog(@"%@", output );
    
}

- ( void )zoneChange:( NSNotification *)notification {
    NSLog(@" Zone changed %@ ", notification );
}

- ( void ) connection:(NSURLConnection *)connection
     didFailWithError:(NSError *)error{
    NSLog(@"connection failed @%", [ error localizedDescription]);
    incdata = nil ;
}



@end
