//
//  LocalListPresenter.m
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import "LocalListPresenter.h"
#import "LocalListDataSource.h"
#import "Person.h"
#import "Company.h"

@interface LocalListPresenter()

@property (strong, nonatomic) LocalListInteractor *interactor;
@property (assign, nonatomic) id<LocalListView> view;
@property (strong, nonatomic) LocalListDataSource *dataSource;


@end

@implementation LocalListPresenter

+ (instancetype)presenterWithView:(id<LocalListView>)view interactor:(LocalListInteractor *)interactor
{
    LocalListPresenter *presenter = [LocalListPresenter new];
    presenter.view = view;
    presenter.interactor = interactor;
    [presenter fetchListData];
    return presenter;
}

- (void)refreshData
{
    [self fetchListData];
}

- (void)fetchListData
{
    [self.interactor getPersonsWithBlock:^(NSArray *persons) {
        LocalListDataSource *dataSource = [LocalListDataSource dataSourceWithPersons:persons];
        self.dataSource = dataSource;
        [self.view showDataWithDataSource:self.dataSource];
    }];
}

- (void)didSelectItemOnIndex:(NSInteger)index
{
    id<Person> person = [self.dataSource personAtIndex:index];
    [self.output presentDetailsWithPersonSignal:person];
}

- (void)didPressAddNewPerson
{
    [self.output addNewPersonSignal];
}

@end
