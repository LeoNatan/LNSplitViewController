//
//  LNSplitViewController.m
//  LNSplitViewController
//
//  Created by Leo Natan on 23/8/12.
//  Copyright (c) 2012 Leo Natan. All rights reserved.
//

#import "LNSplitViewController.h"

static void* __ContainerLNSplitViewControllerKey;

@interface LNSplitViewController ()
{
	__strong UISplitViewController* _internalSplitViewController;
}

@end

@implementation LNSplitViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _internalSplitViewController = [[UISplitViewController alloc] init];
		
		objc_setAssociatedObject(_internalSplitViewController, &__ContainerLNSplitViewControllerKey, self, OBJC_ASSOCIATION_ASSIGN);
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	[_internalSplitViewController.view setFrame:self.view.frame];
	[self addChildViewController:_internalSplitViewController];
	[self.view addSubview:_internalSplitViewController.view];
	[_internalSplitViewController didMoveToParentViewController:self];
}

#pragma mark - Properties

- (NSArray*)viewControllers
{
	return _internalSplitViewController.viewControllers;
}

- (void)setViewControllers:(NSArray *)viewControllers
{
	[_internalSplitViewController setViewControllers:viewControllers];
}

- (id<UISplitViewControllerDelegate>)delegate
{
	return _internalSplitViewController.delegate;
}

- (void)setDelegate:(id<UISplitViewControllerDelegate>)delegate
{
	[_internalSplitViewController setDelegate:delegate];
}

- (BOOL)presentsWithGesture
{
	return _internalSplitViewController.presentsWithGesture;
}

- (void)setPresentsWithGesture:(BOOL)presentsWithGesture
{
	[_internalSplitViewController setPresentsWithGesture:presentsWithGesture];
}

- (UISplitViewController *)internalSplitViewController
{
	return _internalSplitViewController;
}

@end

#pragma mark - LNSplitViewControllerAdditions

@implementation UISplitViewController (LNSplitViewControllerAdditions)

- (LNSplitViewController *)containingLNSplitViewController
{
	return objc_getAssociatedObject(self, &__ContainerLNSplitViewControllerKey);
}

@end
