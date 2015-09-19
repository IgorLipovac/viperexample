//
//  PersonModel.m
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import "PersonModel.h"

@implementation PersonModel

@synthesize firstName, lastName, vehicle, company;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        self.firstName = dictionary[@"first_name"];
        self.lastName = dictionary[@"last_name"];
        self.vehicle = dictionary[@"vehicle"];
        self.company = [[CompanyModel alloc] initWithDictionary:dictionary[@"company"]];
        
    }
    return self;
}

@end
