//
//  main.m
//  test
//
//  Created by Kevin Meaney on 17/10/2014.
//  Copyright (c) 2014 Kevin Meaney. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "test-Swift.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // NSInteger theWidth1 = getImageWidth(); // doesn't work.
        // printf("Image width1: %ld\n", theWidth1);
        NSInteger theWidth2 = ClassMethodWrapper.getImageWidth;
        printf("Image width2: %ld\n", theWidth2); // returns image width.
        NSInteger theWidth3 = ClassMethodWrapper.getImageWidth2;
        printf("Image width3: %ld\n", theWidth3); // return image width.
        NSInteger optionalWidth = ClassMethodWrapper.getImageWidthOptional;
        printf("Image width optional: %ld\n", optionalWidth); // return image width.
    }
    return 0;
}
