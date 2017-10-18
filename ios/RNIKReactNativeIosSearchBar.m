//
//  RNIKReactNativeIosSearchBar.m
//  RNIKReactNativeIosSearchBar
//
//  Created by Alvaro Medina Ballester on 18/09/2017.
//  Copyright © 2017 APSL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RNIKReactNativeIosSearchBar.h"

#if __has_include(<React/RCTEventDispatcher.h>)
#import <React/RCTEventDispatcher.h>
#elif __has_include(“RCTEventDispatcher.h”)
#import “RCTEventDispatcher.h”
#else
#import “React/RCTEventDispatcher.h” // Required when used as a Pod in a Swift project
#endif

@implementation RNIKReactNativeIosSearchBar : UISearchBar

@end
