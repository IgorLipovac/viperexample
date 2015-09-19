//
//  DetailsPresenter.h
//  viperexample
//
//  Created by Igor Lipovac on 19/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailsView.h"

@protocol DetailsOutput <NSObject>

- (void)closeDetailsSignal;

@end

@interface DetailsPresenter : NSObject <DetailsViewDelegate>

@property (assign, nonatomic) id<DetailsOutput> output;

- (void)presentPersonDetails:(id<Person>)person;
+ (instancetype)presenterWithDetailView:(id<DetailsView>)view;

@end
