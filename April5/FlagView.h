//
//  FlagView.h
//  April5
//
//  Created by Georges Labreche on 4/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FlagView : UIView

// Logs bounds info
- (void) logInfo;

// Draws a circle in the middle of the screen
- (void) drawCenteredCircle;

// Draw text on the screen
- (void) drawText;

@end
