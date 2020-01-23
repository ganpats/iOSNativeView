//
//  RNTMyViewManager.m
//  iOSNativeView
//
//  Created by MacCatalina on 23/01/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import "RNTMyViewManager.h"
#import "MyView.h"

@implementation RNTMyViewManager

RCT_EXPORT_MODULE(RNTView)

-(UIView *)view {
  return [[MyView alloc] init];
}

@end
