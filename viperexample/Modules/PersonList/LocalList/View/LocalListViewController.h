//
//  LocalListViewController.h
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LocalListView.h"

@interface LocalListViewController : UIViewController <LocalListView>

@property (assign, nonatomic) id<LocalListViewDelegate> delegate; // PRESENTER!!!

@end
