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
        
        NSString *intro = @"David O. Selznick\nPresents";
        UIFont *font2 = [UIFont systemFontOfSize:32];
        CGSize size2 = [intro sizeWithFont:font2];
        textView = [[UITextView alloc] initWithFrame:CGRectMake(b.origin.x, (b.size.height - size2.height)/2, b.size.width, size2.height*2)];
        textView.text = intro;
        textView.font = font2;
        textView.textAlignment = NSTextAlignmentCenter;
        textView.backgroundColor = [UIColor clearColor];
        textView.textColor = [UIColor whiteColor];
        textView.alpha = 0;
        [self addSubview:textView];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    [UIView animateWithDuration:7.5
                          delay: 0
     options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         textView.alpha = 1;
                     }completion: ^(BOOL b) {
                         [UIView animateWithDuration:7.5
                                               delay: 0
                                             options:UIViewAnimationOptionCurveLinear
                                          animations:^{
                                              textView.alpha = 0;
                                          }completion:^(BOOL b){
                                              [UIView animateWithDuration:25
                                            delay: 10.75
                                            options: UIViewAnimationOptionCurveLinear
                                            animations:^{
                                              label.center = CGPointMake(-label.bounds.size.width/2, self.bounds.size.height/2);
                                                               } completion:NULL
                                               ];
                                          }
                          ];
                     }
     ];
}
@end
