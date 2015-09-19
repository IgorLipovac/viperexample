
//
//  DetailsView.h
//  viperexample
//
//  Created by Igor Lipovac on 19/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@protocol DetailsViewDelegate <NSObject>

- (void)closeDetails;

@end


@protocol DetailsView <NSObject>

- (void)setupWithPerson:(id<Person>)person;

@end
