//
//  AddNewPersonCoreDataInteractor.m
//  viperexample
//
//  Created by Igor Lipovac on 20/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import "AddNewPersonMainInteractor.h"
#import "CDPerson.h"
#import "CDCompany.h"
#import <MagicalRecord/MagicalRecord.h>

@implementation AddNewPersonMainInteractor

- (void)storeNewPersonForItem:(AddNewPersonItem *)item completion:(void (^)(BOOL))completion
{
    CDPerson *person = [CDPerson MR_createEntity];
    person.firstName = item.firstName;
    person.lastName = item.lastName;
    person.vehicle = item.vehicle;
    CDCompany *company = [CDCompany MR_createEntity];
    company.name = item.companyName;
    company.country = item.companyCountry;
    
    person.company = company;
    
    [person.managedObjectContext MR_saveToPersistentStoreWithCompletion:^(BOOL contextDidSave, NSError *error) {
        if (contextDidSave) {
            completion(YES);
        } else {
            completion(NO);
        }
    }];
}

@end
