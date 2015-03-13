//
//  HorizontalScroller.h
//  BlueLibrary
//
//  Created by Mohit Sadhu on 3/13/15.
//  Copyright (c) 2015 Eli Ganem. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HorizontalScroller;

@protocol HorizontalScrollerDelegate <NSObject>
- (NSInteger)numberOfViewsForhorizontaScroller:(HorizontalScroller *)scroller;
- (UIView *)horizontalScroller:(HorizontalScroller *)scroller viewAtIndex:(int)index;
- (void)horizontalScroller:(HorizontalScroller *)scroller clickedViewAtIndex:(int)index;

@optional
- (NSInteger)initialViewIndexForHorizontalScroller:(HorizontalScroller *)scroller;
@end

@interface HorizontalScroller : UIView

@property (weak, nonatomic) id<HorizontalScrollerDelegate>delegate;

- (void)reload;

@end

