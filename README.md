
|Desktop View| Mobile View |
|--|--|
| ![desktop view](https://github.com/SirusCodes/mobile_web_view/blob/master/screenshots/desktop_view.png?raw=true) | ![mobile view](https://github.com/SirusCodes/mobile_web_view/blob/master/screenshots/mobile_view.png?raw=true) |


# Mobile web view
![](https://img.shields.io/github/license/SirusCodes/mobile_web_view) ![](https://img.shields.io/pub/v/mobile_web_view)

Wanted to show your awesome mobile app to other without letting them into the hassle of installing it? Thanks to flutter web (currently in beta) we have covered you. 

## Installation
**Make sure that you are on beta and web is enabled if not then, [here](https://flutter.dev/docs/get-started/web)**

Add in your pubspec.yaml

	dependencies:
	 mobile_web_view: ^0.1

Then import it in your main

	import 'package: mobile_web_view/mobile_web_view.dart';

Warp MobileWebView to your initial route

 

    home: MobileWebView(
            statusBarIconColor: Colors.white,
            content: Text("MobileWebView")
            child: MyHomePage(title: 'Flutter Demo Home Page'),
          ),

|Prams| Description |
|--|--|
| statusBarIconColor | As it says it defines the color of status bar icons and clock in desktop view (defaut is black)   |
| content | It is to define which widgets to show on the right side of the screen in desktop view (default is SizedBox.expand() ) |

## Want to contribute?
A help is always welcomed, check our [CONTRIBUTING.md](https://github.com/SirusCodes/mobile_web_view/blob/master/CONTRIBUTING.md) and don't forget to add yourself to [CONTRIBUTORS.md](https://github.com/SirusCodes/mobile_web_view/blob/master/CONTRIBUTORS.md) 
