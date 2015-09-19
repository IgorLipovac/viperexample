//
//  DetailsViewController.m
//  viperexample
//
//  Created by Igor Lipovac on 19/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import "DetailsViewController.h"
#import <UIFont+OpenSans.h>

@interface DetailsViewController()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *companyLabel;
@property (weak, nonatomic) IBOutlet UILabel *vehicleLabel;
@property (weak, nonatomic) IBOutlet UIButton *closeButton;

@property (strong, nonatomic) id<Person> person;

@end

@implementation DetailsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Details";
    [self setupInterface];
}

- (void)setupWithPerson:(id<Person>)person
{
    self.person = person;
}


- (void)setupInterface
{
    self.nameLabel.text = [NSString stringWithFormat:@"%@ %@", [self.person firstName], [self.person lastName]];
    self.vehicleLabel.text = [self.person vehicle];
    self.companyLabel.text = [NSString stringWithFormat:@"%@, %@", [[self.person company] name], [[self.person company] country]];
    self.closeButton.titleLabel.font = [UIFont openSansBoldFontOfSize:15];
}
- (IBAction)closeButtonAction:(id)sender {
    [self.delegate closeDetails];
}
@end
