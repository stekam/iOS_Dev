//
//  main.m
//  Callbacks
//
//  Created by Stephan on 17/11/12.
//  Copyright (c) 2012 Stephan. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Logger.h"


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Logger *log = [[ Logger alloc ] init ];
        
        NSURL *url = [ NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/206/pg206XXX.txt"];
        
        NSURLRequest *req = [ NSURLRequest requestWithURL:url];
        
        __unused NSURLConnection *conn = [ [ NSURLConnection alloc] initWithRequest:req
                                                                           delegate:log
                                                                   startImmediately:YES];
        
        __unused NSTimer *time = [ NSTimer scheduledTimerWithTimeInterval:5
                                                          target:log
                                                        selector:@selector(sayOuch:)
                                                        userInfo:nil
                                                         repeats:YES];
        
        [ [ NSNotificationCenter defaultCenter ] addObserver:log
                                                    selector:@selector(zoneChange:)
                                                        name:NSSystemTimeZoneDidChangeNotification
                                                      object:nil];
        
        [ [ NSRunLoop currentRunLoop ] run ];
        
    }
    return 0;
}

