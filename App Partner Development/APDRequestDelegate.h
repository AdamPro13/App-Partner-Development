//
//  APDRequestDelegate.h
//  App Partner Development
//
//  Created by Adam Proschek on 2/22/14.
//  Copyright (c) 2014 Adam Proschek. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol APDRequestDelegate <NSObject>

- (void)requestEndedWithData:(id)data forRequest:(NSString *)requestUrl;

@end
