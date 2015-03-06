//
//  Album.h
//  BlueLibrary
//
//  Created by Mohit Sadhu on 3/6/15.
//  Copyright (c) 2015 Eli Ganem. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Album : NSObject

@property (nonatomic, readonly, copy) NSString *title, *artist, *genre, *coverURL, *year;

- (id)initWithTitle:(NSString *)title artist:(NSString *)artist coverURL:(NSString *)coverURL year:(NSString *)year;

@end
