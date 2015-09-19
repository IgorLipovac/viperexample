//
//  PersonModel.h
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CompanyModel.h"
#import "Person.h"

@interface PersonModel : NSObject <Person>

- (instancetype) initWithDictionary:(NSDictionary *)dictionary;

@end
