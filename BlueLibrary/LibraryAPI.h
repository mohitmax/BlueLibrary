//
//  LibraryAPI.h
//  BlueLibrary
//
//  Created by Mohit Sadhu on 3/6/15.
//  Copyright (c) 2015 Eli Ganem. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Album.h"

@interface LibraryAPI : NSObject

+ (LibraryAPI *)sharedInstance;
- (NSArray *)getAlbums;
- (void)addAlbum:(Album *)album atIndex:(int)index;
- (void)deleteAlbumAtIndex:(int)index;

@end
