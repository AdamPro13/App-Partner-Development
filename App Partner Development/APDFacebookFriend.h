//
//  APDFacebookFriend.h
//  App Partner Development
//
//  Created by Adam Proschek on 2/22/14.
//  Copyright (c) 2014 Adam Proschek. All rights reserved.
//

@class FBProfilePictureView;

@interface APDFacebookFriend : NSObject

@property (nonatomic, strong) NSString *userId;
@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;

- (id)initWithGraphDictionary:(NSDictionary <FBGraphUser> *)userDictionary;
- (FBProfilePictureView *)getProfilePicture;

@end
