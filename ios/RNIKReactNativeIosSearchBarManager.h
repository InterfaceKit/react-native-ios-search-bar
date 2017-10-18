//
//  RNIKReactNativeIosSearchBarManager.h
//  RNIKReactNativeIosSearchBar
//
//  Created by Alvaro Medina Ballester on 17/10/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

#ifndef RNIKReactNativeIosSearchBarManager_h
#define RNIKReactNativeIosSearchBarManager_h

#if __has_include(<React/RCTViewManager.h>)
#import <React/RCTViewManager.h>
#elif __has_include(“RCTViewManager.h”)
#import “RCTViewManager.h”
#else
#import “React/RCTViewManager.h” // Required when used as a Pod in a Swift project
#endif

@interface RNIKReactNativeIosSearchBarManager : RCTViewManager<UISearchBarDelegate>

@end

#endif /* RNIKReactNativeIosSearchBarManager_h */
