//
//  ImageProvider2.m
//  test
//
//  Created by Kevin Meaney on 17/10/2014.
//  Copyright (c) 2014 Kevin Meaney. All rights reserved.
//

#import "ImageProvider2.h"

@implementation ImageProvider2

@synthesize createImage;

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

@end
