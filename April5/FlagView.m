//
//  FlagView.m
//  April5
//
//  Created by Georges Labreche on 4/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FlagView.h"

@implementation FlagView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    [self logInfo];
    [self drawText];
    [self drawCenteredCircle];
    
}

-(void)logInfo{
	NSLog(@"self.frame == (%g, %g), %g × %g",
		  self.frame.origin.x,
		  self.frame.origin.y,
		  self.frame.size.width,
		  self.frame.size.height
		  );
    
	NSLog(@"self.bounds == (%g, %g), %g × %g",
		  self.bounds.origin.x,
		  self.bounds.origin.y,
		  self.bounds.size.width,
		  self.bounds.size.height
		  );    
}

-(void)drawCenteredCircle{
    // Drawing code
    CGRect bounds = self.bounds;
    CGFloat radius = .3 * bounds.size.width;	//in pixels
    
    /*
     Create the invisible square that will surround the circle.
     The origin is the center of the view.
     */
    CGRect r = CGRectMake(
						  -radius,
						  -radius,
						  2 * radius,
						  2 * radius
						  );
    
	CGContextRef c = UIGraphicsGetCurrentContext();
    
	// Create transformation and apply it on the circle
	// Must be done before we draw the circle
	CGAffineTransform translate = CGAffineTransformMakeTranslation(bounds.size.width / 2, bounds.size.height / 2);
	CGContextConcatCTM(c, translate);
    
    
    CGContextBeginPath(c); //unnecessary here: the path is already empty.
    CGContextAddEllipseInRect(c, r);
    CGContextSetRGBFillColor(c, 1.0, 0.0, 0.0, 1.0);	//red, opaque
    CGContextFillPath(c);   
}

-(void)drawText{
    NSString *message = NSLocalizedString(@"Greeting", @"displayed with drawText:");
    UIFont *font = [UIFont systemFontOfSize: 25.0];

    [message drawAtPoint: CGPointZero withFont: font]; 
}

@end
