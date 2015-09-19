//
//  CDPersonListService.m
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import "CDPersonListService.h"
#import <MagicalRecord/MagicalRecord.h>
#import "CDPerson.h"

@interface CDPersonListService ()

@end

@implementation CDPersonListService

- (void)getPersonsWithCompletion:(void (^)(NSArray<Person> *))completion
{
    NSManagedObjectContext *context = [NSManagedObjectContext MR_defaultContext];
    [context performBlock:^{
        NSArray<Person> *persons = (NSArray<Person> *)[CDPerson MR_findAllInContext:context];
        completion(persons);
    }];
}

@end
