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
- [API](#API)	
- [JSON](#JSON)
- [Third Party Library](#Third-Party-Library)



## Coding convention
set of guidelines for a specific programming language that recommend programming style

### Swift Style Guide

- [Swift Style Guide](https://github.com/linkedin/swift-style-guide)

### Swift Lint
The way of force you to adapt coding convention 
>otherwise project build will **FAILED**
- [Swift Lint](https://github.com/realm/SwiftLint) apply for all project:+1:

put .yml file into root folder and apply following code in Build Phases

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
## Code Structuring

### MVC

<div align="center">
    <img src="https://github.com/jphong1111/Useful_Swift/blob/main/Images/MVCModel.png">
</div>

### MVVM

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
        },
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
