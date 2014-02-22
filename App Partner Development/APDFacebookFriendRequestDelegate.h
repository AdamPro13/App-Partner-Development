//
//  APDFacebookFriendRequestDelegate.h
//  App Partner Development
//
//  Created by Adam Proschek on 2/22/14.
//  Copyright (c) 2014 Adam Proschek. All rights reserved.
//

@protocol APDFacebookFriendRequestDelegate <NSObject>

- (void)requestReturnedWithFriends:(NSArray *)friends;

@end
