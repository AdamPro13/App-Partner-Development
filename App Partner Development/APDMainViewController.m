//
//  APDViewController.m
//  App Partner Development
//
//  Created by Adam Proschek on 2/22/14.
//  Copyright (c) 2014 Adam Proschek. All rights reserved.
//

#import "APDMainViewController.h"

@interface APDMainViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *appPartnerImageView;
@property (strong, nonatomic) IBOutlet UIImageView *frameImageView;

@end

@implementation APDMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self setUpUI];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setUpUI
{
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"header"] forBarMetrics:UIBarMetricsDefault];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background_apppartner"]];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
//    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back2" style:UIBarButtonItemStyleBordered target:nil action:nil];
//    backButton.image = [UIImage imageNamed:@"headerbutton_back_off"];
//    self.navigationItem.backBarButtonItem = backButton;
}

@end
