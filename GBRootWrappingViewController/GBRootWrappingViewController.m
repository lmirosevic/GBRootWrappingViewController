//
//  GBRootWrappingViewController.m
//  WaldviertlerKinos
//
//  Created by Luka Mirosevic on 26/05/2015.
//  Copyright (c) 2015 Goonbee. All rights reserved.
//

#import "GBRootWrappingViewController.h"

static CGFloat const kTopOffset = 20;

@implementation GBRootWrappingViewController

#pragma mark - Custom Accessors

- (void)setBackgroundColor:(UIColor *)backgroundColor {    
    self.view.backgroundColor = backgroundColor;
}

- (UIColor *)backgroundColor {
    return self.view.backgroundColor;
}

- (void)setViewController:(UIViewController *)viewController {
    if (_viewController != viewController) {
        _viewController = viewController;
        
        [self _updateChildVC];
    }
}

#pragma mark - API

- (instancetype)initWithViewController:(UIViewController *)viewController {
    if (self = [super init]) {
        if (!viewController) @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"GBRootWrappingViewController must be initialized with a valid viewController." userInfo:nil];
        
        // set the vc directly, bypassing the "didSet handler"
        _viewController = viewController;
        
        // set our default background color
        self.backgroundColor = [UIColor blackColor];
    }
    
    return self;
}

#pragma mark - Life

- (void)viewDidLoad {
    [super viewDidLoad];

    // during init, we only recorded the vc, now we have to draw it on first load of our view
    [self _updateChildVC];
}

#pragma mark - Private

/**
 Adds the child viewController to the view hierarchy, sets its constraints and potentially removes any potential existing ones.
 */
- (void)_updateChildVC {
    // first remove the existing one if we have one
    if (self.viewController) [self __removeChildViewController:self.viewController];
    
    // now add the new one
    [self __addChildViewController:self.viewController];
    
    // now add the constraints to the new vc's view
    UIView *childView = self.viewController.view;
    childView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[childView]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(childView)]];// full width
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(topOffset)-[childView]|" options:0 metrics:@{@"topOffset": @(kTopOffset)} views:NSDictionaryOfVariableBindings(childView)]];// full height with offset at the top
}

- (void)__removeChildViewController:(UIViewController *)childViewController {
    [childViewController willMoveToParentViewController:nil];
    [childViewController.view removeFromSuperview];
    [childViewController removeFromParentViewController];
}

- (void)__addChildViewController:(UIViewController *)childViewController {
    [self addChildViewController:childViewController];
    [self.view addSubview:childViewController.view];
    [childViewController didMoveToParentViewController:self];
}

@end
