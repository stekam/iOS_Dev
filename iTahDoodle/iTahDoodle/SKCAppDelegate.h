//
//  SKCAppDelegate.h
//  iTahDoodle
//
//  Created by Stephan on 17/11/12.
//  Copyright (c) 2012 Stephan. All rights reserved.
//

#import <UIKit/UIKit.h>


NSString *docPath(void);

@interface SKCAppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>
{
    UITableView *taskTable;
    UITextField *textField;
    UIButton *insertButton;
    
    NSMutableArray *tasks;
    
}


@property (strong, nonatomic) UIWindow *window;



- (void)addTask:(id)sender;

@end
