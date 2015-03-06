//
//  Album.m
//  BlueLibrary
//
//  Created by Mohit Sadhu on 3/6/15.
//  Copyright (c) 2015 Eli Ganem. All rights reserved.
//

#import "Album.h"

@implementation Album

- (id)initWithTitle:(NSString *)title artist:(NSString *)artist coverURL:(NSString *)coverURL year:(NSString *)year
{
    self = [super self];
    if(self)
    {
        _title = title;
        _artist = artist;
        _coverURL = coverURL;
        _year = year;
        _genre = @"Pop";
    }
    
    return self;
}

@end
