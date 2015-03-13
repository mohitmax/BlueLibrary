//
//  HorizontalScroller.m
//  BlueLibrary
//
//  Created by Mohit Sadhu on 3/13/15.
//  Copyright (c) 2015 Eli Ganem. All rights reserved.
//

#import "HorizontalScroller.h"

#define VIEW_PADDING 10
#define VIEW_DIMENSIONS 100
#define VIEWS_OFFSET 100;

@interface HorizontalScroller() <UIScrollViewDelegate>

@end

@implementation HorizontalScroller
{
    UIScrollView *scroller;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        scroller = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        scroller.delegate = self;
        [self addSubview:scroller];
        
        UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scrollerTapped:)];
        [scroller addGestureRecognizer:tapRecognizer];
    }
    
    return self;
}

- (void)scrollerTapped:(UITapGestureRecognizer *)gesture
{
    CGPoint location = [gesture locationInView:gesture.view];
    
    for (int i = 0; i < [self.delegate numberOfViewsForhorizontaScroller:self]; i++)
    {
        UIView *view = scroller.subviews[i];
        if (CGRectContainsPoint(view.frame, location))
        {
            [self.delegate horizontalScroller:self clickedViewAtIndex:i];
            [scroller setContentOffset:CGPointMake(view.frame.origin.x - self.frame.size.width/2 +view.frame.size.width/2, 0) animated:YES];
            break;
        }
    }
}

@end
