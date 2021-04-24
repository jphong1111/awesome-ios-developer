# Useful Swift Things

<div align="center">
    <img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/swift.jpeg">
</div>


## Content
- [Coding convention](#Coding-convention)
- [Design Pattern](#Design-Pattern)
    - [Delegate](#Delegate)
    - [Singleton](#Singleton)
- [Code Structuring](#Code-Structuring)
    - [MVC](#MVC)
    - [MVVM](#MVVM)
- [UIDesign](#UIDesign)
- [Helper](#Helper)
- [API](#API)	
- [JSON](#JSON)
- [Third Party Library](#Third-Party-Library)
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


### Viper

## UIDesign

### HIG(Human Interface Guidelines)
- [Apple UI Kit](https://developer.apple.com/documentation/uikit)

### iOS icon 

- [icon8](https://icons8.com/) you can download icons for your **APP**

### UIdesign inspiration

- [dribble](https://dribbble.com/)
- [pinterest](https://pinterest.com/)
- [behance](https://www.behance.net/)
- [pttrns](https://pttrns.com/)
- [awwwards](https://www.awwwards.com/)
- [flickr](http://www.flickr.com/)
- [mobbin](https://mobbin.design/)

## Helper

You can check the file in the follow link

- [Email, Message, Call](https://github.com/jphong1111/Useful_Swift/blob/main/Helper/ConversationManager.swift) 
### Usage
import MesaageUI first

```swift
import MessageUI
```

Then use it

```swift
    lazy var manager = ConversationManager(presentingController: self, mailDelegate: self, messageDelegate: self )
    
    func sendEmail() -> MFMailComposeViewController {
        manager.sendEmail(feedback: MailFeedback(recipients: ["abcd@example.com"], subject: "Sample", body: "Write body"))
    }
    
    func sendMessage() -> MFMessageComposeViewController {
        manager.sendMessage(feedback: MessageFeedBack(recipients: ["1111111111"], body: "Type here"))
    }
    
    func call() {
        manager.makeCall(number: "1111111111")
    }
```

## API

### Various API Site
- [rapidAPI](https://www.rapidapi.com)

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

### JSONSerialization


## Third Party Library
[This github](https://github.com/vsouza/awesome-ios) contains all the popular libraries in Swift:+1:

## Useful Stuff

### Show Preview in UIKit(Build UI with Code Base) 👍 👍 👍 👍 👍

Copy this code and Paste into your controller

```swift
import SwiftUI

struct ViewControllerRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = ViewController

    func makeUIViewController(context: Context) -> ViewController {
        return ViewController()
    }

    func updateUIViewController(_ uiViewController: ViewController, context: Context) { 
    }
}

@available(iOS 13.0.0, *)
struct ViewPreview: PreviewProvider {
    static var previews: some View {
        ViewControllerRepresentable()
    }
}
```

Enable canvas option like this

<img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/preview%20using%20canvas.png">

**You are GOOD TO GO**  👏👏👏

<img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/preivew_screenShot.png">

## Write README.md

[This](https://medium.com/@saumya.ranjan/how-to-write-a-readme-md-file-markdown-file-20cb7cbcd6f) will help you to write a README.md file more dynamically 👍
