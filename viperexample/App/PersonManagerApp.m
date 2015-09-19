//
//  PersonManagerApp.m
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import "PersonManagerApp.h"

#import "Initializer.h"
#import "AppearanceInitializer.h"
#import "CoreDataInitializer.h"

#import "PersonListWireframe.h"
#import "AddNewPersonWireframe.h"

@interface PersonManagerApp() <PersonListWireframeOutput>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) PersonListWireframe *homeWireframe;
@property (strong, nonatomic) AddNewPersonWireframe *addNewPersonWireframe;
@end


@implementation PersonManagerApp

+ (instancetype)createApp
{
    PersonManagerApp *new = [PersonManagerApp new];
    return new;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        
        //initialize app stuff like Analytics and Appearance
        NSArray *initializers = @[
                                  [AppearanceInitializer new],
                                  [CoreDataInitializer new]
                                  ];
        for (id<Initializer> init in initializers) {
            [init performInitialSetup];
        }
        [self showStartingPoint];
    }
    return self;
}

- (void)showStartingPoint
{
    PersonListWireframe *wireframe = [PersonListWireframe createWireframe];
    self.homeWireframe = wireframe;
    self.homeWireframe.output = self;
    self.window.rootViewController = wireframe.rootNavigationController;
    [self.window makeKeyAndVisible];
}

#pragma mark - Person List Wireframe Output

- (void)openNewPersonFlowSignal
{
    self.addNewPersonWireframe = [AddNewPersonWireframe createWireframeAndPresentOnNavigationController:self.homeWireframe.rootNavigationController];
    self.addNewPersonWireframe.output = self.homeWireframe;
}

@end
