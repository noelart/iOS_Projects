//
//  ViewController.m
//  Flashlight
//
//  Created by Noel Zahra on 15/01/2014.
//  Copyright (c) 2014 Noel Zahra. All rights reserved.
//

#import "ViewController.h"

#define kBrightnessLevel @"brightness"
#define kOnOffToggle @"onOff"


@interface ViewController ()

@property (nonatomic, weak) IBOutlet UISwitch *onOffSwitch;
@property (nonatomic, weak) IBOutlet UISlider *brightnessSlider;
@property (nonatomic, weak) IBOutlet UIView *lightSource;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.brightnessSlider.value = [defaults floatForKey:kBrightnessLevel];
    self.onOffSwitch.on = [defaults boolForKey:kOnOffToggle];
    [self setLightSourceAlphaValue:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnLoad
{
    self.onOffSwitch = nil;
    self.brightnessSlider = nil;
    self.lightSource = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
    
}

- (IBAction)setLightSourceAlphaValue:(id)sender
{
    [self updateUserSettings];
    
    if (self.onOffSwitch.on) {
        self.lightSource.alpha = self.brightnessSlider.value;
    } else {
        self.lightSource.alpha = 0.0;
    }
}

- (void)updateUserSettings
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool:self.onOffSwitch.on forKey:kOnOffToggle];
    [userDefaults setFloat:self.brightnessSlider.value forKey:kBrightnessLevel];
    [userDefaults synchronize];
}

@end
