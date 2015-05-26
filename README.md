# GBRootWrappingViewController ![Version](https://img.shields.io/cocoapods/v/GBRootWrappingViewController.svg?style=flat)&nbsp;![License](https://img.shields.io/badge/license-Apache_2-green.svg?style=flat)

Root view controller wrapper for quickly adding iOS7+ compatiblity to older UIs.

Usage
------------

Somewhere inside your `application:didFinishLaunching:withOptions:`...

```objective-c
// old code, which resulted in view controller that has now slid up 20px under the status bar
// self.window.rootViewController = self.tabBarViewController;

// new code which restores the pre iOS7 behaviour:
self.window.rootViewController = [[GBRootWrappingViewController alloc] initWithViewController:self.tabBarViewController];
```

Don't forget to import header:

```objective-c
#import <GBRootWrappingViewController/GBRootWrappingViewController.h>
```

Installation
------------

Use CocoaPods, add this to your project's Podfile and run `pod install`:

```
pod 'GBRootWrappingViewController'
```

Copyright & License
------------

Copyright 2015 Goonbee

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this work except in compliance with the License. You may obtain a copy of the License in the LICENSE file, or at:

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
