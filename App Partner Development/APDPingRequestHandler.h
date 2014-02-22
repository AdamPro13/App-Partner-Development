//
//  APDPingRequestHandler.h
//  App Partner Development
//
//  Created by Adam Proschek on 2/22/14.
//  Copyright (c) 2014 Adam Proschek. All rights reserved.
//

#import "APDBaseRequestHandler.h"

@interface APDPingRequestHandler : APDBaseRequestHandler

+ (APDPingRequestHandler *)pingRequestHandlerForSender:(NSObject <APDRequestDelegate> *)sender;

@end
