//
//  APDFacebookFriend.m
//  App Partner Development
//
//  Created by Adam Proschek on 2/22/14.
//  Copyright (c) 2014 Adam Proschek. All rights reserved.
//

#import <FacebookSDK/Facebook.h>
#import "APDFacebookFriend.h"

@implementation APDFacebookFriend

- (id)initWithGraphDictionary:(NSDictionary <FBGraphUser> *)userDictionary
{
    self = [[APDFacebookFriend alloc] init];
    self.firstName = [userDictionary valueForKey:@"first_name"];
    self.lastName = [userDictionary valueForKey:@"last_name"];
    self.userId = [userDictionary valueForKey:@"id"];
    self.username = [userDictionary valueForKey:@"username"];
    
    return self;
}

- (FBProfilePictureView *)getProfilePicture
{
    FBProfilePictureView *profilePicture = [[FBProfilePictureView alloc] initWithProfileID:self.username pictureCropping:FBProfilePictureCroppingSquare];
    return profilePicture;
}

@end
