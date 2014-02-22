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
    handler.requestString = [self baseUrl];
    
    return handler;
}

- (void)requestDidFinishWithData:(id)data
{
    NSString *responseString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    [self.delegate requestEndedWithData:responseString forRequest:self.requestString];
}

- (void)sendRequest
{
    [self sendRequestWithString:self.requestString];
}

@end
