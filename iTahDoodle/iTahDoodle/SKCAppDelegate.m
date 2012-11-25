//
//  SKCAppDelegate.m
//  iTahDoodle
//
//  Created by Stephan on 17/11/12.
//  Copyright (c) 2012 Stephan. All rights reserved.
//

#import "SKCAppDelegate.h"

NSString *docPath(){
    NSArray *pathlist = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSLog(@"Path %@ ",  [ pathlist objectAtIndex:0]  );
    
    return [ [ pathlist objectAtIndex:0] stringByAppendingPathComponent:@"data.dta"];
 
    
}


@implementation SKCAppDelegate


#pragma mark - Handle Action

-(void) addTask:(id)sender{
    NSString *t = [ textField text];
    if( [t isEqualToString:@""] ){
        return;
    }
    
[ tasks addObject:t];
[ taskTable reloadData];
[ textField setText:@""];
[ textField resignFirstResponder];

    
    
    
}

#pragma mark - Table view management


- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [ tasks count];
}


- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{


    
    UITableViewCell *c = [ taskTable dequeueReusableCellWithIdentifier:@"Cell" ];
    
    if(!c){
        c = [[ UITableViewCell alloc ] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    NSString *item = [ tasks objectAtIndex:[ indexPath row]];
    
    [[ c textLabel] setText:item];
    
    return c;
    
}

#pragma mark - Application delegate callbacks 

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    NSArray *plist = [ NSArray arrayWithContentsOfFile:docPath()];
    
    if(plist){
        tasks = [ plist mutableCopy];
    }else{
        tasks = [ [ NSMutableArray alloc ] init];
    }
    
    
    if( [ tasks count ] == 0) {
        [ tasks addObject:@"Walk the dog"];
        [ tasks addObject:@"Write iOS app"];
        [ tasks addObject:@"Kill boby"];
    }
    
    CGRect windowFrame = [ [ UIScreen mainScreen] bounds];
    
    UIWindow *thewindow = [ [ UIWindow alloc ] initWithFrame:windowFrame];
    
    [ self setWindow:thewindow];
   
    
    // define the 3 zone
    CGRect tableFrame = CGRectMake(0, 80, 320, 380);
    CGRect fieldFrame = CGRectMake(20  , 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
    
    taskTable = [[ UITableView alloc ] initWithFrame:tableFrame
                                               style:UITableViewStylePlain];
    
    [ taskTable setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    
    [ taskTable setDataSource:self];
    
    textField = [ [ UITextField alloc] initWithFrame:fieldFrame];
    
    [ textField setBorderStyle:UITextBorderStyleRoundedRect];
    [ textField setPlaceholder:@"Type a task and tap insert"];
    
    insertButton = [ UIButton buttonWithType:UIButtonTypeRoundedRect];
    [ insertButton setFrame:buttonFrame];
    
    [ insertButton addTarget:self action:@selector(addTask:) forControlEvents:UIControlEventTouchUpInside];
    
    [ insertButton setTitle:@"INSERT" forState:UIControlStateNormal];
    
    [[ self window] addSubview:taskTable];
    [[ self window] addSubview:textField];
    [[ self window] addSubview:insertButton];
    
    [ [ self window ] setBackgroundColor:[UIColor whiteColor]];
    
    [ [ self window ] makeKeyAndVisible ];

    
    
    return YES;
 
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    
    [ tasks writeToFile:docPath() atomically:YES];
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
