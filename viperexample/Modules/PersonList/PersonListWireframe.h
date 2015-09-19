//
//  PersonListWireframe.h
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseWireframe.h"
#import "AddNewPersonWireframe.h"

@protocol PersonListWireframeOutput <NSObject>

- (void)openNewPersonFlowSignal;

@end


@interface PersonListWireframe : BaseWireframe <AddNewPersonWireframeOutput>

@property (nonatomic, strong) UINavigationController *rootNavigationController;
@property (assign, nonatomic) id<PersonListWireframeOutput> output;

+ (instancetype)createWireframe;

@end
