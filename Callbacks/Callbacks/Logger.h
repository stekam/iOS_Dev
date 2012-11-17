//
//  Logger.h
//  Callbacks
//
//  Created by Stephan on 17/11/12.
//  Copyright (c) 2012 Stephan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject{
    NSMutableData *incdata;
}
- (void)sayOuch:(NSTimer *)t;
@end
