//
//  LNSplitViewController.h
//  LNSplitViewController
//
//  Created by Leo Natan on 23/8/12.
//  Copyright (c) 2012 Leo Natan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LNSplitViewController : UIViewController

@property (nonatomic, copy) NSArray *viewControllers;
@property (nonatomic, assign) id <UISplitViewControllerDelegate> delegate;

// If 'YES', hidden view can be presented and dismissed via a swipe gesture. Defaults to 'YES'.
// Set prior to setting delegate. The swipe gesture is only possible if the delegate implements -splitViewController:willHideViewController:withBarButtonItem:forPopoverController:.
@property (nonatomic) BOOL presentsWithGesture NS_AVAILABLE_IOS(5_1);

@property (nonatomic, readonly) UISplitViewController* internalSplitViewController;

@end

@interface UISplitViewController (LNSplitViewControllerAdditions)

@property (nonatomic, readonly) LNSplitViewController* containingLNSplitViewController;

@end