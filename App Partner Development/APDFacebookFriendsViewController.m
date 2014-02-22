//
//  APDFacebookFriendsViewController.m
//  App Partner Development
//
//  Created by Adam Proschek on 2/22/14.
//  Copyright (c) 2014 Adam Proschek. All rights reserved.
//

#import "APDFacebookFriendsViewController.h"

@interface APDFacebookFriendsViewController ()

@property (strong, nonatomic) IBOutlet UITableView *friendsTableView;
@property (strong, nonatomic) IBOutlet UINavigationItem *navigationBar;

- (IBAction)reloadButtonPressed:(UIButton *)sender;

@end

@implementation APDFacebookFriendsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self setUpUI];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}

- (void)setUpUI
{
    NSLog(@"Navigation Controller: %@", self.navigationItem.leftBarButtonItem);
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background_apppartner"]];
    
//    [self.navigationItem.backBarButtonItem setBackgroundImage:[UIImage imageNamed:@"headerbutton_back_off"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
}

- (IBAction)reloadButtonPressed:(UIButton *)sender {
}
@end
