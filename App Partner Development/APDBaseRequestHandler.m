//
//  APDBaseRequestHandler.m
//  App Partner Development
//
//  Created by Adam Proschek on 2/22/14.
//  Copyright (c) 2014 Adam Proschek. All rights reserved.
//

#import "APDBaseRequestHandler.h"
#import "AFNetworking.h"

@implementation APDBaseRequestHandler

+ (NSString *)baseUrl
{
    return @"http://ec2-54-243-205-92.compute-1.amazonaws.com/Tests/ping.php";
}

- (void)sendRequestWithString:(NSString *)requestString
{
    NSDictionary *parameters = @{@"Password": @"EGOT"};
    NSMutableURLRequest *request = [[AFHTTPRequestSerializer serializer] multipartFormRequestWithMethod:@"POST" URLString:requestString parameters:parameters constructingBodyWithBlock:nil error:nil];
    [request setValue:@"EGOT" forHTTPHeaderField:@"Password"];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    operation.responseSerializer = [AFHTTPResponseSerializer serializer];
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        [self requestDidFinishWithData:responseObject];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Request Failure");
    }];
    [operation start];
}

- (void)requestDidFinishWithData:(id)data
{
//    Empty - Define for children
}

- (void)sendRequest
{
//    Empty - Define for children
}

@end
