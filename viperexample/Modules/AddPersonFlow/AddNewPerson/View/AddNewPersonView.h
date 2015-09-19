//
//  AddNewPersonView.h
//  viperexample
//
//  Created by Igor Lipovac on 20/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AddNewPersonViewDelegate <NSObject>

- (void)didChangeFirstNameText:(NSString *)firstName;
- (void)didChangeLastNameText:(NSString *)lastName;
- (void)didChangeCompanyText:(NSString *)company;
- (void)didChangeCountryText:(NSString *)country;
- (void)didChangeVehicleText:(NSString *)vehicle;
- (void)addNewPersonTapped;

@end

@protocol AddNewPersonView <NSObject>

- (void)showSomethingWentWrongAlert;

@end
