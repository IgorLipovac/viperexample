//
//  LocalListDataSource.m
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import "LocalListDataSource.h"
#import "Person.h"

/**
 *  Item
 */

@implementation LocalListItem
@end


/**
 *  Datasource
 */
@interface LocalListDataSource()

@property (nonatomic, strong) NSMutableArray *personList;
@property (nonatomic, strong) NSMutableArray *itemList;

@end

@implementation LocalListDataSource

+ (instancetype)dataSourceWithPersons:(NSArray *)personList
{
    LocalListDataSource *datasource = [LocalListDataSource new];
    datasource.personList = [NSMutableArray arrayWithArray:personList];
    datasource.itemList = [NSMutableArray array];
    for (id<Person> person in personList) {
        LocalListItem *item = [LocalListItem new];
        item.firstName = [person firstName];
        item.lastName = [person lastName];
        [datasource.itemList addObject:item];
    }
    return datasource;
}

- (NSInteger)numberOfListItems
{
    return self.itemList.count;
}

- (id<Person>)personAtIndex:(NSInteger)index
{
    return self.personList[index];
}

- (LocalListItem *)itemAtIndex:(NSInteger)index
{
    return self.itemList[index];
}



@end
