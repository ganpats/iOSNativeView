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
  NSLog(@"MyView - initWithFrame");
  return [super initWithFrame:frame];
}

-(instancetype)initWithCoder:(NSCoder *)coder {
  NSLog(@"MyView - initWithCoder");
  return [super initWithCoder:coder];
}

-(void)layoutSubviews {
  [super layoutSubviews];
  
  if (btn == nil) {
    btn = [[UIButton alloc] initWithFrame:CGRectMake(8, 100, 100, 100)];
    [btn setTitle:@"Click Here" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(buttonTapEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn];
  }
}

-(void)buttonTapEvent:(UIButton*)sender {
  NSLog(@"Button Tapped");
}

@end
