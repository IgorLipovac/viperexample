//
//  AddNewPersonWireframe.h
//  viperexample
//
//  Created by Igor Lipovac on 20/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BaseWireframe.h"


@protocol AddNewPersonWireframeOutput <NSObject>

- (void)refreshSignal;

@end
@interface AddNewPersonWireframe : BaseWireframe

@property (assign, nonatomic) id<AddNewPersonWireframeOutput>output;
+ (instancetype)createWireframeAndPresentOnNavigationController:(UINavigationController *)navigationController;

@end
