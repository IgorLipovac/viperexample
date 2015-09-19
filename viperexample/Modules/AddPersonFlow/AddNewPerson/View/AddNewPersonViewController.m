//
//  AddNewPersonViewController.m
//  viperexample
//
//  Created by Igor Lipovac on 20/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import "AddNewPersonViewController.h"
#import <UIFont+OpenSans.h>

@interface AddNewPersonViewController()
@property (weak, nonatomic) IBOutlet UITextField *firstNameTextfield;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextfield;
@property (weak, nonatomic) IBOutlet UITextField *companyTextfield;
@property (weak, nonatomic) IBOutlet UITextField *countryTextfield;
@property (weak, nonatomic) IBOutlet UITextField *vehicleTextfield;
@property (weak, nonatomic) IBOutlet UIButton *addButton;

@end

@implementation AddNewPersonViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Add new";
    
    [self.firstNameTextfield addTarget:self action:@selector(textFieldDidChangeText:) forControlEvents:UIControlEventAllEditingEvents];
    [self.lastNameTextfield addTarget:self action:@selector(textFieldDidChangeText:) forControlEvents:UIControlEventAllEditingEvents];
    [self.companyTextfield addTarget:self action:@selector(textFieldDidChangeText:) forControlEvents:UIControlEventAllEditingEvents];
    [self.countryTextfield addTarget:self action:@selector(textFieldDidChangeText:) forControlEvents:UIControlEventAllEditingEvents];
    [self.vehicleTextfield addTarget:self action:@selector(textFieldDidChangeText:) forControlEvents:UIControlEventAllEditingEvents];

    self.addButton.titleLabel.font = [UIFont openSansBoldFontOfSize:15];
    
}

- (void)textFieldDidChangeText:(UITextField *)textfield
{
    if (textfield == self.firstNameTextfield) {
        [self.delegate didChangeFirstNameText:textfield.text];
    } else if (textfield == self.lastNameTextfield) {
        [self.delegate didChangeLastNameText:textfield.text];
    } else if (textfield == self.companyTextfield) {
        [self.delegate didChangeCompanyText:textfield.text];
    } else if (textfield == self.countryTextfield) {
        [self.delegate didChangeCountryText:textfield.text];
    } else if (textfield == self.vehicleTextfield) {
        [self.delegate didChangeVehicleText:textfield.text];
    }
}

- (IBAction)addNewPersonAction:(id)sender {
    [self.delegate addNewPersonTapped];
}

- (void)showSomethingWentWrongAlert
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error" message:@"Something went wrong" preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleCancel handler:nil]];
    [self presentViewController:alert animated:YES completion:nil];
}
@end
