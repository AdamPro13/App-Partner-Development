//
//  APDFacebookFriendsViewController.m
//  App Partner Development
//
//  Created by Adam Proschek on 2/22/14.
//  Copyright (c) 2014 Adam Proschek. All rights reserved.
//

#import <FacebookSDK/Facebook.h>
#import "APDFacebookFriendsViewController.h"
#import "APDFacebookFriendCell.h"
#import "APDFacebookFriendRequestHandler.h"
#import "APDFacebookFriend.h"

@interface APDFacebookFriendsViewController ()

@property (strong, nonatomic) IBOutlet UITableView *friendsTableView;
@property (strong, nonatomic) IBOutlet UINavigationItem *navigationBar;
@property (strong, nonatomic) NSArray *friends;
@property (strong, nonatomic) APDFacebookFriendRequestHandler *friendRequestHandler;

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

- (void)viewWillAppear:(BOOL)animated
{
    self.friendRequestHandler = [APDFacebookFriendRequestHandler handlerForSender:self];
    [self.friendRequestHandler requestFriends];
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
    return [self.friends count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    APDFacebookFriendCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        cell = [[APDFacebookFriendCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    cell.facebookFriend = [self.friends objectAtIndex:indexPath.row];
    cell.nameLabel.text = [NSString stringWithFormat:@"%@ %@", cell.facebookFriend.firstName, cell.facebookFriend.lastName];
    cell.profilePicture = [cell.facebookFriend getProfilePicture];
    
    return cell;
}

- (void)setUpUI
{   
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background_apppartner"]];
    
}

- (IBAction)reloadButtonPressed:(UIButton *)sender
{
    [self.friendRequestHandler requestFriends];
}

- (void)requestReturnedWithFriends:(NSArray *)friends
{
    self.friends = friends;
    [self.friendsTableView reloadData];
}

@end
