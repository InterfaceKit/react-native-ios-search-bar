
# react-native-ios-search-bar

<p>
<img src="https://img.shields.io/npm/dm/react-native-ios-search-bar.svg" />
<img src="https://img.shields.io/npm/dt/react-native-ios-search-bar.svg" />
</p>

Native UISearchBar component for React Native.

<p align="center">
<img src="https://raw.githubusercontent.com/wiki/InterfaceKit/react-native-ios-search-bar/scr.png" alt="Search bar" width="400">
</p>

## Getting started

`$ yarn add react-native-ios-search-bar`

### Mostly automatic installation

`$ react-native link react-native-ios-search-bar`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-ios-search-bar` and add `RNIKReactNativeIosSearchBar.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNIKReactNativeIosSearchBar.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<


## Usage
```javascript
import IOSSearchBarView from 'react-native-ios-search-bar';

class Search extends React.Component {
  _onTextDidChange = (text: string) => {
    console.log(text)
  }

  render() {
    return (
      <IOSSearchBarView
        onTextDidChange={this._onTextDidChange}
      />
    )
  }
}
```

## License

MIT

## Author

Álvaro Medina Ballester `<amedina at apsl.net>`

Built with 💛 by [APSL](https://github.com/apsl).
