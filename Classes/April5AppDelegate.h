//
//  April5AppDelegate.h
//  April5
//
//  Created by Georges Labrèche on 3/30/12.
//  Copyright 2012 New York Magazine. All rights reserved.
//

#import <UIKit/UIKit.h>

@class April5ViewController;
@class FlagView;

@interface April5AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	FlagView *flagView;
    April5ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet FlagView *flagView;
@property (nonatomic, retain) IBOutlet April5ViewController *viewController;

@end

