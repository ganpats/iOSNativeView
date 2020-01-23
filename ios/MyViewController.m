//
//  MyViewController.m
//  iOSNativeView
//
//  Created by MacCatalina on 23/01/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(8, 100, 100, 100)];
  [btn setBackgroundColor:UIColor.redColor];
  [btn setTitle:@"Click Here" forState:UIControlStateNormal];
  [btn addTarget:self action:@selector(buttonTapEvent:) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:btn];
}

-(void)buttonTapEvent:(UIButton*)sender {
  NSLog(@"Button Tapped");
}

@end
