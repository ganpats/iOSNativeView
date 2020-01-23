//
//  MyView.m
//  iOSNativeView
//
//  Created by MacCatalina on 23/01/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import "MyView.h"

@implementation MyView {
  UIButton *btn;
}

-(instancetype)initWithFrame:(CGRect)frame {
  return [super initWithFrame:frame];
}

-(instancetype)initWithCoder:(NSCoder *)coder {
  return [super initWithCoder:coder];
}

-(void)layoutSubviews {
  [super layoutSubviews];
  
  if (_myViewController == nil) {
    // embed
    [self embed];
  } else {
    // set frame
    _myViewController.view.frame = self.bounds;
  }
}

-(void)embed {
  UIViewController *parentVC = [self getParentViewController];
  if (parentVC == nil) return;
  
  MyViewController *vc = [[MyViewController alloc] init];

  [parentVC addChildViewController:vc];
  [self addSubview:vc.view];
  vc.view.frame = self.bounds;
  [vc didMoveToParentViewController:parentVC];
  self.myViewController = vc;
}

-(UIViewController*)getParentViewController {
  UIResponder *parentResponder = self;
  while (parentResponder != nil) {
    parentResponder = parentResponder.nextResponder;
    if ([parentResponder isKindOfClass:[UIViewController class]]) {
      return (UIViewController*)parentResponder;
    }
  }
  return nil;
}

@end
