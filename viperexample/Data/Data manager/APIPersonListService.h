//
//  APIPersonListService.h
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface APIPersonListService : NSObject


- (void)getPersonsWithCompletion:(void (^)(NSArray * persons))completion;


@end
