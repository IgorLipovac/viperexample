//
//  DetailsPresenter.m
//  viperexample
//
//  Created by Igor Lipovac on 19/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import "DetailsPresenter.h"

@interface DetailsPresenter()

@property (nonatomic, strong) id<DetailsView> view;

@end

@implementation DetailsPresenter

+ (instancetype)presenterWithDetailView:(id<DetailsView>)view
{
    DetailsPresenter *presenter = [DetailsPresenter new];
    presenter.view = view;
    return presenter;
}

- (void)presentPersonDetails:(id<Person>)person
{
    [self.view setupWithPerson:person];
}

- (void)closeDetails
{
    [self.output closeDetailsSignal];
}

@end
