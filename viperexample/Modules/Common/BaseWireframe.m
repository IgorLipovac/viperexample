//
//  BaseWireframe.m
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import "BaseWireframe.h"

@implementation BaseWireframe

- (void)setupWireframe
{
    self.storyboard = [UIStoryboard storyboardWithName:[self storyboardName] bundle:nil];
}

- (NSString *)storyboardName
{
    NSAssert(NO, @"Abstract method");
    return nil;
}

@end
