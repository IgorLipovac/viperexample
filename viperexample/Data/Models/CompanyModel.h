//
//  CompanyModel.h
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Company.h"

@interface CompanyModel : NSObject <Company>

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
