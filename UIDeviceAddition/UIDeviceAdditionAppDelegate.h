//
//  UIDeviceAdditionAppDelegate.h
//  UIDeviceAddition
//
//  Created by Georg Kitz on 20.08.11.
//  Copyright 2011 Aurora Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UIDeviceAdditionViewController;

@interface UIDeviceAdditionAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UIDeviceAdditionViewController *viewController;

@end
