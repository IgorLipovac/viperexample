//
//  LocalListView.h
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LocalListDataSource.h"

@protocol LocalListViewDelegate <NSObject>
- (void)didSelectItemOnIndex:(NSInteger)index;
- (void)didPressAddNewPerson;
@end

@protocol LocalListView <NSObject>

- (void)showDataWithDataSource:(id<ListDataSource>)localListDataSource;

@end
