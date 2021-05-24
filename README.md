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
- [Coding Convention](#Coding-convention)
    - [Swift Lint](#Swift-lint)
- [Design Pattern](#Design-Pattern)
    - [Delegation](#Delegation)
    - [Singleton](#Singleton)
    - [Observer](#Observer)
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
    - [Image Downloader](#Image-Downloader)
    - [Location Manager](#Location-Manager)
- [API](#API)	
- [JSON](#JSON)
- [UserDefaults](#UserDefaults)
    - [How to find documentDirectory](#How-to-find-documentDirectory)
- [Core Data](#Core-Data)
    - [Set Up Core Data](#Set-Up-Core-Data)
- [Third Party Library](#Third-Party-Library)
- [GCD](#GCD)
    - [DispatchQueue](#DispatchQueue)
    - [DispatchGroup](#DispatchGroup)
    - [DispatchWorkItem](#DispatchWorkItem)
    - [Thread Sanitizer](#Thread-Sanitizer)
- [Testing](#Testing)
    - [Code Coverage](#Code-Coverage)
    - [Unit Test](#Unit-Test)
    - [UI Test](#UI-Test)
- [IAP](#IAP)
- [APNS](#APNS)
- [FRP](#FRP)
- [Error Search](#Error-Search)
- [Useful Stuff](#Useful-Stuff)
    - [Show Preview in UIKit(Build UI with Code Base)](#show-preview-in-uikitbuild-ui-with-code-base-----)
    - [Write README.md](#write-readmemd)
    - [Roadmap for iOS Developer](#Roadmap-for-iOS-Developer)


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

### Delegation

```swift
weak var delegate: SomeProtocol?
```

### Singleton


```swift
class SingletonPattern {
    static let manager = SingletonPattern()
    
    private init() {}
}
```

### Observer

The observer pattern lets one object observe changes on another object. Apple added language-level support for this pattern in Swift 5.1 with the addition of Publisher in the Combine framework.

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/observer.png" />

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

## Image Downloader

There is no file for Image Downloader.

To download images into device, only thing is this

```swift
if let data = try? Data(contentsOf: urls),
   let image = UIImage(data: data) {
   UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
}
```
Just **change urls into your image URL**

> UIImageWriteToSavedPhotosAlbum will take care it to download to device.

> For more info go [here](https://www.hackingwithswift.com/example-code/media/uiimagewritetosavedphotosalbum-how-to-write-to-the-ios-photo-album)

Good To GO 👏👏👏

## Location Manager

- [Location Manager](https://github.com/jphong1111/Useful_Swift/tree/main/Helper/LocationHandler/LocationManager.swift)

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
 
### JSONSerialization

JSONSerialization is a old way of decode the JSON file

### Various API Site
- [rapidAPI](https://www.rapidapi.com)

## UserDefaults

The UserDefaults class provides a programmatic interface for interacting with the defaults system. Check [Apple Document](https://developer.apple.com/documentation/foundation/userdefaults) for more info
> UserDefaults has to have **key-value** pair

### When do we use UserDafaults

- User information, like name, email address, age, occupation
- App settings, like user interface language, app color theme or “detailed vs. simple UI”
- Flags, more on this later
- If store data is small 

### How to find documentDirectory 

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

### Usage

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

**You are GOOD TO GO**  👏👏👏

## Core Data

Use Core Data to save your application’s permanent data for offline use, to cache temporary data, and to add undo functionality to your app on a single device.

<img src = "https://github.com/jphong1111/Useful_Swift/blob/main/Images/DataStoreInSwift.png" width = "50%" height = "50%"/>

> Image From London App Brewery

### Set Up Core Data

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

## Usage

Once you create your DataModel file, you can simply create a **Entity(Class)** and **Attributes(Properties)**

And then, change the type of attributes in inspector like this

<img src = ""/>

CoreDataClass, CoreDataProperties are located in below

 /Users/dennis/Library/Developer/Xcode/DerivedData/CoreDataUserDefaultPractice-hisefjfyuvglrjekndpftwazftug/Build/Intermediates.noindex/CoreDataUserDefaultPractice.build/Debug-iphonesimulator/CoreDataUserDefaultPractice.build/DerivedSources/CoreDataGenerated/CoreDataUserDefaultPractice 


**You are GOOD TO GO**  👏👏👏

## Third Party Library
[This github](https://github.com/vsouza/awesome-ios) contains all the popular libraries in Swift:+1:

Recommand Useful Library
- [SDWebImage] - Download and set image Library
- [Hero] - Various kind of animation with using Segue
- [Alamofire] - Network Layer tool
- [RxSwift] - Reactive Programming in Swift


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

## Testing

Before start your Testing, add coverage will be a good option to show the result of test

### Code Coverage

First, check code coverage

<img src ="https://github.com/jphong1111/Useful_Swift/blob/main/Images/addCoverage1.png" />

Then, go to **EDIT SHEME**, check like this

<img src ="https://github.com/jphong1111/Useful_Swift/blob/main/Images/addCoverage2.png" />

### Unit Test

### UI Test

## IAP

IAP stands for **In App Purchase**

## APNS

APNS stands for **Apple Push Notification service**

## FRP

Functional Reactive Programming a.k.a [RxSwift](https://github.com/ReactiveX/RxSwift)

## Error Search

Find your common error here

[Error Search](https://github.com/jphong1111/Useful_Swift/blob/error-search/README.md)

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

## Roadmap for iOS Developer

check this out [here](https://github.com/BohdanOrlov/iOS-Developer-Roadmap)

## Author

This README.md file is written by **Jungpyo Hong (Dennis)**
email: ghdwjdvy96@gmail.com
