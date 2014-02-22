//
//  APDFacebookFriendRequestHandler.m
//  App Partner Development
//
//  Created by Adam Proschek on 2/22/14.
//  Copyright (c) 2014 Adam Proschek. All rights reserved.
//

#import <FacebookSDK/Facebook.h>
#import "APDFacebookFriendRequestHandler.h"
#import "APDFacebookFriend.h"

@implementation APDFacebookFriendRequestHandler

+ (APDFacebookFriendRequestHandler *)handlerForSender:(NSObject <APDFacebookFriendRequestDelegate> *)sender
{
    APDFacebookFriendRequestHandler *handler = [APDFacebookFriendRequestHandler alloc];
    handler.delegate = sender;
    
    return handler;
}

- (void)requestFriends
{
    __block NSMutableArray *friendsToReturn;
    FBRequest *friendsRequest = [FBRequest requestForMyFriends];
    [friendsRequest startWithCompletionHandler:^(FBRequestConnection *connection, id result, NSError *error)
     {
         friendsToReturn = [[NSMutableArray alloc] initWithCapacity:[[result objectForKey:@"data"] count]];
         NSArray *friends = [result objectForKey:@"data"];
         
         for (NSDictionary <FBGraphUser> *friendDictionary in friends)
         {
             APDFacebookFriend *friend = [[APDFacebookFriend alloc] initWithGraphDictionary:friendDictionary];
             [friendsToReturn addObject:friend];
         }
         
         [self.delegate requestReturnedWithFriends:friendsToReturn];
     }];
}

@end
