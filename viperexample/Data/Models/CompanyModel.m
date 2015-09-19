//
//  CompanyModel.m
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import "CompanyModel.h"

@implementation CompanyModel
@synthesize name, country;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        self.country = dictionary[@"country"];
        self.name = dictionary[@"name"];
    }
    return self;
}

@end
