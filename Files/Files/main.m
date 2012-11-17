//
//  main.m
//  Files
//
//  Created by Stephan on 16/11/12.
//  Copyright (c) 2012 Stephan. All rights reserved.
//



#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSMutableString *str = [ [ NSMutableString alloc ]init];
        NSError *err = nil;
        for( int i ; i != 15 ; i++ ){
            [str appendString:@"Aaron is cool\r"];
        }
        
        bool success = [ str writeToFile:@"/tmp/cool.txt"
                              atomically:YES
                                encoding:NSUTF8StringEncoding
                                   error:&err ];
        if(success){
            NSLog(@"File downloaded" );
            NSString *filecontent = [ [ NSString alloc]
                                     initWithContentsOfFile:@"/tmp/cool.txt"
                                     encoding:NSUTF8StringEncoding
                                     error:&err];
            if(!filecontent){
                NSLog(@"File read failed!");
            }else{
                NSLog(@"File contens is %@", filecontent);
            };
            
        }else{
            NSLog(@"error %@", [ err localizedDescription ] );
        }
        
        
        NSURL *url = [ NSURL URLWithString:@"https://www.google.com/images/errors/logo_sm.gif"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        
        err = nil;
        
        NSData *dta = [ NSURLConnection sendSynchronousRequest:req
                                             returningResponse:NULL
                                                         error:&err ];
        
        NSLog(@"This file is %lu bytes", dta.length);
        
        err = nil;
        
        success = [ dta writeToFile:@"/tmp/Image.gif"
                            options:0
                              error:&err];
        
        if( success) {
            NSLog(@"File downloaded!" );
            dta = [ NSData dataWithContentsOfFile:@"/tmp/Image.gif" ];
            NSLog(@"This file is %lu bytes", dta.length);
            
        }else{
            NSLog(@"error %@", [ err localizedDescription ] );
        }
        
    }
    return 0;
}

