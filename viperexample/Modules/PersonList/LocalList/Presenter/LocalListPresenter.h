//
//  LocalListPresenter.h
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LocalListView.h"
#import "LocalListInteractor.h"

@protocol LocalListOutput <NSObject>

- (void)presentDetailsWithPersonSignal:(id<Person>)person;
- (void)addNewPersonSignal;

@end

@interface LocalListPresenter : NSObject <LocalListViewDelegate>

@property (assign, nonatomic) id<LocalListOutput> output;

- (void)refreshData;
+ (instancetype)presenterWithView:(id<LocalListView>)view interactor:(LocalListInteractor *)interactor;

@end
