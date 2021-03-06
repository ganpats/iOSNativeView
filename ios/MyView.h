//
//  MyView.h
//  iOSNativeView
//
//  Created by MacCatalina on 23/01/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface MyView : UIView

@property (weak, nullable) MyViewController *myViewController;

@end

NS_ASSUME_NONNULL_END
