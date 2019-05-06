//
//  DWBaseHandler.m
//  DWVideoPlay
//
//  Created by 丁巍 on 2019/3/11.
//  Copyright © 2019 丁巍. All rights reserved.
//

#import "DWBaseHandler.h"

@implementation DWBaseHandler

- (instancetype)initWithController:(id __nullable)controller adapter:(id __nullable)adapter{
    self = [super init];
    if (self) {
        if (controller) {
            self.controler = controller;
        }
        if (adapter) {
            self.adapter   = adapter;
        }
    }
    return self;
}

/** 初始化handler --- adapter专用*/
- (instancetype)initWithAdapter:(id __nullable)adapter{
    return [self initWithController:nil adapter:adapter];
}

#pragma mark - punlic method

/** 删除绑定在该 handler上的 observer */
- (void)removeObservers{}

@end
