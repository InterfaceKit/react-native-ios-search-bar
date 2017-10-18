//
//  RNIKReactNativeIosSearchBar.h
//  RNIKReactNativeIosSearchBar
//
//  Created by Alvaro Medina Ballester on 18/09/2017.
//  Copyright © 2017 APSL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <React/RCTComponent.h>

@interface RNIKReactNativeIosSearchBar : UISearchBar

@property (nonatomic, copy) RCTBubblingEventBlock onTextDidChange;
@property (nonatomic, copy) RCTBubblingEventBlock onEndEditing;
@property (nonatomic, copy) RCTBubblingEventBlock onBeginEditing;
@property (nonatomic, copy) RCTBubblingEventBlock onPressBookmarkButton;
@property (nonatomic, copy) RCTBubblingEventBlock onPressCancelButton;
@property (nonatomic, copy) RCTBubblingEventBlock onPressSearchButton;
@property (nonatomic, copy) RCTBubblingEventBlock onPressResultsListButton;

@end
