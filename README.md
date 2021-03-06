![ConfettiKit](https://user-images.githubusercontent.com/56252259/125235649-69d4f000-e300-11eb-903c-43b07d7b7f9e.png)

# ConfettiKit๐

[![CI Status](https://img.shields.io/travis/gokulnair2001/ConfettiKit.svg?style=flat)](https://travis-ci.org/gokulnair2001/ConfettiKit)
[![Version](https://img.shields.io/cocoapods/v/ConfettiKit.svg?style=flat)](https://cocoapods.org/pods/ConfettiKit)
![Badges](https://img.shields.io/badge/License-MIT-yellow) 
[![Platform](https://img.shields.io/cocoapods/p/ConfettiKit.svg?style=flat)](https://cocoapods.org/pods/ConfettiKit)
[![Relative date](https://img.shields.io/date/1577392258?color=important&label=started&logo=github)](https://github.com/gokulnair2001/ConfettiKit) 
[![Maintenance](https://img.shields.io/maintenance/yes/2021?color=green&logo=github)](https://github.com/gokulnair2001/ConfettiKit)
![commit](https://img.shields.io/github/commits-since/gokulnair2001/ConfettiKit/1.0.0/master)
![contributors](https://img.shields.io/github/contributors/gokulnair2001/ConfettiKit)
![Badge](https://img.shields.io/badge/Xcode-12.0-green)
![badge](https://img.shields.io/badge/Swift-5.0-red)
![Badge](https://img.shields.io/badge/LibSize-3kb-brown)
![Watchers](https://img.shields.io/github/watchers/gokulnair2001/ConfettiKit?label=Watch)

## About ๐
ConfettiKit is a custom framework used to add Confetti on your iOS/iPadOS projects. The kit provides variety of customisations inorder to design a confetti which matches your project's UI. ConfettiKit makes your work of adding Confetti on your project with just one line of code.

## Playground ๐ป

* I've provided a demo project to showcase few examples of Confetti's which can be made. Simply clone this repo, and open `ConfettiKit.xcworkspace`.
* Run `pod install`.
* Here you can see and experiment custom Loaf styles in `Examples.swift`.

## Requirements โ

* Device running on iOS/iPadOS 12.1+ versions ๐ฑ.
* Swift 5.4+ ๐ป

## Installation ๐

ConfettiKit is available through [CocoaPods](https://cocoapods.org). 
To install it, simply add the following line to your Podfile:

```ruby
pod 'ConfettiKit'
```
## No CocoaPodsโ๏ธ

 * Add this [Confetti.swift file](https://github.com/gokulnair2001/ConfettiKit/tree/master/Sources) into your project.</br>
 * Now you are ready to use ConfettiKit ๐.</br>
 * Remaining steps are same ๐.</br>
 * Do read the documentation till the end to know more about ConfettiKit ๐ช๐ผ </br>

## Usage โ๏ธ
1. Import Library ๐
```swift
import ConfettiKit
```
2. Generate Confetti ๐
* Write this one line of code and add the parameters according to your specifications.

```swift
Confetti.generateConfetti(ConfettiPosition:Position, ConfettiCells:Int, ConfettiImage:[String], Colours:[UIColor], Scale:CGFloat ,BirthRate: Float, LifeTime:Float, Velocity:CGFloat, Spin:CGFloat, EmissionLongitude:CGFloat = CGFloat(Double.pi), EmissionRange:CGFloat, View: UIView)
```
### Parameters ๐

| Parameter | Definition  |             
| --- | --- |
| ConfettiPosition | Position from which confetti Starts |
| ConfettiCells | Total types of confetti element |
| ConfettiImage | Image to apply on every Cells|
| Colours | Colour to apply on every Cells |
| Scale | Size of cell | 
| BirthRate | Cells produced in a sec |
| LifeTime | Total existence of a cell|
| Velocity | Speed of cell |
| Spin | Rotation velocity of cell|
| EmissionLongitude | longitudinal orientation of the emission angle |
| EmissionRange | Angle(radians), defining a cone around the emission angle |
| View | View on which Confetti is to be applied |

## Result ๐ฏ
| Customization 1 | Customization 2 | Customization 3 |
|-- | -- | -- |
<img src="https://user-images.githubusercontent.com/56252259/125240695-1070bf00-e308-11eb-9091-bba322642216.gif" width="250" height="500"/> | <img src="https://user-images.githubusercontent.com/56252259/125241249-d5bb5680-e308-11eb-96d2-00425b13896a.gif" width="250" height="500"/> | <img src="https://user-images.githubusercontent.com/56252259/125241369-f97e9c80-e308-11eb-83a4-a1627c9949f8.gif" width="250" height="500"/>

* Above given confettis are example project, you can cutomise it with your favourite confetti style.

## How to Stop Confetti ? โ
* To stop confetti add:
```swift
Confetti.stopConfetti()
```

## Instructions ๐ฉ
1. Images which are to be used in Confetti must be present in the ```Images.xcassets``` file.
2. Change Rendering property of every Confetti Image to ```Template Image``` from Attribute Inspector.
<img src="https://user-images.githubusercontent.com/56252259/125242393-3f883000-e30a-11eb-9412-11f1e7c297d8.png" width="250" height="120"/>

3. While providing ```ConfettiImage``` & ```Colours``` do remember total number of Images and colours must be same to the number of ```ConfettiCells```.

## How to Contribute ๐
* Run the app - Steps are mentioned above.
* If you face issues in any step open a new issue.
* To fix issues: Fork this repository, make your changes and make a Pull Request.
<!--
## Project Admin ๐จ๐ปโ๐ป

|                                                                                         <a href="https://gokulnair2001.wixsite.com/mysite"><img src="https://user-images.githubusercontent.com/56252259/115108478-482ccc80-9f8e-11eb-94a0-430db46a432f.png" width=150px height=160px /></a>                                                                                         |
| :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: |
|                                                                                                                                        **[Gokul Nair](https://www.linkedin.com/in/gokul-r-nair/)**                                                                                                                                        |
| <a href="https://www.instagram.com/_gokul_r_nair_/"><img src="https://user-images.githubusercontent.com/56252259/114969025-24d22680-9e95-11eb-848d-b20e73269c4c.png" width="32px" height="32px"></a> <a href="https://twitter.com/itIsGokulNair"><img src="https://user-images.githubusercontent.com/56252259/114967867-d6bc2380-9e92-11eb-8f89-c437f39a45de.png" width="32px" height="32px"></a>  <a href="https://www.linkedin.com/in/gokul-r-nair/"><img src="https://user-images.githubusercontent.com/56252259/114967871-d7ed5080-9e92-11eb-8781-cd7cf9bb52db.png" width="32px" height="32px"></a> |

-->
## License

ConfettiKit is available under the MIT license. See the [LICENSE file](https://github.com/gokulnair2001/ConfettiKit/blob/master/LICENSE) for more info.

## Like the Project ?
If you like using any of my projects or like what I'm doing, please do consider backing me with appreciating my work: [Message me](https://twitter.com/GokulNair2303)๐ฅฐ

[<img width="200" alt="BMC logo+wordmark - Black" src="https://cdn.buymeacoffee.com/buttons/v2/default-red.png">](https://www.buymeacoffee.com/gokulnair)

OR

**Drop a star โญ if you find this project interesting!**

<p align="center" width="100%">
   Made with โค๏ธ in ๐ฎ๐ณ By Gokul Nair   
</p>
