
# react-native-react-native-ios-search-bar

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
