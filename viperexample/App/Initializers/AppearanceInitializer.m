//
//  AppearanceInitializer.m
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import "AppearanceInitializer.h"
#import <UIKit/UIKit.h>
#import <OpenSans/UIFont+OpenSans.h>

@implementation AppearanceInitializer

- (void)performInitialSetup
{
    [[UINavigationBar appearance] setTitleTextAttributes:@{
                                                           NSFontAttributeName : [UIFont openSansFontOfSize:22],
                                                           NSForegroundColorAttributeName : [UIColor whiteColor]
                                                           }];
    [[UINavigationBar appearance] setTranslucent:NO];
    [[UINavigationBar appearance] setBackgroundColor:[UIColor blackColor]];
    [[UINavigationBar appearance] setBarTintColor:[UIColor blackColor]];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
}

@end
