//
//  PersonListWireframe.m
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import "PersonListWireframe.h"

#import "LocalListView.h"
#import "LocalListViewController.h"
#import "LocalListPresenter.h"
#import "LocalListInteractor.h"

#import "DetailsView.h"
#import "DetailsViewController.h"
#import "DetailsPresenter.h"

#import "NSObject+Lifetime.h"

@interface PersonListWireframe() <LocalListOutput, DetailsOutput>

@property (strong, nonatomic) LocalListPresenter *localListPresenter;

@end

@implementation PersonListWireframe


+ (instancetype)createWireframe
{
    PersonListWireframe *wireframe = [PersonListWireframe new];
    [wireframe setupWireframe];
    return wireframe;
}


- (void)setupWireframe
{
    [super setupWireframe];
    self.rootNavigationController = [self.storyboard instantiateInitialViewController];
    
    LocalListViewController *view = self.rootNavigationController.viewControllers.firstObject; // root view controller
    LocalListInteractor *interactor = [LocalListInteractor new];
    LocalListPresenter *presenter = [LocalListPresenter presenterWithView:view interactor:interactor];
    self.localListPresenter = presenter;
    presenter.output = self;
    [NSObject makeObject:presenter haveTheSameLifetimeAsObject:view]; // trick to avoid strong reference on view in presenter. Debatable!
    view.delegate = presenter;
}



- (NSString *)storyboardName
{
    return @"PersonList";
}

#pragma mark - Details output

- (void)closeDetailsSignal
{
    [[self.rootNavigationController topViewController] dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Local list output

- (void)presentDetailsWithPersonSignal:(id<Person>)person
{
    DetailsViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:detailsViewControllerStoryboardID];
    DetailsPresenter *presenter = [DetailsPresenter presenterWithDetailView:view];
    view.delegate = presenter;
    presenter.output = self;
    [NSObject makeObject:presenter haveTheSameLifetimeAsObject:view];
    [presenter presentPersonDetails:person];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:view];
    
    [[self.rootNavigationController topViewController] presentViewController:nav animated:YES completion:nil];
}

- (void)addNewPersonSignal
{
    [self.output openNewPersonFlowSignal];
}

#pragma mark - AddNewPersonWireframeOutput

- (void)refreshSignal
{
    [self.localListPresenter refreshData];
}

@end
