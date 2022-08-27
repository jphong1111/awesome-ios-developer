# Awesome iOS Developer [![Join the chat at https://gitter.im/awesome-ios-developer/community](https://badges.gitter.im/awesome-ios-developer/community.svg)](https://gitter.im/awesome-ios-developer/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)    

<p>

   
<!-- 


%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%UPDATE LIST%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%

git useful
https://www.gitkraken.com/ -> similar with git tower
https://www.git-tower.com/mac -> observe filehistory
https://kaleidoscope.app -> diff file manager


reduce build time when TDD
line 1819

add more description


add more description about router service pattern


add TCA description


add domain pattern(layer) + robot testing in ios


add dependency inversion

+ 

add service locator + dependency container


add description about coordinator pattern


add modular architecture


add description for tuist template


add useful debugging in XCode(Youtube iOS)
+ need to add more with pic


using fastlane + periphery


dependency container


AR Kit add

add book for debugging( ray wenderlich)

add service locator pattern

composition layer

-sil option for optimization build for swift compile

SwiftGen - auto generate string & asset enum opensource

apple developer tutorial video link update
-->

<p align="center">
<img alt="awesome" src="https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg" />
<a href="https://hits.seeyoufarm.com">
    <img src="https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fjphong1111%2FUseful_Swift&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=true"/>
</a>

</p>


<p align="center">
🌟Feel free to contribute this Repository!!🌟
</p>

## 🔎 Content
- [Coding Convention](#Coding-convention)
    - [Swift Lint](#Swift-lint)
- [App Life Cycle](#app-life-cycle)
- [View Life Cycle](#view-life-cycle)
- [Design Pattern](#Design-Pattern)
    - [Adaptor](#Adaptor)
    - [Coordinator](#Coordinator)
    - [Delegation](#Delegation)
    - [Dependency Injection](#Dependency-Injection)
    - [Factory](#Factory)
    - [Observer](#Observer)
       - [KVO](#KVO)
       - [KVC](#KVC)
    - [Singleton](#Singleton)
- [Code Structuring](#code-structuringarchitecture)
    - [MVC](#MVC)
    - [MVP](#MVP)
    - [MVVM](#MVVM)
    - [VIPER](#VIPER)
    - [The Composable Architecture(TCA)](#The-Composable-Architecture)
       - [Reducer](#Reducer)
    - [Repository Pattern](#Repository-Pattern)
- [UIDesign](#UIDesign)
    - [HIG](#highuman-interface-guidelines)
    - [SwiftUI](#SwiftUI)
        - [Useful Cheat Sheet for SwiftUI](#Useful-Cheat-Sheet-for-SwiftUI)
    - [UIdesign Inspiration](#UIdesign-Inspiration)
    - [Vector Graphic Editors](#Vector-Graphic-Editors)
    - [Design Collaboration](#Design-Collaboration)
    - [Design Tools](#Design-Tools)
    - [Useful Sites](#useful-sites)
- [Screen Layout Programmatically](#screen-layout-programmatically)
- [Helper](#Helper)
    - [Email, Message, Call](#email-message-call)
    - [Network Layer](#Network-Layer)
    - [Image Picker](#Image-Picker)
    - [File Manager](#File-Manager)
    - [Video Downloader](#Video-Downloader)
    - [Image Downloader](#Image-Downloader)
    - [Location Manager](#Location-Manager)
    - [Local Notification Manager](#local-notification-manager)
- [API](#API)	
- [JSON](#JSON)
    - [JSONDecoder](#JSONDecoder)
    - [JSONSerialization](#JSONSerialization)
- [NotificationCenter](#NotificationCenter)
- [UserDefaults](#UserDefaults)
    - [How to find documentDirectory](#How-to-find-documentDirectory)
    - [Store Object](#Store-Object)
- [Core Data](#Core-Data)
    - [Core Data Stack](#Core-Data-Stack)
    - [Set Up Core Data](#Set-Up-Core-Data)
    - [Core Data Usage](#Core-Data-Usage)
        - [Codegen](#codegen)
        - [Entities](#Entities)
        - [Attributes](#Attributes)
        - [Relationships](#Relationships)
        - [Delete Rules](#Delete-Rules)
    - [Store Data](#Store-Data)
    - [Load Data](#Load-Data)
    - [Update Data](#Update-Data)
    - [Delete Data](#Delete-Data)
- [Core Bluetooth](#Core-Bluetooth)
- [Third Party Library](#Third-Party-Library)
    - [Dependency/Package Manager](#Dependency/Package-Manager)
        - [CocoaPods](#CocoaPods)
        - [Carthage](#Carthage)
        - [Swift Package Manager](#Swift-Package-Manager)
    - [Recommend Library](#Recommend-Library)
- [Localization](#Localization)
    - [Usage](#Localization-Usage)
    - [Useful for Localization](#Useful-for-Localization)
- [Accessibility](#Accessibility)
    - [USage](#Accessibility-Usage)
- [GCD](#GCD)
    - [DispatchQueue](#DispatchQueue)
        - [Thread Safety](#thread-safety)
    - [DispatchGroup](#DispatchGroup)
    - [DispatchWorkItem](#DispatchWorkItem)
- [Operation](#operation)
    - [OperationQueue](#operationQueue)
- [Thread Sanitizer](#Thread-Sanitizer)
- [Testing](#Testing)
    - [Five Factor Testing](#Five-Factor-Testing)
    - [Test Double](#Test-Double)
    - [Useful Debugging Technique](#Useful-Debugging-Technique)
    - [TDD](#TDD)
        - [Reduce Build Time](#Reduce-Build-Time)
            - [Check build time in Xcode](#Check-build-time-in-Xcode)
    - [BDD](#BDD)
    - [Code Coverage](#Code-Coverage)
    - [Integration Testing](#Integration-Testing)
    - [Unit Testing](#Unit-Testing)
    - [UI Testing](#UI-Testing)
        - [Robot Testing](#Robot-Testing)
    - [Snapshot Testing](#snapshot-testing)
    - [TestFlight](#testflight)
- [CI/CD](#cicd)
    - [Fastlane](#Fastlane)
    - [Jenkins](#Jenkins)
    - [Jira](#Jira)
    - [CircleCI](#CircleCI)
    - [Codemagic](#Codemagic)
    - [Xcode Cloud](#xcode-cloud)
- [Tuist](#Tuist)
- [In App Purchase(IAP)](#In-App-PurchaseIAP)
- [Notification](#Notification)
    - [Local Notification](#Local-Notification)
    - [Remote Notification](#Remote-Notification)
        - [APNs](#APNS)
            - [Set Up APNs](#Set-Up-APNs)
            - [APNs Usage](#APNs-Usage)
- [FRP](#FRP)
    - [Rxswift](#Rxswift)
    - [Combine](#Combine)
    - [RxCombine](#Rxcombine)
- [Security](#Security)
    - [Checklist For App Security](#Checklist-For-App-Security)
    - [Keychain](#Keychain)
    - [SSL Pinning](#SSL-Pinning)
    - [Code Obfuscation](#Code-Obfuscation)
    - [Cryptography](#Cryptography)
    - [Biometric Access](#Biometric-Access)
        - [Face ID & Touch ID](#face-id--touch-id)
- [Objective-C](#Objective-C)
    - [Bridging Header](#Bridging-Header)
- [Error Search](#Error-Search)
- [Useful Stuff](#Useful-Stuff)
    - [Useful Blogs for iOS Developers](#Useful-Blogs-for-iOS-Developers)
    - [How to submit your app to the AppStore](#how-to-submit-your-app-to-the-appstore)
    - [iOS Version Adoption Tracker](#iOS-version-adoption-tracker)
    - [Online Swift Playground](#Online-Swift-Playground)
    - [Show Preview in UIKit(Build UI with Code Base)](#show-preview-in-uikitbuild-ui-with-code-base-----)
    - [Compare Changes in Swift Version](#Compare-Changes-in-Swift-Version)
    - [Managing Xcode Space](#Managing-Xcode-Space)
    - [Roadmap for iOS Developer](#Roadmap-for-iOS-Developer)
    - [Vim in Xcode](#use-vim-in-xcode)
    - [Write README.md](#write-readmemd)


## Coding convention
set of guidelines for a specific programming language that recommend programming style

### Swift Style Guide

- [Swift Style Guide](https://github.com/linkedin/swift-style-guide)

### Swift Lint
The way of force you to adapt coding convention 
>otherwise project build will **FAILED**
- [Swift Lint](https://github.com/realm/SwiftLint) apply for all project:+1:
```swift
if which swiftlint >/dev/null; then
  swiftlint
else
  echo "error: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
  exit 1
  fi
```
put .yml file into root folder and apply following code in Build Phases

**You can modify(delete) SwiftLint Option with opening .yml file**

> Shift + Command + . will show the hidden file

<img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/swiftLintChange.png">


📚📚 Recommend Book 📚📚 

| Book Name   | Authors Name |
| :----------- | :----------- |
| Clean Code: A Handbook of Agile Software Craftsmanship | Robert C. Martin |
| The Pragmatic Programmer Your Journey to Mastery, 20th Anniversary Edition| Andrew Hunt David Hurst Thomas |


## App Life Cycle


[iOS App Life Cycle](https://medium.com/@neroxiao/ios-app-life-cycle-ec1b31cee9dc)






<p align="right">
<a href="#-content">Back to Content</a>
</p>








## View Life Cycle

<img src = "https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/iOSViewLifeCycle.png" width="70%" height="70%"/>


- viewDidLoad
- viewWillAppear
- viewWillLayoutSubviews
- viewDidLayoutSubviews
- viewDidAppear
- viewWillDisappear
- viewDidDisappear



[iOS View Controller Life Cycle](https://medium.com/good-morning-swift/ios-view-controller-life-cycle-2a0f02e74ff5)







<p align="right">
<a href="#-content">Back to Content</a>
</p>






## Design Pattern

Check [this](https://refactoring.guru/design-patterns/swift) website for design pattern in Swift

## Adaptor

Adapter pattern is a structural design pattern that is useful for composing classes and objects into a larger system.

```swift
protocol Target {
    func request()
}

class Adaptee {
    func specificRequest() {}
}

class Adapter: Target {
    let adaptee: Adaptee
    
    init(adaptee: Adaptee) {
        self.adaptee = adaptee
    }
    
    func request() {
        adaptee.specificRequest()
    }
}
```

 - [‘Adapter’ Pattern in Swift](https://levelup.gitconnected.com/adapter-pattern-in-swift-b6403cfa0a78)
 - [Swift adapter design pattern](https://theswiftdev.com/swift-adapter-design-pattern/)
 - [Adapter in Swift](https://refactoring.guru/design-patterns/adapter/swift/example)
 
## Coordinator

- [Leverage the Coordinator Design Pattern in Swift 5](https://betterprogramming.pub/leverage-the-coordinator-design-pattern-in-swift-5-cd5bb9e78e12)





















## Delegation

Delegation is a design pattern that enables a class to hand off (or “delegate”) some of its responsibilities to an instance of another class.

### Example

Create a protocol 

```swift
protocol SomeProtocol: AnyObject {
    func reload()
}
```

Create a delegate 
```swift
weak var delegate: SomeProtocol?
```



You can check the code using delegation pattern [here](https://github.com/jphong1111/Unsplash_Clone/blob/main/Unsplah_Clone/Module/MainMenu/AccountScreenModule/ViewModel/AccountViewModel.swift#L35)

- [Delegation in Swift Swift by Sundell](https://www.swiftbysundell.com/articles/delegation-in-swift/)
- [Delegation in Swift Explained](https://learnappmaking.com/delegation-swift-how-to/)
- [Delegation Pattern in Swift 5.1](https://medium.com/@nimjea/delegation-pattern-in-swift-4-2-f6aca61f4bf5)



## Dependency Injection

Dependency injection is a pattern that can be used to eliminate the need for singletons in a project


 1. Raise Transparency
 2. Improve Testability

### Type of Dependency Injection

 **1. initializer injection**
 
 ``` swift
 class DataManager {

    private let serializer: Serializer

    init(serializer: Serializer) {
        self.serializer = serializer
    }

}
 ```
 
 **2. property injection**
 
 ```swift
 import UIKit

class ViewController: UIViewController {

    var requestManager: RequestManager?

}
```

 **3. method injection**
 
 ```swift
 import Foundation

class DataManager {

    func serializeRequest(request: Request, withSerializer serializer: Serializer) -> Data? {
        ...
    }

}
```
 
[Nuts and Bolts of Dependency Injection in Swift](https://cocoacasts.com/nuts-and-bolts-of-dependency-injection-in-swift)


## Factory

Factory method is a creational design pattern which solves the problem of creating product objects without specifying their concrete classes.

- [Factory Method in Swift](https://refactoring.guru/design-patterns/factory-method/swift/example)
- [The Factory Pattern using Swift](https://stevenpcurtis.medium.com/the-factory-pattern-using-swift-b534ae9f983f)

## Observer

Observer is a behavioral design pattern that allows some objects to notify other objects about changes in their state.

 - Observer - An object that wishes to be notified when the state of another object changes.
 - Subject (Observable) - An object that maintains a list of observers, and inform them of state changes usually by calling one of their methods. An observable slightly differs in this in that it is just a function that sets up an observation.
 - Subscribe - An observer lets a subject know that it wants to be informed of changes through a process called subscribing.
 
<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/observer.png" />

Check following sites
 - [swiftbysundell](https://www.swiftbysundell.com/articles/observers-in-swift-part-1/) 

TBD

### KVO

KVO stands for Key Value Observing


 - [Apple Developer Site](https://developer.apple.com/documentation/swift/cocoa_design_patterns/using_key-value_observing_in_swift)
 - [KVO (Key Value Observing) in Swift](https://medium.com/@abhishek1nacc/kvo-key-value-observing-in-swift-65d05ac2d240)


### KVC

[KVO vs KVC](https://medium.com/hackernoon/kvo-kvc-in-swift-12f77300c387)

We are using KVC in Storyboard!

<p align="right">
<a href="#-content">Back to Content</a>
</p>


## Singleton

singleton pattern is to ensure only one instance of a class is alive at any one time.

```swift
class SingletonPattern {
    static let manager = SingletonPattern()
    
    private init() {}
}
```

<p align="right">
<a href="#-content">Back to Content</a>
</p>


## Code Structuring(Architecture)

📚📚 Recommend Book 📚📚 

| Book Name   | Authors Name |
| :----------- | :----------- |
| Advanced iOS App Architecture : Real-world app architecture in Swift | raywenderlich Tutorial Team |
| Clean Architecture: A Craftsman's Guide to Software Structure and Design | Robert Martin |

## Clean Architecture


<img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/Clean_Architecture.png">


[Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)


## MVC

MVC pattern stands for Model - View - Controller

<img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/MVCModel.png">

 - Model - Model take care of storing data.
 - View - View renders the data for users
 - Controller - Controller modifies the View, accepts user input and interacts directly with the Model. And take care of view logic and business logic.

## MVP

<img src ="https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/MVPdesign.png" />

## MVVM

MVVM patterns stand for Model - View - ViewModel

### MVC vs MVVM

<img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/MVVMvsMVC.png" width = "60%" height = "60%">

 - Model – Which holds the application data

 - View – It displays the data that is stored in model. These are visual elements through which a user interacts. These are subclasses of UIView

 - View Model – Transform model information/data and it interacts with controller or view to display those informations.

 - Controller class – It will be there but the responsibility of view business logic has been removed and give to view model

> You can check App example of using MVVM [here](https://github.com/jphong1111/Unsplash_Clone)

## VIPER

<img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/Viper.png">

 - View - Displays what it is told to by the Presenter and relays user input back to the Presenter.
 - Interactor -  Contains the business logic as specified by a use case.
 - Presenter - contains view logic for preparing content for display (as received from the Interactor) and for reacting to user inputs (by requesting new data from the Interactor).
 - Entity - contains basic model objects used by the Interactor.
 - Routing - contains navigation logic for describing which screens are shown in which order.
 
[Getting Started with the VIPER Architecture Pattern](https://www.raywenderlich.com/8440907-getting-started-with-the-viper-architecture-pattern)
 
 # The Composable Architecture
 
The Composable Architecture is a library for building applications in a consistent and understandable way, with composition, testing, and ergonomics in mind
 
 <img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/SCA.png">
 
  - [Composable Architecture @ Point Free](https://www.pointfree.co/collections/composable-architecture)
  - [The Composable Architecture GitHub](https://github.com/pointfreeco/swift-composable-architecture)
  - [The Composable Architecture — One of the Best-Suited Architectures for SwiftUI](https://medium.com/swlh/the-composable-architecture-one-of-the-best-suited-architectures-for-swiftui-35bfc5102b83)
  
 ```swift
 // example will update here
 ```
 
 ## Reducer
 
 A reducer describes how to evolve the current state of an application to the next state, given an action, and describes what Effects should be executed later by the store, if any.
 
 - [Reducer in TCA](https://pointfreeco.github.io/swift-composable-architecture/Reducer/)

 
 
<p align="right">
<a href="#-content">Back to Content</a>
</p>
 
## Repository Pattern


[The Repository and Unit of Work Patterns](https://docs.microsoft.com/en-us/aspnet/mvc/overview/older-versions/getting-started-with-ef-5-using-mvc-4/implementing-the-repository-and-unit-of-work-patterns-in-an-asp-net-mvc-application)











 
## UIDesign

## HIG(Human Interface Guidelines)
- [HIG](https://developer.apple.com/design/human-interface-guidelines/)
- [Apple UI Kit](https://developer.apple.com/documentation/uikit)
- [iOS Design Guide](https://ivomynttinen.com/blog/ios-design-guidelines)

## SwiftUI

SwiftUI is a user interface toolkit that lets us design apps in a **declarative way(Declarative syntax)**. 


## Useful Cheat Sheet for SwiftUI

 - [Fucking SwiftUI](https://fuckingswiftui.com/) Cheat Sheet for SwiftUI
 - [Gosh Darn SwiftUI](https://goshdarnswiftui.com/) Cheat Sheet for SwiftUI
 - [SimpleBoilerplates/SwiftUI-Cheat-Sheet](https://github.com/SimpleBoilerplates/SwiftUI-Cheat-Sheet)
 
TBA







<p align="right">
<a href="#-content">Back to Content</a>
</p>

## iOS icon 
- [SF Symbols](https://developer.apple.com/sf-symbols/) Download SF Symbols2 for more icons!
- [icon8](https://icons8.com/) You can download icons imge for your **APP**
- [appicon](https://appicon.co/) generate the app icon size
- [flaticon](www.flaticon.com) Free icons download


## UIdesign Inspiration

- [Dribble](https://dribbble.com/)
- [Pinterest](https://pinterest.com/)
- [Behance](https://www.behance.net/)
- [Pttrns](https://pttrns.com/)👍
- [Awwwards](https://www.awwwards.com/)
- [Flickr](http://www.flickr.com/)
- [Mobbin](https://mobbin.design/dictionary)👍

## Vector Graphic Editors
- [Figma](https://www.figma.com/)
- [Sketch](https://www.sketch.com/)
- [Adobe XD](https://www.adobe.com/products/xd.html)

## Design Collaboration Tools
- [Sympli](https://sympli.io/)
- [Zepline](https://zeplin.io/)

## Design Tools
- [DetailsPro](https://detailspro.app) You can design with SwiftUI free 👍

<p align="right">
<a href="#-content">Back to Content</a>
</p>


## Useful Sites 

 - [HEX Color Picker](https://imagecolorpicker.com/) Good for picking color as Hex 👍

<p align="right">
<a href="#-content">Back to Content</a>
</p>

## Screen Layout Programmatically


TBA


































<p align="right">
<a href="#-content">Back to Content</a>
</p>


## Helper

All files are resuable files and protocol oriented. **Just Copy and Paste inside your project and use it!!** 👍
 
**These helper files are not with Error Handling! careful at use**

## Email, Message, Call

You can check the file in the follow link

- [Email, Message, Call](https://github.com/jphong1111/Useful_Swift/blob/main/Helper/ConversationHandler/ConversationManager.swift)

### Usage
import MessageUI first

```swift
import MessageUI
```

Then use it
> Don't forget to extend the mail, message delegate to your ViewController!

```swift
    lazy var conversation = ConversationManager(presentingController: self, mailDelegate: self, messageDelegate: self, viewController: self)
    
    @IBAction private func sendEmail(_ sender: UIButton) {
        conversation.sendEmail(feedback: MailFeedback(recipients: ["abcd@google.com"], subject: "FeedBack", body: "Write feedback here"))
    }
    @IBAction private func sendMessage(_ sender: UIButton) {
        conversation.sendMessage(feedback: MessageFeedBack(recipients: ["1111111111"], body: "Type here"))
    }
    @IBAction private func startCall(_ sender: UIButton) {
        conversation.makeCall(number: "1111111111")
    }
```

Good To GO 👏👏👏
> See Example [here](https://github.com/jphong1111/ImageMessageHandler_DemoApp)

<p align="right">
<a href="#-content">Back to Content</a>
</p>

## Network Layer

- [Network Layer](https://github.com/jphong1111/Useful_Swift/tree/main/Helper/Network%20Layer) 

### Usage

First, set the base URL in **EndPointType file**
> Don't forget to put your API key in it!

```swift
var baseURL: URL {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/") else {
            fatalError("baseURL could not be configured.")
        }
        return url
    }
```

then make a instance of router.swift file in your code

```swift
private let router = Router<YourAPI>()
```

for **YourAPI part**, simply create a new **enum** with cases about specific api URL
> It will make your router more dynamic!
> Don't forget extension to EndPointType!

```swift
enum YourAPI {
    case first(country: String)
    case second(time: Int)
    case third(name: String)
}

extension YourAPI: EndPointType {
    var path: String {
        switch self {
        case .first(let country):
            return "\(country).json"
        case .second(let time):
            return "\(time).json"
        case .third(let name):
            return "\(name).json"
        }
    }
}
```

then, use it like this

```swift
router.request(.first(country: London)) { [weak self] (results: Result<CountryWeather, AppError>) in
            guard let self = self else { return }
            switch results {
            case .success(let data):
                // insert your modifications!
                
            case .failure(let error):
                // insert your modifications!
                print(error)
            }
        }
```

> **CountryWeather should be a model with Decodable**

If you want to see how can I use Network Layer in Project, check [this](https://github.com/jphong1111/Unsplash_Clone/tree/main/Unsplah_Clone/ReusableComponent/NetworkLayer)

This reusable network layer files for referenced from [here](https://medium.com/flawless-app-stories/writing-network-layer-in-swift-protocol-oriented-approach-4fa40ef1f908)

> Also [Alamofire](https://github.com/Alamofire/Alamofire) will be a great option for Network Layer!

## Image Picker

- [Image Picker](https://github.com/jphong1111/Useful_Swift/blob/main/Helper/ImagePickerHandler/ImagePicker.swift) 

### Usage

Copy and Paste in your project and then declare Image Picker object inside your project 

```swift
lazy var imagePicker = ImagePicker(presentationController: self, delegate: self)
```

Then, extend ImagePickerDelegate to your viewController

```swift
extension ViewController: ImagePickerDelegate {
    func didSelect(image: UIImage?) {
        self.yourImageView.image = image
        self.dismiss(animated: true, completion: nil)
    }
}
```

Good To GO 👏👏👏
> See Example [here](https://github.com/jphong1111/ImageMessageHandler_DemoApp)


## File Manager

- [File Manager](https://github.com/jphong1111/awesome-ios-developer/blob/main/Helper/FileManageHandler/FileManager.swift) 

### Usage

Copy and Paste in your project 

```swift
let readData = FileManageHelper.manager.readFile(filename: fileNameTextField.text ?? "", type: extensionTextField.text ?? "")
resultTextField.text = readData
```
> File Manager are wrote with singleton pattern, therefore no need to declare in side your code!

Good To GO 👏👏👏

## Video Downloader

- [Video Downloader](https://github.com/jphong1111/awesome-ios-developer/blob/main/Helper/VideoDownloadHandler/VideoDownloadManager.swift) 

## Usage

Make an object of VideoManager inside your code

```swift
let videoManager = VideoManager()
```

use downloadVideoLinkAndCreateAsset function to start download with entering URL

```swift
self.videoManager.downloadVideoLinkAndCreateAsset(text)
```
Good To GO 👏👏👏

## Image Downloader

There is no file for Image Downloader.

To download images into device, only thing is this

```swift
if let data = try? Data(contentsOf: urls),
   let image = UIImage(data: data) {
   UIImageWriteToSavedPhotosAlbum(image, nil, nilil)
}
```
Just **change urls into your image URL**

> UIImageWriteToSavedPhotosAlbum will take care it to download to device.

> For more info go [here](https://www.hackingwithswift.com/example-code/media/uiimagewritetosavedphotosalbum-how-to-write-to-the-ios-photo-album)

Good To GO 👏👏👏

## Location Manager

- ~~[Location Manager](https://github.com/jphong1111/Useful_Swift/tree/main/Helper/LocationHandler/LocationManager.swift)~~

Currently Working

<p align="right">
<a href="#-content">Back to Content</a>
</p>

## Local Notification Manager

 - [Local Notification Manager](https://github.com/jphong1111/awesome-ios-developer/blob/main/Helper/LocalNotificationHelper/LocalNotificationManager.swift)

<p align="right">
<a href="#-content">Back to Content</a>
</p>

# API

API(Application Programming Interface) is an interface that defines interactions between multiple software applications or mixed hardware-software intermediaries. It defines the kinds of calls or requests that can be made, how to make them, the data formats that should be used, the conventions to follow, etc.

## Various API Site
- [rapidAPI](https://www.rapidapi.com)
- [AnyAPI](https://any-api.com/)
- [Programmableweb](https://www.programmableweb.com/)

<p align="right">
<a href="#-content">Back to Content</a>
</p>


## JSON
JSON is a language-independent data format
> Which is relative with **KEY - VALUE** pair
```json
{
    "main": [
        {
            "title": "example1",
            "body": "body1"
        },
        {
            "title": "example2",
            "body: "body2"
        }
    ]
}
```
### JSON parser extension for Chrome
This extension makes JSON more structable
[JSON parser pro](https://chrome.google.com/webstore/detail/json-viewer-pro/eifflpmocdbdmepbjaopkkhbfmdgijcc) **FREE** :+1:

## JSONDecoder

To use JSONDecoder in swift, you have to define the model to be Codable or Decodable

```swift
public typealias Codable = Decodable & Encodable
```

> Decodable can only decode the json data. Can't encoded json file!!

```swift
struct User: Codable {
    var firstName: String
    var lastName: String
    var country: String
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case country
    }
}

```
> To avoid snake_case in swift, use CodingKeys or JSONDecoder.KeyDecodingStrategy

To use JSONDecoding, declare JSONDecoder and use decode() function

```swift
 do {
    let data = try JSONDecoder().decode(T.self, from: unwrappedData)
    completionOnMain(.success(data))
} catch {
    print(error)
    completionOnMain(.failure(.parseError))
}
 ```
 
T.self -> Model(Struct) of the data that you want to decode
 > data will decoded to form of T

unwrappedData -> Input actual data from file or server
> This should be a Data Type!!
 
## JSONSerialization

JSONSerialization is a old way of decode the JSON file.
> Apple populated Codable since Swift 4

### Example

Example of number.json data

```json
{
    "number": [
        {
            "name": "Dennis",
            "number": "111-222-3333"
        },
        {
            "name": "Jenny",
            "number": "444-555-6666"
        },
        {
            "name": "Ben",
            "number": "777-888-9999"
        }
    ]
}

```

Here is a example of JSONSerialization with actaul JSON file in project folder
> Otherwise you can use URL!

```swift
    private func populateDataFromJson() {
        
        if let path = Bundle.main.path(forResource: "NumberData", ofType: "json") {
            do {
                let dataJson = try Data(contentsOf: URL(fileURLWithPath: path))
                let jsonDict = try JSONSerialization.jsonObject(with: dataJson, options: .mutableContainers)
                if let jsonResults = jsonDict as? [String: Any],
                   let results = jsonResults["number"] as? [[String: Any]] {
                    results.forEach { dict in
                        // simply appended to list(array)
                        self.phoneNumberList.append(PhoneNumber(name: dict["name"] as? String ?? "", number: (dict["number"] as? String ?? "")))
                        self.phoneNumberListClone.append(PhoneNumber(name: dict["name"] as? String ?? "", number: (dict["number"] as? String ?? "")))
                    }
                }
            } catch {
                print(error.localizedDescription)
            }
        }
    }
```

> .mutableContainers allows to working like a array and dictionary type


### JSON Parser Library

This library provide JSON parsing 

- [SwifyJSON](https://github.com/SwiftyJSON/SwiftyJSON)

<p align="right">
<a href="#-content">Back to Content</a>
</p>

## NotificationCenter

A notification dispatch mechanism that enables the broadcast of information to registered observers.

 - [NotificationCenter Apple Document](https://developer.apple.com/documentation/foundation/notificationcenter)
 - [How To: Using Notification Center In Swift](https://learnappmaking.com/notification-center-how-to-swift/)


<p align="right">
<a href="#-content">Back to Content</a>
</p>

## UserDefaults

The UserDefaults class provides a programmatic interface for interacting with the defaults system. Check [Apple Document](https://developer.apple.com/documentation/foundation/userdefaults) for more info
> UserDefaults has to have **key-value** pair

### When do we use UserDafaults

- User information, like name, email address, age, occupation
- App settings, like user interface language, app color theme or “detailed vs. simple UI”
- Flags, more on this later
- If store data is small 

## How to find documentDirectory 

Put this line of code inside of your project
```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last ?? "")
        return true
    }
```

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/DocumentPath.png" />

simply move into that path and you can find the documentDirectory of your Application
> if Library is not shown up, just do **Shift + Command + .** to show hidden files in your folder

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/UserDefaultPlistPath.png" />

## Usage

As you can see in the below, intArray will stored inside the device through UserDefaults(), so that if device is shut down, changed value wil be stored in device.

```swift
class ViewController: UIViewController {
    var intArray = [1,2,3,4,5]
    let defaults = UserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        intArray = defaults.array(forKey: "IntArray") as! [Int]
    }
    
    @IBOutlet weak var textField: UILabel!
    @IBAction private func isClicked(_ sender: UIButton) {
        intArray.append(6)
        defaults.set(intArray, forKey: "IntArray")
        textField.text = "\(intArray)"
    }
}
```
You can your plist file like this!

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/UserDefaultPlist.png" />

Declare Userdefault like this!

```swift
let defaults = UserDefaults.standard
```
> **standard** allows to access from anywhere inside device

**With using set function, you can set userdefaults**

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/UserDefaultSet.png" width = "60%" height = "60%"/>

**Also these function will allow to get a data from plist**

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/UserDefaultGet.png" width = "60%" height = "60%"/>

## Store Object

[Store Object](https://stackoverflow.com/questions/29986957/save-custom-objects-into-nsuserdefaults)


**You are GOOD TO GO**  👏👏👏

<p align="right">
<a href="#-content">Back to Content</a>
</p>

# Core Data

[Everything Core Data](https://metova.com/everything-core-data/)

Use Core Data to save your application’s permanent data for offline use, to cache temporary data, and to add undo functionality to your app on a single device.

**Core Data in Swift is using SQLite as DEFAULT**

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/DataStoreInSwift.png" width = "50%" height = "50%"/>

> Image From London App Brewery


📚📚 Recommend Book 📚📚 

| Book Name   | Authors Name |
| :----------- | :----------- |
| Core Data by Tutorials: iOS 12 and Swift 4.2 Edition | raywenderlich Tutorial Team |

## Core Data Stack

 - [The Core Data Stack](https://www.raywenderlich.com/books/core-data-by-tutorials/v7.0/chapters/3-the-core-data-stack)
 
<img src = "https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/Core_Data_Stack.png" width = "70%" height = "70%"/>


 - **NSManagedObject** - This is a base class of all the core data model object. This provides the schema of our database table. This is used to store model data in our application. KVO and KVC compliant. It can notify any changes that are done on its properties if any object is listening.


 - **NSManagedObjectContext** - Most important class. This is the place where you do all the computations. You can think this as a scratch pad where you do all the operations realated to core data (CRUD). It's an object which you can use to manipulate and track any changes done to manage object. All the changes done on a context object will be held until and unless you are discarding or writing those changes permaneently to persistntent storage.


 - **NSPersistentStoreCoordinator** - The main functionality is to provide a communication between context and persistent store.


 - NSPersistentStore - They are the stores in which the data are being saved. These includes SQLite, In-Memory, Binary, XML(the XML store is not available on iOS).
 - NSPersistentContainer - This contains the whole core data stacks.









## Set Up Core Data

Simply Click Core Data check box when you create a new project

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/AddCoreData.png" width = "50%" height = "50%"/>

If you want to attach Core Data in exsiting project

Create **Data Model** file first

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/AddDataModel.png" width = "50%" height = "50%"/>

Then import CoreData inside your **AppDelegate.swift** file

```swift
import CoreData
```

And Copy and Paste this lines of code inside your **AppDelegate.swift** file

```swift
    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "Your DataModel file name")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
```

Don't forget to change it
```swift
let container = NSPersistentContainer(name: "Your DataModel file name")
```

And goto **SceneDelegate.swift** file, copy below lines of code and replace yours

```swift
func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.

        // Save changes in the application's managed object context when the application transitions to the background.
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }
```

If your target is **below iOS13**, put this line of code in side your **applicationWillTerminate** of **AppDelegate.swift** file

```swift
self.saveContext()
```

## Core Data Usage


Once you create your DataModel file, you can simply create a **Entity(Class)** and **Attributes(Properties)**

And then, change the type of attributes in inspector like this

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/DataModelAttribute_inspector.png"/>

Once you create your own Entities & Attributes, go to Inspector and change Module to **CurrentProductModule**

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/DataModelAttributes.png"/>

> If you didn't set it, thats fine, but if you are working in big project, then you need to set it. Otherwise this can occurs some error.

## Codegen

As you can see in above, there are three options

- Manual/None - Swift didn't generate CoreDataClass, CoreDataProperties files so that you have to create yourself **(full control)**
- Class Definition - Swift will generate CoreDataClass, CoreDataProperties files. **(No control)**
- Category/Extension - Swift will generate only Extension file **(Some Control)**

CoreDataClass, CoreDataProperties are located in below

 > /Users/dennis/Library/Developer/Xcode/DerivedData/CoreDataUserDefaultPractice-hisefjfyuvglrjekndpftwazftug/Build/Intermediates.noindex/CoreDataUserDefaultPractice.build/Debug-iphonesimulator/CoreDataUserDefaultPractice.build/DerivedSources/CoreDataGenerated/CoreDataUserDefaultPractice 

And CoreDataClass, CoreDataProperties are looking like this,

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/CoreDataClass_Properties.png"/>

> If your code can run it but didn't get your Entities, **Rebuild it or Restart your Xcode**

**The reason that files divided into two files is that one for writing Business Logic, one for Properties**
 
## Entities

An entity represents a table in your database. It is the blueprint for the NSManagedObject subclass instances that you will create and use throughout your application.

## Attributes

Attributes are properties of your object. They translate to a column in your database table and a property in your managed object. You can choose from a variety of primitive values that the database has to offer such as a string, integer, or date.

## Relationships

A relationship describes how one entity relates to another. Two important aspects of this are the cardinality and the deletion rule

### Cardinality

 - **One-to-many** - Lets say that each Department has a group of Employees that can only work for a single Department. This would be a “one-to-many” relationship since each Department could have many Employees and each Employee can only work for one Department.
 - **Many-to-many** - If a single Employee could work for multiple Departments, then our Department/Employee relationship would be “many-to-many” because each Department could have many Employees and each Employee could work for multiple Departments.
 
 
### Delete Rules

[Core Data Relationships and Delete Rules](https://cocoacasts.com/core-data-relationships-and-delete-rules)

 - **No Action** - Do nothing to the object at the destination of the relationship. For example, if you delete a department, leave all the employees as they are, even if they still believe they belong to that department.
 - **Nullify (Default)** - Set the inverse relationship for objects at the destination to null. For example, if you delete a department, set the department for all the current members to null. This only makes sense if the department relationship for an employee is optional, or if you ensure that you set a new department for each of the employees before the next save operation.
 - **Cascade** - Delete the objects at the destination of the relationship. For example, if you delete a department, fire all the employees in that department at the same time.
 - **Deny** - If there is at least one object at the relationship destination, then the source object cannot be deleted. For example, if you want to remove a department, you must ensure that all the employees in that department are first transferred elsewhere (or fired!) otherwise the department cannot be deleted.



## Store Data

Declare context as a global variable

```swift
let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
```
> Get viewContext that we defined in AppDelegate.swift file

Simply you can use this code to save your data to CoreData
```swift
func saveItem() {
        do {
            try context.save()
        } catch {
            print("Error Saving Context: \(error.localizedDescription)")
        }
    }
```
> Use it wherever you want

Data can be find if you print the path

```swift
print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask))
```

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/CoreDataSQLite.png" />

> You can check Entities, Properties inside that file

## Load Data

Refer this code and apply it to your code wherever you want to reload it
```swift
    func loadItem() {
        let request: NSFetchRequest<Item> = Item.fetchRequest()
        do {
            itemArray = try context.fetch(request)
        } catch {
            print("Load Item Error: \(error.localizedDescription)")
        }
    }
```
> Item will be your Entity, itemArray will be your Entity object
> Don't forget to import **CoreData**

## Update Data

Simply use setValue function so that you can update your value in DB

```swift
itemArray[0].setValue(<#T##value: Any?##Any?#>, forKey: <#T##String#>)
```
> if you are using TableView or CollectionView, change 0 to indexPath.row

## Delete Data

Simply use delete function in context

```swift
context.delete(itemArray[0])
```
> change number for dynamic!

**You are GOOD TO GO**  👏👏👏

<p align="right">
<a href="#-content">Back to Content</a>
</p>

## Core Bluetooth













 - [Introduction to BLE Mobile Development [iOS]](https://www.novelbits.io/intro-ble-mobile-development-ios/)
 - [Core Bluetooth Tutorial for iOS: Heart Rate Monitor](https://www.raywenderlich.com/231-core-bluetooth-tutorial-for-ios-heart-rate-monitor)
 - [Getting Started with Core Bluetooth](https://ditto.live/blog/posts/getting-started-with-core-bluetooth)


**You are GOOD TO GO**  👏👏👏

<p align="right">
<a href="#-content">Back to Content</a>
</p>

# Third Party Library

Third Party Library saves you time as you do not need to develop the functionality that the library provides. 
[SHOULD DEVELOPERS USE THIRD-PARTY LIBRARIES?](https://www.scalablepath.com/blog/third-party-libraries/)
> Relying on library(abused) is not a good idea

 - [awesome ios github](https://github.com/vsouza/awesome-ios) Contains all the popular libraries in Swift:+1:
 - [awesome swift site](https://swift.libhunt.com/) You can broswe popular libraries related to iOS

## Dependency/Package Manager

A package manager is a tool that simplifies the process of working with code from multiple sources.

- Centralised hosting of packages and source code with public server with access to developers or contributors
- Download the source code at the run time, so that we don’t need to include it in the repository
- Link the source code to our working repository by including source files

[More Info](https://medium.com/xcblog/swift-dependency-management-for-ios-3bcfc4771ec0)

## CocoaPods

Download cocoapods

```bash
$ sudo gem install cocoapods
```

After finish download cocoapods, go to your root folder of your project and make pod file

```bash
$ pod init
```

Click into your pod file and edit

Image

After finish editing, update your pod file

```bash
$ pod install
```
    

**You are GOOD TO GO**  👏👏👏

<p align="right">
<a href="#-content">Back to Content</a>
</p>

## Carthage

 - [Getting started with Carthage to manage dependencies in Swift and iOS](https://www.twilio.com/blog/2016/05/getting-started-with-carthage-to-manage-dependencies-in-swift-and-ios.html)
 - [Carthage Tutorial: Getting Started](https://www.raywenderlich.com/7649117-carthage-tutorial-getting-started)
 - [Carthage](https://github.com/Carthage/Carthage)
 
First, install Carthage through HomeBrew

```bash
$ brew install carthage
```

if already installed, check if there is latest version.
    
```bash
$ carthage update
```

Then, go to your root project folder, and do this

```bash
touch Cartfile
```

open cartfile, put library that you want to use

```bash
github "<owner>/<repo>" == <version>
```

Example 

```bash
github "Alamofire/Alamofire" == 4.9.0
github "Alamofire/AlamofireImage" ~> 3.4
```

And then, do this

```bash
carthage update --platform iOS
```

After finish downloading it, go to **Xcode -> Build phases**

TBD

**You are GOOD TO GO**  👏👏👏
    
<p align="right">
<a href="#-content">Back to Content</a>
</p>

## Swift Package Manager

<img src = "https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/SwiftPackageManager.png" width = "50%" height = "50%"/>

Enter url of library that you want to install

<img src = "https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/SwiftPackageManager2.png" width = "50%" height = "50%"/>

<img src = "https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/SwiftPackageManager3.png" width = "50%" height = "50%"/>

**You are GOOD TO GO**  👏👏👏

<p align="right">
<a href="#-content">Back to Content</a>
</p>

## Recommend Library
- SDWebImage - Downloading and caching images from the web
- Kingfisher - Downloading and caching images from the web
- Hero - Various kind of animation with using Segue
- Alamofire - Network Layer tool
- Moya - Network abstraction layer written in Swift
- RxSwift - Reactive Programming in Swift
- SwiftyJSON - JSON parsar Helper
- IQKeyboardManager - Easy to manage Keyboard settings
- SnapKit - Swift Auto Layout DSL for iOS
- Charts - Make Beutiful Charts in your App
- Quick/Nimble - Testing Library + Asynchronous tests purpose
- Periphery - A tool to identify unused code in Swift Projects
- ReactorKit - A framework for a reactive and unidirectional Swift application architecture
- SwiftGen - SwiftGen is a tool to automatically generate Swift code for resources of your projects (like images etc), to make them type-safe to use. 
- etc...

<p align="right">
<a href="#-content">Back to Content</a>
</p>

## Localization

Localization is the process of making your app support other languages. (Base language is English)

 - [Localization Apple](https://developer.apple.com/localization/)
 - [Localization Apple Developer](https://developer.apple.com/documentation/xcode/localization)
 - [iOS Localization Tutorial](https://medium.com/lean-localization/ios-localization-tutorial-938231f9f881)
 - [Internationalizing Your iOS App: Getting Started](https://www.raywenderlich.com/250-internationalizing-your-ios-app-getting-started)
 
## Localization Usage

First, you have to check **Use Base Internationalization**
> It might be checked

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/Internationalization.png" width="70%" height ="70%" />

> English is a base Language

After you check it, add languages that you want to support in your App

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/Internationalization2.png" width="70%" height ="70%" />

Then, you can check your language file like this!

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/Internationalization3.png" width="70%" height ="70%" />

Create **Localizable.strings** file into your project
> Unlike Swift, the .strings file requires that each line terminate with a **semicolon**
> .strings file is where you can add translation data as **key-value** pairs

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/Internationalization4.png" width="70%" height ="70%" />

In your .strings file, check localization button and choose language

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/Internationalization5.png" />

And then add Key - Value pairs for tanslation

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/Internationalization6.png" width="70%" height ="70%"/>

To use localization, use **NSLocalizedString** to implement it

```swift
NSLocalizedString(<#T##key: String##String#>, comment: <#T##String#>)
```
 - [key] - put (key - value) pair that you created in .strings file
 - [comment] - It will help your translators significantly and result in better translations

Simple example below

```swift
@IBAction func showAlert() {
        let alertTitle = NSLocalizedString("Welcome", comment: "")
        let alertMessage = NSLocalizedString("How are you", comment: "")
        let cancelButtonText = NSLocalizedString("Cancel", comment: "")
        let signupButtonText = NSLocalizedString("Signup", comment: "")

        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: UIAlertController.Style.alert)
        let cancelAction = UIAlertAction(title: cancelButtonText, style: UIAlertAction.Style.cancel, handler: nil)
        let signupAction = UIAlertAction(title: signupButtonText, style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(cancelAction)
        alert.addAction(signupAction)
        present(alert, animated: true, completion: nil)
    }
```
 
 After that, we have to test if localization is working correctly or not
 
 To test it, you can do either **Edit Scheme** or **New Scheme**
 
 go to Run section, and change **App Language**
 
 <img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/Internationalization7.png" />
 
 After finish setting Scheme try to run it!
 
  <img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/Internationalization8.png" width="50%" height ="50%" />
  <img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/Internationalization9.png" width="50%" height ="50%" />
  
  
**You are GOOD TO GO**  👏👏👏

<p align="right">
<a href="#-content">Back to Content</a>
</p>

## Useful for Localization

 - [localazy](https://localazy.com/) localization tool for iOS and macOS apps. Supporting .strings, .stringsdict, .plist and XLIFF files.
 - [locastudio](https://www.cunningo.com/locastudio/index.html) Analyze, review, and edit your app translations.

<p align="right">
<a href="#-content">Back to Content</a>
</p>

## Accessibility

Accessibility is all about making the iPhone, iPod touch, and iPad work for as wide a range of people as possible. That can include the very young, the very old, people brand new to computers and mobile devices, and also people with disabilities and special needs. 

- Designing your app for accessibility makes it easier to write functional tests, whether you’re using the UI Testing in Xcode.
- You’ll also broaden your market and user base by making your app usable by a larger group.
- Implementing accessibility in your app shows you’re willing to go the extra mile for every user, and that’s a good thing.

- [iOS Accessibility: Getting Started](https://www.raywenderlich.com/6827616-ios-accessibility-getting-started)


## Accessibility Usage

To use accessibility, you have to enable this
> For most UIKit classes, **the default is true, but for UILabel it’s false**

```swift
label.isAccessibilityElement = true
```

 - accessibilityLabel - short description of control e.g. "Save" for button, "Rating" for label
 - accessibilityHint - helps the user to understand result of the action e.g "Save the documents"
 - accessibilityTraits - collection of constants that describe the type of control and/or hot it should be treated
 - accessibilityValue - Used to describe the value of a none-label UI component e.g. "50%" for progress bar

<p align="right">
<a href="#-content">Back to Content</a>
</p>

## GCD
GCD(Grand Central Dispatch) is a low-level API for managing concurrent operations. It can help you improve your app’s responsiveness by deferring computationally expensive tasks to the background.

## DispatchQueue
An object that manages the execution of tasks serially or concurrently on your app's main thread or on a background thread.

### main
We can say main is a serial queue

### global()
We can say global is a concurrent queue

## Thread Safety

[Concurrency & Thread Safety in Swift](https://medium.com/cubo-ai/concurrency-thread-safety-in-swift-5281535f7d3a)
[Thread Safety in Swift](https://swiftrocks.com/thread-safety-in-swift)

- **Dispatch Barrier**

Use a barrier to synchronize the execution of one or more tasks in your dispatch queue. 

[Dispatch Barrier Apple Documentation](https://developer.apple.com/documentation/dispatch/dispatch_barrier)

- **Dispatch Semaphore**

[Dispatch Semaphore Apple Documentation](https://developer.apple.com/documentation/dispatch/dispatch_semaphore)



- **NSLock**

An object that coordinates the operation of multiple threads of execution within the same application.

[NSLock](https://developer.apple.com/documentation/foundation/nslock)

## DispatchGroup

[DispatchGroup Apple Document](https://developer.apple.com/documentation/dispatch/dispatchgroup)

## DispatchWorkItem

The work you want to perform, encapsulated in a way that lets you attach a completion handle or execution dependencies.

[DispatchWorkItem Apple Document](https://developer.apple.com/documentation/dispatch/dispatchworkitem)

## Operation

[NSOperation Apple Documentation](https://developer.apple.com/documentation/foundation/nsoperation)


## OperationQueue


[NSOperationQueue Apple Documentation](https://developer.apple.com/documentation/foundation/nsoperationqueue)

<p align="right">
<a href="#-content">Back to Content</a>
</p>


# Thread Sanitizer
Thread Sanitizer is a tool to identifies the potential thread-related corruption issues. And it is a good way to find the [Readers and Writers problem](https://en.wikipedia.org/wiki/Readers%E2%80%93writers_problem) in your application.

<p align="right">
<a href="#-content">Back to Content</a>
</p>

## How to Use Thread Sanitizer

Go to this Option and Click **EDIT SCHEME...** 👈

<img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/address_sanitizer.png">

And then go to **RUN** and check **THREAD SANITIZER** 👈

<img src="https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/thread_sanitizer.png">

# Testing

## Five Factor Testing

[Five Factor Testing](https://madeintandem.com/blog/five-factor-testing/)



# Test Double

**Test Double is a generic term for any case where you replace a production object for testing purposes.**

 - Mocks - Mocks are pre-programmered with expectations which form a specification of the calls they are expected to receive. They can throw an exception if they receive a call they don't expect and are checked during verification to ensure they got all the calls they were expecting.

```swift
// exaple code will update
```


 - Fake - Objects actually have working implementations, but usually take some shortcut which makes them not suitable for production.

```swift
// exaple code will update
```

 - Spies - Spies are stubs that also record some information based on how they were called. One form of this might be an email service that records how many messages it was sent.

```swift
// exaple code will update
```

 - Stubs - Stubs provide canned answers to calls made during the test, usually not responding at all to anything outside what's programmed in for the test.

```swift
// exaple code will update
```

 - Dummy - Objects are passed around but never actually used. Usually they are just used to fill parameter lists.

```swift
// exaple code will update
```

# Useful Debugging Technique

[Debugging in Xcode 13: Tips & Tricks (2022) – iOS](https://www.youtube.com/watch?v=ZAqnJQn7xp4&list=LL&index=5&ab_channel=iOSAcademy)

## 1. Change expression in debugging stage

<img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/debugging_expression.png" width = "80%" height = "80%">

Use ```expression``` at the beginning and then add whatever what you want to change into. It will change in debugging stage 👍

## 2. Symbolic Breakpoint

If we want to know whenever hit certain function, use symbolic breakpoint



























# TDD

**Test Driven Development**

<img src="https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/TDD.png" width="30%" height="30%"/>

- [Why Test-Driven Development (TDD)](https://marsner.com/blog/why-test-driven-development-tdd/)

## Reduce Build Time

Normally in complicated Application, build time for testing is crazy therefore, TDD spent most of time in building the project.

Here are useful ways that we can reduce build time when we are working with TDD style.


### 1. tuist focus



### 2. Detach debugger in **Edit Scheme**

un-check Debugger option

<img src = "https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/detach_debuger.png"/>



## Check build time in Xcode

Enter below code in your terminal, be sure to **restart Xcode** after enter this code and **Command + B**

```shell
defaults write com.apple.dt.Xcode ShowBuildOperationDuration YES
```

<img src = "https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/show_build_time.png"/>










# BDD

<img src="https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/BDDvsTDD.png" width="70%" height="70%"/>

BDD improves communication between tech and non-tech teams and stakeholders. In BDD, tests are more user-focused and based on the system’s behavior.

**Behavior Driven Development**

 - Encouraging collaboration across roles to build shared understanding of the problem to be solved
 - Working in rapid, small iterations to increase feedback and the flow of value
 - Producing system documentation that is automatically checked against the system’s behaviour
 
 ## Three Steps(Iterative) in BDD 
 
 First, take a small upcoming change to the system – a User Story – and talk about concrete examples of the new functionality to explore, discover and agree on the details of what’s expected to be done.
 
Next, document those examples in a way that can be automated, and check for agreement.

Finally, implement the behaviour described by each documented example, starting with an automated test to guide the development of the code.

 - [Behaviour-Driven Development](https://cucumber.io/docs/bdd/)
 - [What is BDD? An Introduction to Behavioral Driven Development](https://blog.testlodge.com/what-is-bdd/)
 - [The WHY Behind the Code: BDD vs. TDD](https://saucelabs.com/blog/a-two-minute-bdd-overview)
 
# Code Coverage

Before start your Testing, add coverage will be a good option to show the result of test

First, check code coverage

<img src ="https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/addCoverage1.png"/>

Then, go to **EDIT SHEME**, check like this

<img src ="https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/addCoverage2.png"/>

# Integration Testing

[Integration Testing Swift by Sundell](https://www.swiftbysundell.com/articles/integration-tests-in-swift/)




# Unit Testing

[Unit Testing Swift by Sundell](https://www.swiftbysundell.com/basics/unit-testing/)


📚📚 Recommend Book 📚📚 

| Book Name   | Authors Name |
| :----------- | :----------- |
| iOS Unit Testing by Example | Jon Reid |

# UI Testing

UI Testing, also known as GUI Testing is basically a mechanism meant to test the aspects of any software that a user will come into contact with. This usually means testing the visual elements to verify that they are functioning according to requirements – in terms of functionality and performance. UI testing ensures that UI functions are bug-free.

- [UI Testing: A Detailed Guide](https://www.browserstack.com/guide/ui-testing-guide)
- [Your first UITest in Swift](https://uxdesign.cc/your-first-uitest-in-swift-847bc5595c26)


## Robot Testing

Robot testing is a test design pattern that makes you to create stable, readable, and maintainable tests.

<img src ="https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/robot_testing.png"/>

- [Robot Pattern Testing for XCUITest](https://www.capitalone.com/tech/software-engineering/robot-pattern-testing-for-xcuitest/)👍
- [Testing Robots- JAKE WHARTON](https://jakewharton.com/testing-robots/)
- [Robot Testing Pattern - Overview](https://www.youtube.com/watch?v=ykM9AiYtCz4&ab_channel=HandstandTechnologies)

## Snapshot Testing



























## TestFlight

TestFlight makes it easy to invite users to test your apps and App Clips and collect valuable feedback before releasing your apps on the App Store.

 - [TestFlight Apple](https://developer.apple.com/testflight/)




# CI/CD

CI and CD stand for continuous integration and continuous delivery/continuous deployment


 - [Why is CI/CD important?](#https://www.synopsys.com/glossary/what-is-cicd.html)
 - [What is CI/CD? Continuous integration and continuous delivery explained](#https://www.infoworld.com/article/3271126/what-is-cicd-continuous-integration-and-continuous-delivery-explained.html)
 - [What’s the difference between agile, CI/CD, and DevOps?](#https://www.synopsys.com/blogs/software-security/agile-cicd-devops-difference/)

## Fastlane

The easiest way to build and release mobile apps.

- [Fastlane](https://fastlane.tools/)
- [fastlane Tutorial: Getting Started](https://www.raywenderlich.com/233168-fastlane-tutorial-getting-started)

<img src ="https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/fastlane.png" />


## Jenkins

Jenkins is most popular CI/CD tools 

[Jenkins](https://www.jenkins.io/)


## Jira

Jira is project management software first and foremost, but it began its life in 2002 as an issue tracking platform for software developers

 - [Jira](https://www.atlassian.com/software/jira)
 - [What is Jira used for?](https://www.atlassian.com/software/jira/guides/use-cases/what-is-jira-used-for#Jira-for-requirements-&-test-case-management)
 - [What Is Jira: An Overview of a Unique Project Management Tool](https://www.fool.com/the-blueprint/what-is-jira/)


## CircleCI



[CircleCI](https://circleci.com/)


You can integrate Circle CI into Github repo, therefore we can use it in PR.

## Danger

[Danger](https://github.com/danger/danger)

- Danger runs after your CI, automating your team's conventions surrounding code review.

- This provides another logical step in your process, through this Danger can help lint your rote tasks in daily code review.

- You can use Danger to codify your team's norms, leaving humans to think about harder problems.



## Codemagic 

[Codemagic](https://codemagic.io/) - Build, test and deliver your mobile projects 20% faster. 


## Xcode Cloud

[WWDC21](https://www.apple.com/apple-events/june-2021/?&cid=wwa-us-kwgo-features-slid--Brand-AppleLive-Post-&mtid=20925e1t39169&aosid=p238&mnid=sZH3E0Pf0-dc_mtid_20925e1t39169_pcrid_524281987644_pgrid_129696028064_) Apple released [Xcode Cloud](https://developer.apple.com/xcode-cloud/) for continuous integration

For more info, go to [Apple Developer Website](https://developer.apple.com/documentation/Xcode/Xcode-Cloud)

<p align="right">
<a href="#-content">Back to Content</a>
</p>

# Tuist

- Tuist is a command line tool that helps you generate, maintain and interact with Xcode projects.

- [Tuist](https://docs.tuist.io/tutorial/get-started)
- [Tuist Github](https://github.com/tuist/tuist)
- [Tuist Tutorial for Xcode](https://www.raywenderlich.com/24508362-tuist-tutorial-for-xcode)


# In App Purchase(IAP)

**Requirement**

 - Full Apple Developoment Program($99)
 - Physical IPhone Device to test IAP
 > **Simulator can not test IAP!!**
 
## Paywall

<img src ="https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/paywall.jpeg" />

Paywall is a way to restrict access to their information so that only paying users can use it.
 
Lots of developer recommend  80% - (Paywall) - 20%

## Set Up

TBD

For more info about getting start of IAP, go [here](https://www.raywenderlich.com/5456-in-app-purchase-tutorial-getting-started) 📑

<p align="right">
<a href="#-content">Back to Content</a>
</p>

## Notification

 - Notifications are an integral way of conveying information to the user outside of an app.

 - Notifications can be either local or remote. The app on the device schedules and configures local notifications. In contrast, a server sends remote notifications using Apple Push Notification Service (APNS)

 - You can configure both local and remote notifications using the UserNotifications framework. 

## Local Notification

 - [Local Notifications: Getting Started](https://www.raywenderlich.com/21458686-local-notifications-getting-started)
 - [Swift Local Notification All-In-One](https://itnext.io/swift-local-notification-all-in-one-ee6027ea6e3)


If you set repeatation **less than 60 sec**, it will cause ERROR!

<img src ="https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/Repeatation_Error.png"/>

<p align="right">
<a href="#-content">Back to Content</a>
</p>

## Remote Notification

## APNs

APNS stands for **Apple Push Notification service**

## APNs Setting

First, go to **Signing & Capabilities** and add two features like this

<img src = "https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/apsn_Setting.png"/>

## APNs Usage

- [Push Notifications Tutorial: Getting Started](https://www.raywenderlich.com/11395893-push-notifications-tutorial-getting-started)


## FRP

Functional Reactive Programming 

## Rxswift

- [RxSwift raywenderlich](https://www.raywenderlich.com/books/rxswift-reactive-programming-with-swift/v4.0)
- [RxSwift](https://github.com/ReactiveX/RxSwift) - Github Repository
- [RxSwift](http://reactivex.io/intro.html) - Website

📚📚 Recommend Book 📚📚 

| Book Name   | Authors Name |
| :----------- | :----------- |
| RxSwift: Reactive Programming with Swift  | raywenderlich Tutorial Team |

<p align="right">
<a href="#-content">Back to Content</a>
</p>

## Combine

Combine released on iOS13 from Apple for Functional Reactive Programming. 

[Swiftbysundell](https://www.swiftbysundell.com/basics/combine/)

📚📚 Recommend Book 📚📚 

| Book Name   | Authors Name |
| :----------- | :----------- |
|  Combine: Asynchronous Programming with Swift | raywenderlich Tutorial Team |

## RxCombine

RxCombine provides bi-directional type bridging between RxSwift and Apple's Combine framework.

[RxCombine](https://github.com/CombineCommunity/RxCombine)






# Security

Security secure the data your app manages, and control access to your app.

Check below for more detail about iOS Security as well as Application security

 - [Introduction to Apple platform security](https://support.apple.com/ko-kr/guide/security/seccd5016d31/web)
 - [iOS Security](https://www.cse.wustl.edu/~jain/cse571-14/ftp/ios_security/index.html) 
 - [Apple Developer Doc about Security](https://developer.apple.com/documentation/security)
 - [iOS App Security: Best Practices](https://quickbirdstudios.com/blog/ios-app-security-best-practices/)

<p align="right">
<a href="#-content">Back to Content</a>
</p>

## Checklist For App Security

 - [ ] Keychain For Sensitive Data Storage
 - [ ] Application Transport Security Layer(TSL)
 - [ ] SSL Pinning 
 - [ ] Jailbroken Device Check
 - [ ] Disable Debug Logs
 - [ ] Third-Party Library Usage Check 
 - [ ] Code Obfuscation
 - [ ] Cryptography 
 - [ ] Biometric Access
 
## Keychain

 - [Storing Keys in the Keychain](https://developer.apple.com/documentation/security/certificate_key_and_trust_services/keys/storing_keys_in_the_keychain)
 - [Keychain raywenderlich](https://www.raywenderlich.com/9240-keychain-services-api-tutorial-for-passwords-in-swift)

## SSL Pinning

<img src = "https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/SSLCertificate.png"/>

When a mobile app communicates with a server, it uses SSL(Secure Socket Layer) pinning technique for protecting the transmitted data against tampering and eavesdropping.

 - [Preventing Man-in-the-Middle Attacks in iOS with SSL Pinning](https://www.raywenderlich.com/1484288-preventing-man-in-the-middle-attacks-in-ios-with-ssl-pinning)
 - [How to Perform SSL Pinning in iOS Apps](https://appinventiv.com/blog/ssl-pinning-in-ios-app/)

## How SSL Works

1. A browser attempts to connect with a website which is secured with a SSL. The browser then requests the web server to identify itself.
2. Web server then sends the browser its SSL certificate copy.
3. The browser checks if the SSL certificate must be trusted. If it can be, a message is sent to the web server.
4. Web server then sends back an acknowledgement to begin the SSL encrypted session.
5. The encrypted data is then finally shared between the browser and web server.

## SSL pinning methods

 - Pin the certificate – you can download the server’s certificate and bundle them in the app. At the runtime, the app compares the server certificate to ones that you have embedded. 
 - Pin the public key – you can retrieve the public key of certificate in the code as string. At the runtime, the application compared the certificate’s public key to one which is hard-coded in the code. 

## Using URLSession

```swift
func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
    if (challenge.protectionSpace.authenticationMethod == NSURLAuthenticationMethodServerTrust) {
        if let serverTrust = challenge.protectionSpace.serverTrust {
            var secresult = SecTrustResultType.invalid
            let status = SecTrustEvaluate(serverTrust, &secresult)
            
            if (errSecSuccess == status) {
                if let serverCertificate = SecTrustGetCertificateAtIndex(serverTrust, 0) {
                    let serverCertificateData = SecCertificateCopyData(serverCertificate)
                    let data = CFDataGetBytePtr(serverCertificateData);
                    let size = CFDataGetLength(serverCertificateData);
                    let cert1 = NSData(bytes: data, length: size)
                    let file_der = Bundle.main.path(forResource: "name-of-cert-file", ofType: "cer")
                    
                    if let file = file_der {
                        if let cert2 = NSData(contentsOfFile: file) {
                            if cert1.isEqual(to: cert2 as Data) { completionHandler(URLSession.AuthChallengeDisposition.useCredential, URLCredential(trust:serverTrust))
                                return
                            }
                        }
                    }
                }
            }
        }
    }
    
    // Pinning failed completionHandler(URLSession.AuthChallengeDisposition.cancelAuthenticationChallenge, nil)
}
```

## Using Alamofire 5

If you are using above version, this code should be changed

[More Info](https://devgenes.com/posts/SSL-Pinning-With-Alamofire/)

First, Download SSL certificate to your project folder
> https://www.yourdomain.com (NOT IN THIS WAY)

```bash
openssl s_client -showcerts -connect yourdomain.com:443 < /dev/null | openssl x509 -outform DER > yourdomain.cer
```

Make a SessionManager to get SSL Pinning

```swift

let sessionManager: SessionManager = {
    let serverTrustPolicies: [String: ServerTrustPolicy] = ["yourdomain.com": .pinCertificates(certificates: ServerTrustPolicy.certificates(),
                                                                                                validateCertificateChain: true,
                                                                                                validateHost: true)]
    
    return SessionManager(serverTrustPolicyManager: ServerTrustPolicyManager(policies: serverTrustPolicies))
}()
```

request from sessionManager, if it is invalid, print error

```swift
sessionManager.request("https://yourdomain.com").responseString { (dataResponse) in
    switch dataResponse.result {
    case .failure(let err):
        print(err)
    case .success(let val):
        print(val)
        if let headerFields = dataResponse.response?.allHeaderFields {
            print(headerFields)
        }
    }
}
```

### Relative Stuff
TrustKit makes it easy to deploy SSL public key pinning

[TrustKit](https://github.com/datatheorem/TrustKit)

## Code Obfuscation

Code obfuscation is the act of deliberately obscuring source code, making it very difficult for humans to understand, and making it useless to hackers who may have ulterior motives.

## Cryptography

[Introducing Swift Crypto](https://swift.org/blog/crypto/)

## Biometric Access

Apple made a big change when it released the iPhone X: It ditched Touch ID fingerprint security for a new face-based biometric sign-on tool called Face ID. The fingerprint scanner on most post-iPhone X Apple products is gone, and in its place is a new camera array capable of capturing a face map that is, according to Apple, 20 times less likely to be hacked than a Touch ID fingerprint.

[Apple's Face ID: Cheat sheet](https://www.techrepublic.com/article/apples-face-id-everything-iphone-x-users-need-to-know/)

## Face ID & Touch ID

To use Face ID, Add **Privacy - Face ID Usage Description** into your info.plist file in your project

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/FaceID_Info.png" width = "50%" height = "50%"/>

import LocalAuthentication, which can allow you to implement Biometric Access

```swift
import LocalAuthentication
```

After that, using LAContext() we can implement Face ID

Here are simple example that how Face ID can impelement

```swift
@IBAction private func isTouched(_ sender: UIButton!) {
        let context = LAContext()
        var error: NSError? = nil
        if  context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "touch id"
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { [weak self](success, error) in
                DispatchQueue.main.async {
                   
                    guard success, error == nil else {
                        // If Fail
                        let alert  = UIAlertController(title: "FAceID Fail", message: "error", preferredStyle: .alert)
                        let action = UIAlertAction(title: "cancle", style: .cancel, handler: nil)
                        alert.addAction(action)
                        self?.present(alert, animated: true, completion: nil)
                        return
                    }
                    // If success
                    let vc = UIViewController()
                    vc.title = "hi"
                    vc.view.backgroundColor = .blue
                    self?.present(vc, animated: true, completion: nil)
                }
            }
        } else {
            // If device is not supporting Face ID
        }
    }
```
> Error Handling is your own part

**You are GOOD TO GO**  👏👏👏

<p align="right">
<a href="#-content">Back to Content</a>
</p>

## Objective-C

Still we need to study Objective-C for legacy code which is still remain in our project! 

Here are some useful website that you can study about simple concept of Obj-C!!

[Learn Objective-C in 24 Days](https://www.binpress.com/learn-objective-c-24-days/)

📚📚 Recommend Book 📚📚 

| Book Name   | Authors Name |
| :----------- | :----------- |
| Objective-C Programming: The Big Nerd Ranch Guide | Aaron Hillegass, Mikey Ward |

### Pure Swift Application?

Can we really say "Our application is built with pure Swift"?. NO! Lots of Objective-C codes are running in the background to built swift.

Here is a example that you can try 

**Simply create a pure swift application and use this lines in debug console!!**

```swift
break set -r "-\[.*\]"
break set -r DebugMode
break set -r Emoji
```

Use one of above line when you want to find out how many Objective-C codes are consist in simple pure swift application!!

<img src="https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/ObjcBreakPoint.png" />

<p align="right">
<a href="#-content">Back to Content</a>
</p>

## Bridging Header

Bridging header means access classes and other declarations from your Objective-C code in Swift.

[Importing Objective-C into Swift Apple Documentation](https://developer.apple.com/documentation/swift/imported_c_and_objective-c_apis/importing_objective-c_into_swift)


<p align="right">
<a href="#-content">Back to Content</a>
</p>

# Error Search

Find your common error here

[Error Search](https://github.com/jphong1111/Useful_Swift/blob/error-search/README.md)






























# Useful Stuff

I listed some of the useful & interesting stuff related with Swift

<p align="right">
<a href="#-content">Back to Content</a>
</p>

## Useful Blogs for iOS Developers

Here are the useful blog list which you can get references & knowledges about iOS development

- [SwiftLee](https://www.avanderlee.com/) 👍
- [Apple Developer](https://developer.apple.com/videos/) Find recent technique with videos and example codes!!
- [appinventiv](https://appinventiv.com/blog/) Including iOS and others!! 
- Continue adding lists...


## How to submit your app to the AppStore
    
   - [Publishing to AppStore](https://codewithchris.com/submit-your-app-to-the-app-store/#apple-developer-program)
   - [StoreKit](https://developer.apple.com/documentation/storekit)
   - [What is a provisioning profile & code signing in iOS?](https://abhimuralidharan.medium.com/what-is-a-provisioning-profile-in-ios-77987a7c54c2)
  
## iOS Version Adoption Tracker

You can check the iOS Version adoption in this site

[iOS Version Adoption Tracker](https://mixpanel.com/trends/#report/ios_15)


<img src="https://github.com/jphong1111/awesome-ios-developer/blob/main/Images/iosVersionAdoption.png" />

<p align="right">
<a href="#-content">Back to Content</a>
</p>


## Online Swift Playground

[SwiftPlayground](http://online.swiftplayground.run/) -  Online Swift Playground

## Show Preview in UIKit(Build UI with Code Base) 👍 👍 👍 👍 👍

[Inject (3rd Party Library)](https://github.com/krzysztofzablocki/Inject)

Copy this code and Paste into your controller

```swift
#if canImport(SwiftUI) && DEBUG
import SwiftUI
struct SwiftLeeViewRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        return UIStoryboard(name: "Main", bundle: Bundle.main).instantiateInitialViewController()!.view
    }
    
    func updateUIView(_ view: UIView, context: Context) {
        
    }
}

@available(iOS 13.0, *)
struct SwiftLeeViewController_Preview: PreviewProvider {
    static var previews: some View {
        SwiftLeeViewRepresentable()
    }
}
#endif
```


Enable canvas option like this

<img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/preview%20using%20canvas.png">

<img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/preivew_screenShot.png">


**You are GOOD TO GO**  👏👏👏

## Compare Changes in Swift Version

You can compare changes based on Swift Verison

[Whatsnewinswift](https://www.whatsnewinswift.com/?from=5.3&to=5.4)

## Managing Xcode Space

This will be helful when you are running out of storage in your mac

```bash
# 1
echo "Removing Derived Data..."
rm -rf ~/Library/Developer/Xcode/DerivedData/

# 2
echo "Removing Device Support..."
rm -rf ~/Library/Developer/Xcode/iOS\ DeviceSupport
rm -rf ~/Library/Developer/Xcode/watchOS\ DeviceSupport
rm -rf ~/Library/Developer/Xcode/tvOS\ DeviceSupport

# 3
echo "Removing old simulators..."
xcrun simctl delete unavailable

# 4
echo "Removing caches..."
rm -rf ~/Library/Caches/com.apple.dt.Xcode
rm -rf ~/Library/Caches/org.carthage.CarthageKit

# 5
if command -v pod  &> /dev/null
then
    # 6
    pod cache clean --all
fi

echo "Done!"
```

After writing, run it with this command

```bash
chmod u+x clean-xcode.sh
```

And then

```script
./clean-xcode.sh
```

**This will cleans out derived data, device support, simulators and caches. So that once you execute it, You have to build your project AGAIN**

For More Info, visit [here](https://www.raywenderlich.com/19998365-understanding-and-managing-xcode-space)

<p align="right">
<a href="#-content">Back to Content</a>
</p>

## Roadmap for iOS Developer

check this out [here](https://github.com/BohdanOrlov/iOS-Developer-Roadmap)

## Use VIM in Xcode

 Check [this](https://www.twilio.com/blog/2017/06/adding-vim-keybindings-to-xcode-with-xvim.html) site for more info!
 
 ~~Since Xcode 13(BETA), you can find Vim in **Preference -> Text Editing -> Editing -> Enable Vim Key bindings**~~
 this feature deprecated in Xcode 13(BETA)
<img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/Vim.png">


## Write README.md

[how-to-write-a-readme](https://medium.com/@saumya.ranjan/how-to-write-a-readme-md-file-markdown-file-20cb7cbcd6f) will help you to write a README.md file more dynamically 👍

Also you can edit Readme.md file with VSCode Extension! Check out in VSCode!

[Markdown Preview Enhanced](https://github.com/shd101wyy/markdown-preview-enhanced)

<p align="right">
<a href="#-content">Back to Content</a>
</p>

# ❤ Supporters

## ⭐ Stargazers

<a href="https://github.com/jphong1111/awesome-ios-developer/stargazers">
<img src="https://reporoster.com/stars/jphong1111/awesome-ios-developer"></a>

## 🍴 Forks

<a href="https://github.com/jphong1111/awesome-ios-developer/fork">
<img src="https://reporoster.com/forks/jphong1111/awesome-ios-developer"></a>

## 🌟 GitHub Stargazers

[![Stargazers over time](https://starchart.cc/jphong1111/useful_swift.svg)](https://starchart.cc/jphong1111/awesome-ios-developer) 


## Author

This README.md file is written by **Jungpyo Hong (Dennis)**
email: ghdwjdvy96@gmail.com

<p align="right">
<a href="#-content">Back to Content</a>
</p>


