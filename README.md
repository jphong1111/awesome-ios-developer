# Useful Swift Things

<div align="center">
    <img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/swift.jpeg">
</div>
<p>
</p>
<p align="center">
    <img src="https://img.shields.io/badge/-OneDayOneCommit-critical?style=plastic&logo=swift" />
</p>

## Content
- [Coding convention](#Coding-convention)
    - [Swift Lint](#Swift-lint)
- [Design Pattern](#Design-Pattern)
    - [Delegate](#Delegate)
    - [Singleton](#Singleton)
    - [Observer](#Observer-Pattern)
- [Code Structuring](#Code-Structuring)
    - [MVC](#MVC)
    - [MVVM](#MVVM)
    - [VIPER](#VIPER)
- [UIDesign](#UIDesign)
- [Helper](#Helper)
    - [Email, Message, Call](#email-message-call)
    - [Network Layer](#Network-Layer)
    - [Image Picker](#Image-Picker)
    - [File Manager](#File-Manager)
    - [Video Downloader](#Video-Downloader)
    - [Location Manager](#Location-Manager)
- [API](#API)	
- [JSON](#JSON)
- [Third Party Library](#Third-Party-Library)
- [GCD](#GCD)
    - [DispatchQueue](#DispatchQueue)
    - [DispatchGroup](#DispatchGroup)
    - [DispatchWorkItem](#DispatchWorkItem)
    - [Thread Sanitizer](#Thread-Sanitizer)
- [Useful Stuff](#Useful-Stuff)
    - [Show Preview in UIKit(Build UI with Code Base)](#show-preview-in-uikitbuild-ui-with-code-base-----)
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

## Design Pattern
Design pattern is

Check [this](https://refactoring.guru/design-patterns/swift) website for design pattern in Swift

### Delegate Pattern

```swift
weak var delegate: SomeProtocol?
```

### Singleton Pattern


```swift
class SingletonPattern {
    static let manager = SingletonPattern()
    
    private init() {}
}
```

### Observer Pattern


## Code Structuring

### MVC

<img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/MVCModel.png">

### MVVM

##### MVC vs MVVM

<img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/MVVMvsMVC.png">

M -> Model – Which holds the application data

V –> View – It displays the data that is stored in model. These are visual elements through which a user interacts. These are subclasses of UIView

VM –> View Model – Transform model information/data and it interacts with controller or view to display those informations.

C –> Controller class – It will be there but the responsibility of view business logic has been removed and give to view model


### VIPER

## UIDesign

### HIG(Human Interface Guidelines)
- [Apple UI Kit](https://developer.apple.com/documentation/uikit)
- [iOS Design Guide](https://ivomynttinen.com/blog/ios-design-guidelines)

### iOS icon 

- [icon8](https://icons8.com/) You can download icons imge for your **APP**
- [appicon](https://appicon.co/) generate the app icon size

### UIdesign inspiration

- [dribble](https://dribbble.com/)
- [pinterest](https://pinterest.com/)
- [behance](https://www.behance.net/)
- [pttrns](https://pttrns.com/)
- [awwwards](https://www.awwwards.com/)
- [flickr](http://www.flickr.com/)
- [mobbin](https://mobbin.design/)

## Helper

All files are resuable files and protocol oriented. **Just Copy and Paste inside your project and use it!!** 👍
 
## Email, Message, Call

You can check the file in the follow link

- [Email, Message, Call](https://github.com/jphong1111/Useful_Swift/blob/main/Helper/ConversationManager.swift) 

### Usage
import MesaageUI first

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


This reusable network layer files for referenced from [here](https://medium.com/flawless-app-stories/writing-network-layer-in-swift-protocol-oriented-approach-4fa40ef1f908)

## Image Picker

- [Image Picker](https://github.com/jphong1111/Useful_Swift/blob/main/Helper/ImagePicker.swift) 

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

- [File Manager](https://github.com/jphong1111/Useful_Swift/blob/main/Helper/FileManageHelper.swift) 

### Usage

Copy and Paste in your project 

```swift
let readData = FileManageHelper.manager.readFile(filename: fileNameTextField.text ?? "", type: extensionTextField.text ?? "")
resultTextField.text = readData
```
> File Manager are wrote with singleton pattern, therefore no need to declare in side your code!

Good To GO 👏👏👏

## Video Downloader

- [Video Downloader](https://github.com/jphong1111/Useful_Swift/blob/main/Helper/VideoManager.swift) 

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

## Location Manager

- [Location Manager](https://github.com/jphong1111/Useful_Swift/blob/main/Helper/LocationManager.swift)

## API

API(Application Programming Interface) is an interface that defines interactions between multiple software applications or mixed hardware-software intermediaries. It defines the kinds of calls or requests that can be made, how to make them, the data formats that should be used, the conventions to follow, etc.

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

### JSON Decoding

To use JSON Decoding in swift, you have to define the model to be Codable or Decodable

```swift
public typealias Codable = Decodable & Encodable
```

> Decodable can only decode the json data. Can't encoded json file!!

```swift
struct User: Codable {
    var first_name: String
    var last_name: String
    var country: String
}
```

### JSONSerialization

### Various API Site
- [rapidAPI](https://www.rapidapi.com)

## GCD
GCD(Grand Central Dispatch) is a low-level API for managing concurrent operations. It can help you improve your app’s responsiveness by deferring computationally expensive tasks to the background.

### DispatchQueue
An object that manages the execution of tasks serially or concurrently on your app's main thread or on a background thread.

#### main
We can say main is a serial queue

#### global()
We can say global is a concurrent queue

### DispatchGroup

### DispatchWorkItem

### Thread Sanitizer
Thread Sanitizer is a tool to identifies the potential thread-related corruption issues. And it is a good way to find the [Readers and Writers problem](https://en.wikipedia.org/wiki/Readers%E2%80%93writers_problem) in your application.

#### How to Use Address Sanitizer

Go to this Option and Click **EDIT SCHEME...** 👈

<img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/address_sanitizer.png">

And then go to **RUN** and check **THREAD SANITIZER** 👈

<img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/thread_sanitizer.png">

## Third Party Library
[This github](https://github.com/vsouza/awesome-ios) contains all the popular libraries in Swift:+1:

## Useful Stuff

### Show Preview in UIKit(Build UI with Code Base) 👍 👍 👍 👍 👍

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

**You are GOOD TO GO**  👏👏👏

<img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/preivew_screenShot.png">

## Write README.md

[This](https://medium.com/@saumya.ranjan/how-to-write-a-readme-md-file-markdown-file-20cb7cbcd6f) will help you to write a README.md file more dynamically 👍

## Author

This README.md file is written by **Jungpyo Hong (Dennis)**
