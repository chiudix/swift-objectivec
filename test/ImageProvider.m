//
//  ImageProvider.m
//  test
//
//  Created by Kevin Meaney on 17/10/2014.
//  Copyright (c) 2014 Kevin Meaney. All rights reserved.
//

#import "ImageProvider.h"

@implementation ImageProvider

@synthesize createImage;
@synthesize optionalCreateImage;

-(NSInteger)imageWidth
{
    if (self.createImage)
    {
        CGImageRef myImage = self.createImage(
            @{ @"imagefilepath" : @"/Users/ktam/Pictures/julieanneInNZ.jpg" });
        if (myImage)
            return CGImageGetWidth(myImage);
    }
    return -1;
}

-(NSInteger)imageWidthOptional
{
    if (self.optionalCreateImage)
    {
        CGImageRef myImage = self.optionalCreateImage(
            @{ @"imagefilepath" : @"/Users/ktam/Pictures/julieanneInNZ.jpg" });
        if (myImage)
            return CGImageGetWidth(myImage);
    }
    return -1;
}

@end

id<CreateImageProtocol>MakeImageProvider()
{
    ImageProvider *imageProvider = [[ImageProvider alloc] init];
/*
    imageProvider.optionalCreateImage = ^CGImageRef(NSDictionary *dict){
        CGImageRef theImage;
        NSString *filePath = dict[@"imagefilepath"];
        NSURL *jpegURL = [[NSURL alloc] initFileURLWithPath:filePath];
        CGImageSourceRef imageSource = CGImageSourceCreateWithURL(
                                                (__bridge CFURLRef)jpegURL, nil);
        theImage = CGImageSourceCreateImageAtIndex(imageSource, 0, nil);
        return theImage;
    };
 */
    return imageProvider;
}
