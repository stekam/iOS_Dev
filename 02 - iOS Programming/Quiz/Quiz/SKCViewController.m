//
//  SKCViewController.m
//  Quiz
//
//  Created by Stephan on 25/11/12.
//  Copyright (c) 2012 Stephan. All rights reserved.
//

#import "SKCViewController.h"

#import "SKCViewController.h"

@implementation SKCViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        // Create two arrays and make the pointers point to them
        questions = [NSMutableArray array];
        answers = [NSMutableArray array];
        
        // Add questions and answers to the arrays
        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];
        
        [questions addObject:@"What is 7 + 7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of Vermont?"];
        [answers addObject:@"Montpelier"];
        
    }
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    // Step to the next question
    currentQuestionIndex = random() % questions.count ;
        
    // Get the string in the current index of the questions array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    // Output the question string to the debug console
    NSLog(@"Displaying question %d : %@", currentQuestionIndex , question);
    
    // Display the string in the question text field
    [questionField setText:question];
  
    [ textFiled setText:question];
    
    // Clear the answer text field
    [answerField setText:@"???"];
    
    editable = YES;
}

- (IBAction)showAnswer:(id)sender
{
    // Get the string in the current index of the answers array
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    // Display the answer string in the answer text field
    [answerField setText:answer];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return [ questions count ];
}


-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    return editable;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [ UITableViewCell alloc];
    NSString *text = [ questions objectAtIndex:[ indexPath row] ];
    
    
    [[ cell textLabel ] setText:text];
    
    return cell;
    
    
}

@end
