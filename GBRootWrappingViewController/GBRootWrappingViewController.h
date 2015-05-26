//
//  GBRootWrappingViewController.h
//  WaldviertlerKinos
//
//  Created by Luka Mirosevic on 26/05/2015.
//  Copyright (c) 2015 Goonbee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GBRootWrappingViewController : UIViewController

/**
 The wrapped view controller.
 */
@property (strong, nonatomic) UIViewController      *viewController;

/**
 The background color, visible behing the status bar. Defaults to black.
 */
@property (strong, nonatomic) UIColor               *backgroundColor;

/**
 Initializes a view controller that wraps a child view controller and adds it as a subview with a 20px top offset.
 */
- (instancetype)initWithViewController:(UIViewController *)viewController;

@end
