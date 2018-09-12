/* @flow */

import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { requireNativeComponent, StyleSheet } from 'react-native'

import type { Event } from 'react-native'

type Props = {
  onTextDidChange: Function,
  onBeginEditing?: Function,
  onEndEditing?: Function,
  onPressBookmarkButton?: Function,
  onPressCancelButton?: Function,
  onPressSearchButton?: Function,
  onPressResultsListButton?: Function,

  placeholder?: string,
  prompt?: string,
  text?: string,
  barStyle?: 'default' | 'black',
  barTintColor?: string,
  searchBarStyle?: 'default' | 'minimal' | 'prominent',
  tintColor?: string,
  translucent?: boolean,

  showsBookmarkButton?: boolean,
  showsCancelButton?: boolean,
  showsSearchResultsButton?: boolean,
  searchResultsButtonSelected?: boolean,

  style?: number | Object
}
type State = void

class IOSSearchBarView extends Component<Props, State> {
  static propTypes = {
    onTextDidChange: PropTypes.func.isRequired,
    onBeginEditing: PropTypes.func,
    onEndEditing: PropTypes.func,
    onPressBookmarkButton: PropTypes.func,
    onPressCancelButton: PropTypes.func,
    onPressSearchButton: PropTypes.func,
    onPressResultsListButton: PropTypes.func,

    placeholder: PropTypes.string,
    prompt: PropTypes.string,
    text: PropTypes.string,
    barStyle: PropTypes.oneOf(['default', 'black']),
    barTintColor: PropTypes.string,
    searchBarStyle: PropTypes.oneOf(['default', 'minimal', 'prominent']),
    tintColor: PropTypes.string,
    translucent: PropTypes.bool,

    showsBookmarkButton: PropTypes.bool,
    showsCancelButton: PropTypes.bool,
    showsSearchResultsButton: PropTypes.bool,
    searchResultsButtonSelected: PropTypes.bool
  }

  _onChangeTextInput = (event: Event) => {
    const text: string = !event ? '' : event.nativeEvent.text
    this.props.onTextDidChange(text)
  }

  render() {
    return (
      <IOSSearchBar
        {...this.props}
        onTextDidChange={this._onChangeTextInput}
        style={[styles.main, this.props.style]}
      />
    )
  }
}

const styles = StyleSheet.create({
  main: {
    width: '100%',
    minHeight: 51
  }
})

const IOSSearchBar = requireNativeComponent(
  'RNIKReactNativeIosSearchBar',
  IOSSearchBarView
)

export default IOSSearchBarView
