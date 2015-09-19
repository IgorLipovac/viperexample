//
//  BaseWireframe.h
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BaseWireframe : NSObject

@property (strong, nonatomic) UIStoryboard *storyboard;

- (void)setupWireframe;
- (NSString *)storyboardName;

@end
