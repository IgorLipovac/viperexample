
//
//  AddNewPersonPresenter.m
//  viperexample
//
//  Created by Igor Lipovac on 20/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import "AddNewPersonPresenter.h"

@interface AddNewPersonPresenter()

@property (strong, nonatomic) id<AddNewPersonView> view;
@property (strong, nonatomic) id<AddNewPersonInteractor> interactor;

@property (strong, nonatomic) AddNewPersonItem *item;

@end

@implementation AddNewPersonPresenter

+ (instancetype)presenterWithView:(id<AddNewPersonView>)view interactor:(id<AddNewPersonInteractor>)interactor
{
    AddNewPersonPresenter *presenter = [AddNewPersonPresenter new];
    presenter.view = view;
    presenter.item = [AddNewPersonItem new];
    presenter.interactor = interactor;
    return presenter;
}

- (void)didChangeFirstNameText:(NSString *)firstName
{
    self.item.firstName = firstName;
}

- (void)didChangeLastNameText:(NSString *)lastName
{
    self.item.lastName = lastName;
}

- (void)didChangeCompanyText:(NSString *)company
{
    self.item.companyName = company;
}

- (void)didChangeCountryText:(NSString *)country
{
    self.item.companyCountry = country;
}

- (void)didChangeVehicleText:(NSString *)vehicle
{
    self.item.vehicle = vehicle;
}

- (void)addNewPersonTapped
{
    [self.interactor storeNewPersonForItem:self.item completion:^(BOOL success) {
        if (success) {
            [self.output closeAndRefreshSignal];
        } else {
            [self.view showSomethingWentWrongAlert];
        }
    }];
    
}


@end
