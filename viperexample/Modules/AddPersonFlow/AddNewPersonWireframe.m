//
//  AddNewPersonWireframe.m
//  viperexample
//
//  Created by Igor Lipovac on 20/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import "AddNewPersonWireframe.h"
#import "NSObject+Lifetime.h"

#import "AddNewPersonView.h"
#import "AddNewPersonViewController.h"
#import "AddNewPersonInteractor.h"
#import "AddNewPersonMainInteractor.h"
#import "AddNewPersonPresenter.h"

@interface AddNewPersonWireframe() <AddNewPersonOutput>

@property (nonatomic, strong) UINavigationController *rootNavigationController;

@end

@implementation AddNewPersonWireframe

+(instancetype)createWireframeAndPresentOnNavigationController:(UINavigationController *)navigationController
{
    AddNewPersonWireframe *wireframe = [AddNewPersonWireframe new];
    wireframe.rootNavigationController = navigationController;
    [wireframe setupWireframe];
    return wireframe;
}

- (void)setupWireframe
{
    [super setupWireframe];
    AddNewPersonViewController *view = [self.storyboard instantiateInitialViewController];
    AddNewPersonMainInteractor *interactor = [AddNewPersonMainInteractor new];
    AddNewPersonPresenter *presenter = [AddNewPersonPresenter presenterWithView:view interactor:interactor];
    presenter.output = self;
    view.delegate = presenter;
    [NSObject makeObject:presenter haveTheSameLifetimeAsObject:view];
    [self.rootNavigationController pushViewController:view animated:YES];
    
}

- (NSString *)storyboardName
{
    return @"AddNewPerson";
}

#pragma mark - Add New Person Output

- (void)closeAndRefreshSignal
{
    [self.output refreshSignal];
    [self.rootNavigationController popViewControllerAnimated:YES];
}

@end
