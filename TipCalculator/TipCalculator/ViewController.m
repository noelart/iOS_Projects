//
//  ViewController.m
//  TipCalculator
//
//  Created by Noel Zahra on 05/01/2014.
//  Copyright (c) 2014 Noel Zahra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@property (nonatomic, strong) IBOutlet UILabel *tipLabel;
@property (nonatomic, strong) IBOutlet UITextField *billAmountTextField;

- (IBAction)calculateTipButton:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -Tip calculator

- (IBAction)calculateTipButton:(id)sender
{
    CGFloat amount = [self.billAmountTextField.text floatValue];
    CGFloat tip = (amount * 10)/ 100;
    
    self.tipLabel.textColor = [UIColor colorWithRed:0.2 green:0.2 blue:0.8 alpha:1.0];
    self.tipLabel.text = [NSString stringWithFormat:@"$%0.2f", tip];
    NSLog(@"tip amount is %0.2f", tip);
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return [textField resignFirstResponder];
}


@end
