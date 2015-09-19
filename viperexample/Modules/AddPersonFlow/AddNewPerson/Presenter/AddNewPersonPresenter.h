//
//  AddNewPersonPresenter.h
//  viperexample
//
//  Created by Igor Lipovac on 20/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddNewPersonInteractor.h"
#import "AddNewPersonView.h"

@protocol AddNewPersonOutput <NSObject>

- (void)closeAndRefreshSignal;

@end

@interface AddNewPersonPresenter : NSObject <AddNewPersonViewDelegate>

@property (assign,nonatomic) id<AddNewPersonOutput> output;

+ (instancetype)presenterWithView:(id<AddNewPersonView>)view interactor:(id<AddNewPersonInteractor>)interactor;

@end
