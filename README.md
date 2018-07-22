# JTSWebViewBridge

[![CI Status](https://img.shields.io/travis/jtans/JTSWebViewBridge.svg?style=flat)](https://travis-ci.org/jtans/JTSWebViewBridge)
[![Version](https://img.shields.io/cocoapods/v/JTSWebViewBridge.svg?style=flat)](https://cocoapods.org/pods/JTSWebViewBridge)
[![License](https://img.shields.io/cocoapods/l/JTSWebViewBridge.svg?style=flat)](https://cocoapods.org/pods/JTSWebViewBridge)
[![Platform](https://img.shields.io/cocoapods/p/JTSWebViewBridge.svg?style=flat)](https://cocoapods.org/pods/JTSWebViewBridge)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

JTSWebViewBridge is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'JTSWebViewBridge'
```

## How to use
1. See `Example`Project. Make class  ShowMessageHandler(named what you like) implement  `JTSWebViewJSHandler` 
```objc

#import <JTSWebViewBridge/JTSWebViewJSHandler.h>
@interface ShowMessageHandler : JTSWebViewJSHandler

- (void)testObjcCallback:(JTSWebViewJSHandlerParameter *)param;

- (void)showMsg:(JTSWebViewJSHandlerParameter *)param;

@end
```

2. add a plist to your project named `wvbridge.plist`
``` xml
<plist version="1.0">
<dict>
<key>ShowMessageHandler</key>
<array>
<string>testObjcCallback</string>
<string>showMsg</string>
</array>
</dict>
</plist>
```

## Author

jtans, jtans

## License

JTSWebViewBridge is available under the MIT license. See the LICENSE file for more info.
