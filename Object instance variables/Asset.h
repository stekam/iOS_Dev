//
//  Asset.h
//  Object instance variables
//
//  Created by Stephan Kaminski on 04/11/12.
//  Copyright (c) 2012 SK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Asset : NSObject
{
    NSString *label;
    unsigned int resaleValue;
    
}

@property (strong) NSString *label;
@property unsigned int resaleValue;
@end
