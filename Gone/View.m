//
//  View.m
//  Gone
//
//  Created by Lisa Jenkins on 11/23/12.
//  Copyright (c) 2012 Lisa Jenkins. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor blueColor];
        NSString *text = @"GONE  WITH  THE  WIND";
        CGRect b = self.bounds;
        UIFont *font = [UIFont italicSystemFontOfSize:b.size.height];
        CGSize size = [text sizeWithFont:font];
        
        CGRect f = CGRectMake(b.size.width, 0, size.width, size.height);
        
        label = [[UILabel alloc] initWithFrame:f];
        label.font = font;
        label.backgroundColor = [UIColor clearColor];
        label.textColor = [UIColor whiteColor];
        label.text = text;
        [self addSubview:label];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    [UIView animateWithDuration:25
                          delay: 23.75
                        options: UIViewAnimationOptionCurveLinear
                     animations:^{
                         label.center = CGPointMake(-label.bounds.size.width/2, self.bounds.size.height/2);
                     } completion:NULL
     ];
    
}


@end
