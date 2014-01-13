//
//  BullsEyeViewController.m
//  BullsEye
//
//  Created by Noel Zahra on 05/01/2014.
//  Copyright (c) 2014 Noel Zahra. All rights reserved.
//

#import "BullsEyeViewController.h"

@interface BullsEyeViewController ()

@property (nonatomic, weak) IBOutlet UILabel *scoreLabel;
@property (nonatomic, weak) IBOutlet UISlider *slider;
@property (nonatomic, weak) IBOutlet UILabel *targetLabel;

@property (nonatomic, assign) NSUInteger currentValue;
@property (nonatomic, assign) NSUInteger targetValue;
@property (nonatomic, assign) CGFloat randomFloat;



@end

@implementation BullsEyeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self startNewRound];
    [self updateLabels];
}

- (void)startNewRound
{
    self.targetValue = 1 + arc4random_uniform(100);
    self.currentValue = 50;
    self.slider.value = self.currentValue;
}

- (void)updateLabels
{
    self.targetLabel.text = [NSString stringWithFormat:@"%d", self.targetValue];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (NSUInteger)currentValue
//{
//    return _currentValue;
//}


#pragma mark - UI

- (IBAction)showAlert:(UIButton *)sender
{
    int difference;
    
    if (self.currentValue > self.targetValue) {
        difference = self.currentValue - self.targetValue;
    } else if (self.targetValue > self.currentValue) {
        difference = self.targetValue - self.currentValue;
    } else {
        difference = 0;
    }
    
    NSString *message = [NSString stringWithFormat:@"Your score is: %d\nThe target value is: %d\n The difference is %d", self.currentValue, self.targetValue, difference];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Pressed Hit me Button"
                                                    message:message
                                                   delegate:self
                                          cancelButtonTitle: @"Next"
                                          otherButtonTitles: nil];
    
    [alert show];
    [self startNewRound];
    [self updateLabels];
}

- (IBAction)sliderMoved:(UISlider *)slider
{
    self.currentValue = lroundf(slider.value);
    NSLog(@"Slider value is : %d", self.currentValue);
    
    self.randomFloat = (float)arc4random_uniform(100) / 100.0f;
    self.scoreLabel.text = [NSString stringWithFormat:@"%f", self.randomFloat];
}

@end
