//
//  ViewController.m
//  MyScrollView
//
//  Created by steve on 2017-07-10.
//  Copyright © 2017 steve. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (nonatomic, strong) UIScrollView *sv;
@property (nonatomic, strong) UIImageView *iv;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.sv = [self.view viewWithTag:100];
  self.iv = [UIImageView new];
  self.iv.image = [UIImage imageNamed:@"cats"];
  [self.iv sizeToFit];
  [self.sv addSubview:self.iv];
  self.sv.contentSize = self.iv.bounds.size;
  self.sv.minimumZoomScale = 0.2;
  self.sv.maximumZoomScale = 2.0;
  self.sv.delegate = self;
  self.sv.zoomScale = 0.5;
  self.sv.contentOffset = CGPointMake(500, 500);
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
  return self.iv;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
  
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
  
}





@end
