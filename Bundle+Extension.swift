import Foundation

private class MyClass {}

extension Bundle {
    static var myClass: Bundle = {
        #if DEBUG && SWIFT_PACKAGE
        let bundleName = "MyClass"
        let candidates = [
            /* Bundle should be present here when the package is linked into an App. */
            Bundle.main.resourceURL,
            /* Bundle should be present here when the package is linked into a framework. */
            Bundle(for: MyClass.self).resourceURL,
            /* For command-line tools. */
            Bundle.main.bundleURL,
            /* Bundle should be present here when running previews from a different package (this is the path to "…/Debug-iphonesimulator/"). */
            Bundle(for: MyClass.self).resourceURL?.deletingLastPathComponent().deletingLastPathComponent(),
            /* Bundle should be present here when running previews from a framework which imports framework whick imports PhoneNumberKit package (this is the path to "…/Debug-iphonesimulator/"). */
            Bundle(for: MyClass.self).resourceURL?.deletingLastPathComponent()
        ]
        for candidate in candidates {
            let bundlePath = candidate?.appendingPathComponent(bundleName + ".bundle")
            if let bundle = bundlePath.flatMap(Bundle.init(url:)) {
                return bundle
            }
        }
        #endif
        
        #if SWIFT_PACKAGE
        return Bundle.module
        #else
        return Bundle(for: MyClass.self)
        #endif
    }()
}
