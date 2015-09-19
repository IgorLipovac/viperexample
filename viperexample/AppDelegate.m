//
//  AppDelegate.m
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import "AppDelegate.h"
#import "PersonManagerApp.h"

@interface AppDelegate ()

@property (nonatomic, strong) PersonManagerApp *app;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.app = [PersonManagerApp createApp];
    return YES;
}

@end
