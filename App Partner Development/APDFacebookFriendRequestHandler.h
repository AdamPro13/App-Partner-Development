//
//  APDFacebookFriendRequestHandler.h
//  App Partner Development
//
//  Created by Adam Proschek on 2/22/14.
//  Copyright (c) 2014 Adam Proschek. All rights reserved.
//

#import "APDFacebookFriendRequestDelegate.h"

@interface APDFacebookFriendRequestHandler : NSObject

@property (nonatomic, weak) NSObject <APDFacebookFriendRequestDelegate> *delegate;

+ (APDFacebookFriendRequestHandler *)handlerForSender:(NSObject <APDFacebookFriendRequestDelegate> *)sender;
- (void)requestFriends;

@end
