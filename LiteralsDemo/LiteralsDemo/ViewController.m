//
//  ViewController.m
//  LiteralsDemo
//
//  Created by Noel Zahra on 05/01/2014.
//  Copyright (c) 2014 Noel Zahra. All rights reserved.
//

#import "ViewController.h"
#import "User.h"


@interface ViewController ()<UIActionSheetDelegate>

@property (nonatomic, weak) IBOutlet UILabel *stringLiteralLabel;
@property (nonatomic, weak) IBOutlet UILabel *lastNameStringLiteralLabel;
@property (nonatomic, weak) IBOutlet UILabel *numberLiteralLabel;
@property (nonatomic, weak) IBOutlet UILabel *boolLiteralLabel;
@property (nonatomic, weak) IBOutlet UILabel *floatLiteralLabel;
@property (nonatomic, weak) IBOutlet UILabel *unsignedIntLiteralLabel;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UI

- (IBAction)stringLiteralButtonPressed:(id)sender
{
    User *user = [[User alloc]init];
    self.stringLiteralLabel.text = [user userWithName:@"Pierre"];
    self.lastNameStringLiteralLabel.text = [user userWithFirstName:@"Pierre" lastName:@"Scott"];
    NSLog(@"%@", self.lastNameStringLiteralLabel.text);
    
}

- (IBAction)signedIntButtonPressed:(id)sender
{
    NSNumber *signedInt = @3;
    [self.numberLiteralLabel setText: [NSString stringWithFormat:@"Unsigned Integer is %@", signedInt]];
}

- (IBAction)boolLiteralButtonPressed:(id)sender
{
    NSNumber *yesValue = @YES;
    self.boolLiteralLabel.text = [NSString stringWithFormat:@"Boolean value is %@", yesValue];
}

- (IBAction)floatLiteralButtonPressed:(id)sender
{
    //Decalring a float
    NSNumber *valueOfPi = @3.14F;
    self.floatLiteralLabel.text = [NSString stringWithFormat:@"Value of Pi is %@", valueOfPi];
}

- (IBAction)unsignedIntbuttonPressed:(id)sender
{
    //Declaring an unsigned Int
    NSNumber *radius = @4U;
    self.unsignedIntLiteralLabel.text = [NSString stringWithFormat:@"Radius (unsigned int) is %@", radius];
}

- (IBAction)resetButton:(id)sender
{
    UIActionSheet *resetActionSheet = [[UIActionSheet alloc] initWithTitle:@"Are you sure you wnat to reset?"
                                                                  delegate:self
                                                         cancelButtonTitle:@"No"
                                                    destructiveButtonTitle:@"Yes"
                                                         otherButtonTitles: nil];
    [resetActionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex != [actionSheet cancelButtonIndex]) {
        
        self.stringLiteralLabel.text = nil;
        self.lastNameStringLiteralLabel.text =nil;
        self.floatLiteralLabel.text = nil;
        self.unsignedIntLiteralLabel.text = nil;
        self.boolLiteralLabel.text = nil;
        self.numberLiteralLabel.text = nil;
    }
}

@end
