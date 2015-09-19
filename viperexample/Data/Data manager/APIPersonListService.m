//
//  APIPersonListService.m
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import "APIPersonListService.h"
#import <AFNetworking/AFNetworking.h>

static NSString* personListURL = @"http://dylannoteboom.nl/tamtam.json";

@interface APIPersonListService()

@property (strong, nonatomic) AFHTTPRequestOperationManager *manager;

@end

@implementation APIPersonListService

- (void)getPersonsWithCompletion:(void (^)(NSArray *))completion
{
    [self.manager GET:personListURL parameters:nil success:^ void(AFHTTPRequestOperation *operation, id responseObject) {
        if (completion) {
            completion(responseObject);
        }
    } failure:^void(AFHTTPRequestOperation *operation, NSError *error) {
        if (completion) {
            completion(@[]);
        }
    }];
}

- (AFHTTPRequestOperationManager *)manager
{
    if (!_manager) {
        _manager = [AFHTTPRequestOperationManager manager];
        _manager.requestSerializer = [AFJSONRequestSerializer serializer];
        _manager.responseSerializer = [AFJSONResponseSerializer serializer];
    }
    return _manager;
}

@end
