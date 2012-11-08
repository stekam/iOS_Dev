//
//  Asset.h
//  Object instance variables
//
//  Created by Stephan Kaminski on 04/11/12.
//  Copyright (c) 2012 SK. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;

@interface Asset : NSObject
{
    NSString *label;
    unsigned int resaleValue;
    __weak Person *holder ;
}
@property (weak) Person *holder;
@property (strong) NSString *label;
@property unsigned int resaleValue;
@end
