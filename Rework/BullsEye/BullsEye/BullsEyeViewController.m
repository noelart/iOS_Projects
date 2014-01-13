//
//  BullsEyeViewController.m
//  BullsEye
//
//  Created by Noel Zahra on 05/01/2014.
//  Copyright (c) 2014 Noel Zahra. All rights reserved.
//

#import "BullsEyeViewController.h"

@interface BullsEyeViewController ()

@property (nonatomic, weak) IBOutlet UILabel *targetValueLabel;
@property (nonatomic, weak) IBOutlet UILabel *currentValueLabel;
@property (nonatomic, weak) IBOutlet UISlider *slider;

@property (nonatomic, assign) NSUInteger currentValue;
@property (nonatomic, assign) NSUInteger targetValue;

@end

@implementation BullsEyeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self updateLabels];
    [self startNewRound];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - helpers
- (void)startNewRound
{
    self.currentValue = 50;
    self.slider.value = self.currentValue;
    self.targetValue = 1 + arc4random_uniform(100);
    
}

- (void)updateLabels
{
    self.targetValueLabel.text = [NSString stringWithFormat:@"%d", self.targetValue];
}

#pragma mark - UI
- (IBAction)showAlert:(UIButton *)sender
{
    NSString *message = [NSString stringWithFormat:@"Your score:%d\n Target score was:%d", self.currentValue, self.targetValue];
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Preesed hit me button"
                                                   message:message
                                                  delegate:self
                                         cancelButtonTitle:@"Next"
                                         otherButtonTitles: nil];
    [alert show];
    
    [self updateLabels];
    [self startNewRound];
}

- (IBAction)sliderMoved:(UISlider *)slider
{
    self.currentValue = lroundf(slider.value);
    self.currentValueLabel.text = [NSString stringWithFormat:@"%d", self.currentValue];
}

@end
