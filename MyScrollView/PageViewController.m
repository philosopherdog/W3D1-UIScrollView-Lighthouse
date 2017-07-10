//
//  PageViewController.m
//  MyScrollView
//
//  Created by steve on 2017-07-10.
//  Copyright © 2017 steve. All rights reserved.
//

#import "PageViewController.h"

@interface PageViewController ()<UIScrollViewDelegate>
@property (nonatomic, strong) UIScrollView *sv;
@property (nonatomic, strong) UIImageView *iv1;
@property (nonatomic, strong) UIImageView *iv2;
@property (nonatomic, strong) UIPageControl *pc;
@end

@implementation PageViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  [self setupScrollView];
  [self setupPageControl];
  self.sv.delegate = self;
}

- (void)setupScrollView {
  self.sv = [UIScrollView new];
  self.sv.translatesAutoresizingMaskIntoConstraints = NO;
  [self.view addSubview:self.sv];
  [self.sv.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
  [self.sv.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
  [self.sv.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
  [self.sv.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
  self.sv.pagingEnabled = YES;
  
  self.iv1 = [UIImageView new];
  self.iv1.image = [UIImage imageNamed:@"toronto"];
  self.iv1.translatesAutoresizingMaskIntoConstraints = NO;
  [self.sv addSubview:self.iv1];
  [self.iv1.leadingAnchor constraintEqualToAnchor:self.sv.leadingAnchor].active = YES;
  [self.iv1.topAnchor constraintEqualToAnchor:self.sv.topAnchor].active = YES;
  [self.iv1.bottomAnchor constraintEqualToAnchor:self.sv.bottomAnchor].active = YES;
  [self.iv1.widthAnchor constraintEqualToAnchor:self.sv.widthAnchor].active = YES;
  
  [self.iv1.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
  
  self.iv2 = [UIImageView new];
  self.iv2.image = [UIImage imageNamed:@"chicago"];
  self.iv2.translatesAutoresizingMaskIntoConstraints = NO;
  [self.sv addSubview:self.iv2];
  [self.iv2.leadingAnchor constraintEqualToAnchor:self.iv1.trailingAnchor].active = YES;
  [self.iv2.topAnchor constraintEqualToAnchor:self.sv.topAnchor].active = YES;
  [self.iv2.bottomAnchor constraintEqualToAnchor:self.sv.bottomAnchor].active = YES;
  
  [self.iv2.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
  
  [self.iv2.widthAnchor constraintEqualToAnchor:self.sv.widthAnchor].active = YES;
  
  [self.iv2.trailingAnchor constraintEqualToAnchor:self.sv.trailingAnchor].active = YES;
}

- (void)setupPageControl {
  self.pc = [UIPageControl new];
  [self.view addSubview:self.pc];
  [self.view bringSubviewToFront:self.pc];
  self.pc.backgroundColor = [UIColor blackColor];
  self.pc.alpha = 0.5;
  self.pc.numberOfPages = self.sv.subviews.count;
  CGRect frame = CGRectMake(0, self.view.bounds.size.height-50, self.view.bounds.size.width, 50.0);
  self.pc.frame = frame;
}

- (void)viewDidLayoutSubviews {
  
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
  NSLog(@"%@", NSStringFromCGSize(scrollView.contentSize));
  NSLog(@"%@", NSStringFromCGPoint(scrollView.contentOffset));
}





@end
