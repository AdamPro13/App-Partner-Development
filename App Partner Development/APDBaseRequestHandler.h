//
//  APDBaseRequestHandler.h
//  App Partner Development
//
//  Created by Adam Proschek on 2/22/14.
//  Copyright (c) 2014 Adam Proschek. All rights reserved.
//

#import "APDRequestDelegate.h"

@interface APDBaseRequestHandler : NSObject

@property (nonatomic, weak) NSObject<APDRequestDelegate> *delegate;
@property (nonatomic, strong) NSString *requestString;

+ (NSString *)baseUrl;
- (void)sendRequestWithString:(NSString *)requestString;
- (void)requestDidFinishWithData:(id)data;
- (void)sendRequest;

@end
