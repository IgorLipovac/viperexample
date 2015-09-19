//
//  LocalListDataSource.h
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface LocalListItem : NSObject

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;

@end


@protocol ListDataSource <NSObject>

- (NSInteger)numberOfListItems;
- (LocalListItem *) itemAtIndex:(NSInteger)index;

@end

@interface LocalListDataSource : NSObject <ListDataSource>

+ (instancetype)dataSourceWithPersons:(NSArray *)personList;
- (id<Person>)personAtIndex:(NSInteger)index;

@end
