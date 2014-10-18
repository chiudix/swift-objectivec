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
        NSInteger theWidth = ClassMethodWrapper.getImageWidth;
        printf("Image width: %ld\n", theWidth);
        NSInteger theWidth2 = ClassMethodWrapper.getImageWidth2;
        printf("Image width2: %ld\n", theWidth2);
    }
    return 0;
}
