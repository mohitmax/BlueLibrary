//
//  PersistencyManager.m
//  BlueLibrary
//
//  Created by Mohit Sadhu on 3/6/15.
//  Copyright (c) 2015 Eli Ganem. All rights reserved.
//

#import "PersistencyManager.h"
#import "Album.h"

@interface PersistencyManager()
{
    NSMutableArray *albums;
}

@end

@implementation PersistencyManager

- (id)init
{
    self = [super init];
    if (self)
    {
        albums = [NSMutableArray arrayWithArray:
                  @[
                    [self initiateDummyAlbumsWithTitle:@"Best of Bowie" artist:@"David Bowie" coverURL:@"http://www.coversproject.com/static/thumbs/album/album_david%20bowie_best%20of%20bowie.png" year:@"1992"],
                    [self initiateDummyAlbumsWithTitle:@"It's My Life" artist:@"No Doubt" coverURL:@"http://www.coversproject.com/static/thumbs/album/album_no%20doubt_its%20my%20life%20%20bathwater.png" year:@"2003"],
                    [self initiateDummyAlbumsWithTitle:@"Nothing Like The Sun" artist:@"Sting" coverURL:@"http://www.coversproject.com/static/thumbs/album/album_sting_nothing%20like%20the%20sun.png" year:@"1999"],
                    [self initiateDummyAlbumsWithTitle:@"Staring at the Sun" artist:@"U2" coverURL:@"http://www.coversproject.com/static/thumbs/album/album_u2_staring%20at%20the%20sun.png" year:@"2000"],
                    [self initiateDummyAlbumsWithTitle:@"American Pie" artist:@"Madonna" coverURL:@"http://www.coversproject.com/static/thumbs/album/album_madonna_american%20pie.png" year:@"2000"]
                    ]];
//                    [[Album alloc] initWithTitle:@"Best of Bowie" artist:@"David Bowie" coverUrl:@"http://www.coversproject.com/static/thumbs/album/album_david%20bowie_best%20of%20bowie.png" year:@"1992"],
//                    [[Album alloc] initWithTitle:@"It's My Life" artist:@"No Doubt" coverUrl:@"http://www.coversproject.com/static/thumbs/album/album_no%20doubt_its%20my%20life%20%20bathwater.png" year:@"2003"],
//                    [[Album alloc] initWithTitle:@"Nothing Like The Sun" artist:@"Sting" coverUrl:@"http://www.coversproject.com/static/thumbs/album/album_sting_nothing%20like%20the%20sun.png" year:@"1999"],
//                    [[Album alloc] initWithTitle:@"Staring at the Sun" artist:@"U2" coverUrl:@"http://www.coversproject.com/static/thumbs/album/album_u2_staring%20at%20the%20sun.png" year:@"2000"],
//                    [[Album alloc] initWithTitle:@"American Pie" artist:@"Madonna" coverUrl:@"http://www.coversproject.com/static/thumbs/album/album_madonna_american%20pie.png" year:@"2000"]
                    
    }
    return self;
}

- (Album *)initiateDummyAlbumsWithTitle:(NSString *)title artist:(NSString *)artist coverURL:(NSString *)coverURL year:(NSString *)year
{
    Album *dummyAlbum;
    dummyAlbum = [[Album alloc]initWithTitle:title artist:artist coverURL:coverURL year:year];
    return dummyAlbum;

}

- (NSArray *)getAlbums
{
    return albums;
}

- (void)addAlbum:(Album *)album atIndex:(int)index
{
    if (albums.count >= index)
    {
        [albums insertObject:album atIndex:index];
    }
    else
        [albums addObject:album];
}

- (void)deleteAlbumAtIndex:(int)index
{
    [albums removeObjectAtIndex:index];
}

@end
