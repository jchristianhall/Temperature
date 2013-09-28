//
//  TemperatureViewController.m
//  Temperature
//
//  Created by Christian Hall on 28/09/2013.
//  Copyright (c) 2013 Christian Hall. All rights reserved.
//

#import "TemperatureViewController.h"

@interface TemperatureViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)valueChanged:(UIStepper *)sender;

@end

@implementation TemperatureViewController

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

- (IBAction)valueChanged:(UIStepper *)sender
{
    double value = [sender value];
    if (value >= 50 && value <= 70)
    {
        double adjustedBlue = (value - 70)/(50-70);
        UIColor *blue = [UIColor colorWithRed:0 green:0 blue:adjustedBlue alpha:1];
        [self.label setTextColor:blue];
    }
    else if (value <= 90 && value > 70)
    {
        double adjustedRed = (value - 70)/(90-70);
        UIColor *red = [UIColor colorWithRed:adjustedRed green:0 blue:0 alpha:1];
        [self.label setTextColor:red];
    }
    [self.label setText:[NSString stringWithFormat:@"%d", (int)value]];
}

@end
