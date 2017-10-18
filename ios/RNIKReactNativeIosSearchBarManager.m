//
//  RNIKReactNativeIosSearchBarManager.m
//  RNIKReactNativeIosSearchBar
//
//  Created by Alvaro Medina Ballester on 17/10/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "RNIKReactNativeIosSearchBar.h"
#import "RNIKReactNativeIosSearchBarManager.h"

// import RCTBridge
#if __has_include(<React/RCTBridge.h>)
#import <React/RCTBridge.h>
#elif __has_include(“RCTBridge.h”)
#import “RCTBridge.h”
#else
#import “React/RCTBridge.h” // Required when used as a Pod in a Swift project
#endif

@implementation RCTConvert(UISearchBar)

RCT_ENUM_CONVERTER(UISearchBarStyle, (
                                      @{@"default": @(UISearchBarStyleDefault),
                                        @"minimal": @(UISearchBarStyleMinimal),
                                        @"prominent": @(UISearchBarStyleProminent),
                                        }), UISearchBarStyleDefault, integerValue)

@end

@implementation RNIKReactNativeIosSearchBarManager

@synthesize bridge = _bridge;

// Export a native module
// https://facebook.github.io/react-native/docs/native-modules-ios.html
RCT_EXPORT_MODULE();

// Return the native view that represents your React component
- (UIView *)view
{
    RNIKReactNativeIosSearchBar *bar = [RNIKReactNativeIosSearchBar new];
    bar.delegate = self;
    return bar;
}

// Delegate Events
RCT_EXPORT_VIEW_PROPERTY(onTextDidChange, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onPressBookmarkButton, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onPressCancelButton, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onPressSearchButton, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onPressResultsListButton, RCTBubblingEventBlock)

// Text Content
RCT_EXPORT_VIEW_PROPERTY(placeholder, NSString)
RCT_EXPORT_VIEW_PROPERTY(prompt, NSString)
RCT_EXPORT_VIEW_PROPERTY(text, NSString)

// Display Attributes
RCT_EXPORT_VIEW_PROPERTY(barStyle, UIBarStyle)
RCT_EXPORT_VIEW_PROPERTY(barTintColor, UIColor)
RCT_EXPORT_VIEW_PROPERTY(searchBarStyle, UISearchBarStyle)
RCT_EXPORT_VIEW_PROPERTY(tintColor, UIColor)
RCT_EXPORT_VIEW_PROPERTY(translucent, BOOL)

// Button Configuration
RCT_EXPORT_VIEW_PROPERTY(showsBookmarkButton, BOOL)
RCT_EXPORT_VIEW_PROPERTY(showsCancelButton, BOOL)
RCT_EXPORT_VIEW_PROPERTY(showsSearchResultsButton, BOOL)
RCT_EXPORT_VIEW_PROPERTY(searchResultsButtonSelected, BOOL)

#pragma mark - UISearchBarDelegate

- (void)searchBar:(RNIKReactNativeIosSearchBar *)searchBar textDidChange:(NSString *)searchText
{
    searchBar.onTextDidChange(@{@"text": searchText});
}

- (void)searchBarTextDidBeginEditing:(RNIKReactNativeIosSearchBar *)searchBar
{
    searchBar.showsCancelButton = true;
    if (searchBar.onBeginEditing) {
        searchBar.onBeginEditing(@{});
    }
}

- (void)searchBarTextDidEndEditing:(RNIKReactNativeIosSearchBar *)searchBar
{
    searchBar.showsCancelButton = false;
    if (searchBar.onEndEditing) {
        searchBar.onEndEditing(@{});
    }
}

- (void)searchBarBookmarkButtonClicked:(RNIKReactNativeIosSearchBar *)searchBar
{
    if (searchBar.onPressBookmarkButton) {
        searchBar.onPressBookmarkButton(@{});
    }
}

- (void)searchBarCancelButtonClicked:(RNIKReactNativeIosSearchBar *)searchBar
{
    [searchBar endEditing:YES];
    if (searchBar.onPressCancelButton) {
        searchBar.onPressCancelButton(@{});
    }
}

- (void)searchBarSearchButtonClicked:(RNIKReactNativeIosSearchBar *)searchBar
{
    [searchBar endEditing:YES];
    if (searchBar.onPressSearchButton) {
        searchBar.onPressSearchButton(@{});
    }
}

- (void)searchBarResultsListButtonClicked:(RNIKReactNativeIosSearchBar *)searchBar
{
    if (searchBar.onPressResultsListButton) {
        searchBar.onPressResultsListButton(@{});
    }
}

@end
