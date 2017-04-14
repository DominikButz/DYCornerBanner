# DYCornerBanner

[![CI Status](http://img.shields.io/travis/dominikbutz/DYCornerBanner.svg?style=flat)](https://travis-ci.org/dominikbutz/DYCornerBanner)
[![Version](https://img.shields.io/cocoapods/v/DYCornerBanner.svg?style=flat)](http://cocoapods.org/pods/DYCornerBanner)
[![License](https://img.shields.io/cocoapods/l/DYCornerBanner.svg?style=flat)](http://cocoapods.org/pods/DYCornerBanner)
[![Platform](https://img.shields.io/cocoapods/p/DYCornerBanner.svg?style=flat)](http://cocoapods.org/pods/DYCornerBanner)


DYCornerBanner written in **Swift 3** allows you to quickly create corner labels on top of any kind of rectangular view, e.g. UIImageView. The rotation angle of the corner label is determined by the width and height of the banner view.  

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Features

* set the corner position to bottom right, top right, top left or bottom left.
* supports banners in any rotation angle and distance from the corner - the rotation angle and the distance from the corner are determined by the size and height-width proportion of the DYCornerBanner view's frame. 
* override the default setting for the banner label width. 
* override the default setting for the banner text font.

## Installation

DYCornerBanner is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'DYCornerBanner'
```

Make sure to import DYCornerBanner into your View Controller subclass:

```Swift
import DYCornerBanner
```

## Usage

See the following examples.

![DYCornerBanner examples](CYCornerBanner/gitResources/cornerBannerExamples.png "Corner banner examples")

### Code example: Creating a DYCornerBanner from Interface Builder

```Swift
 @IBOutlet weak var cornerBannerBottomLeft: DYCornerBanner!  // simply drop a UIView into the VC from interface builder in storyboard  and set the UIView class to DYCornerBanner
 

 override func viewDidLoad() {
   super.viewDidLoad()
   
   self.cornerBannerBottomLeft.setup(text: "Sunshine Guaranteed!", textColor: 	UIColor.black, bannerColor: UIColor.yellow, position: .bottomLeft)
   
 }

```

### Code example: Creating a DYCornerBanner in code

Alternatively, you can create a corner banner instance in code like so: 
```Swift
   let frame = CGRect(x: self.imageView.frame.size.width -  90, y: 0, width: 90, height: 90)
   let bannerInCode = DYCornerBanner(frame: frame)
   bannerInCode.setup(text: "Free Cocktails!", textColor: UIColor.red, bannerColor: UIColor.white.withAlphaComponent(0.6), position: .topRight)
  self.imageView.addSubview(bannerInCode)
```


### Customising
You can override the settings for bannerWidth and textFont as shown below. Make sure to set these properties **before calling setup**, otherwise the defaults will be set instead. 

```Swift

  self.cornerBannerTopLeft.textFont = UIFont(name: "ChalkboardSE-Bold" , size: 15.0)!
  self.cornerBannerTopLeft.bannerWidth = 17.0
self.cornerBannerTopLeft.setup(text: "Just Added!", textColor: UIColor.white, bannerColor: UIColor.grassGreen(), position: .topLeft)

```


## Author

dominikbutz, dominikbutz@gmail.com

## License

DYCornerBanner is available under the MIT license. See the LICENSE file for more info.


