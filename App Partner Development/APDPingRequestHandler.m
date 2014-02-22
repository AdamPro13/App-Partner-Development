//
//  APDPingRequestHandler.m
//  App Partner Development
//
//  Created by Adam Proschek on 2/22/14.
//  Copyright (c) 2014 Adam Proschek. All rights reserved.
//

#import "APDPingRequestHandler.h"

@implementation APDPingRequestHandler

+ (APDPingRequestHandler *)pingRequestHandlerForSender:(NSObject <APDRequestDelegate> *)sender
{
    APDPingRequestHandler *handler = [APDPingRequestHandler alloc];
    handler.delegate = sender;
    handler.requestString = [NSString stringWithFormat:@"%@?password=EGOT", [self baseUrl]];
    
    return handler;
}

- (void)requestDidFinishWithData:(id)data
{
    
}

- (void)sendRequest
{
    [self sendRequestWithString:self.requestString];
}

@end
