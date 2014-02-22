//
//  APDFacebookFriendCell.h
//  App Partner Development
//
//  Created by Adam Proschek on 2/22/14.
//  Copyright (c) 2014 Adam Proschek. All rights reserved.
//

#import <FacebookSDK/Facebook.h>

@class APDFacebookFriend;

@interface APDFacebookFriendCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet FBProfilePictureView *profilePicture;
@property (strong, nonatomic) APDFacebookFriend *facebookFriend;

@end
