//
//  SKCViewController.h
//  Quiz
//
//  Created by Stephan on 25/11/12.
//  Copyright (c) 2012 Stephan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SKCViewController : UIViewController <UITextFieldDelegate,UITableViewDataSource>

{
    int currentQuestionIndex;
    
    BOOL editable;
    
    // The model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    // The view objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
    IBOutlet UITextField *textFiled;
}

// Actions for the buttons to invoke
- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
