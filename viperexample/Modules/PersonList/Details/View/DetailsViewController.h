//
//  DetailsViewController.h
//  viperexample
//
//  Created by Igor Lipovac on 19/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailsView.h"

static NSString *detailsViewControllerStoryboardID = @"DetailsViewController";

@interface DetailsViewController : UIViewController <DetailsView>

@property (assign,nonatomic) id<DetailsViewDelegate>delegate;

@end
