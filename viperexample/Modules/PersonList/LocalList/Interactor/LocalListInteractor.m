//
//  LocalListInteractor.m
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import "LocalListInteractor.h"
#import "CDPersonListService.h"
#import "APIPersonListService.h"
#import "PersonModel.h"
#import "CompanyModel.h"

@interface LocalListInteractor()

@property (nonatomic, strong) APIPersonListService *APIService;
@property (nonatomic, strong) CDPersonListService *CDService;

@end

@implementation LocalListInteractor

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.APIService = [[APIPersonListService alloc] init];
        self.CDService = [[CDPersonListService alloc] init];
    }
    return self;
}

- (void)getPersonsWithBlock:(void (^)(NSArray *))block
{
    NSMutableArray *allPersons = [NSMutableArray array];
    [self.APIService getPersonsWithCompletion:^(NSArray *persons) {
        for (NSDictionary *dict in persons) {
            PersonModel *personModel = [[PersonModel alloc] initWithDictionary:dict];
            [allPersons addObject:personModel];
        }
       [self.CDService getPersonsWithCompletion:^(NSArray *persons) {
           [allPersons addObjectsFromArray:persons];
           block(allPersons);
       }];
    }];
}

@end
