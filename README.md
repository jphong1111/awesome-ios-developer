# Awesome iOS Developer

<p align="center">
  <a href="https://awesome.re">
    <img alt="Awesome" src="https://awesome.re/badge.svg">
  </a>
</p>

<p align="center">
  A practical, opinionated field guide for building high-quality iOS apps with Swift.
</p>

This repository is a map, not a checklist.
Start with the fundamentals, build a small app end to end, and return to the deeper topics when a real problem gives them context.

The guide favors first-party frameworks, official documentation, measurable engineering practices, and dependencies that solve a demonstrated need.
It also keeps UIKit, Objective-C interoperability, Core Data, Combine, and older package managers visible because production iOS work often includes mature codebases.

## 🔎 Contents

- [Start Here](#-start-here)
- [Swift and Xcode](#-swift-and-xcode)
- [Application and UI Fundamentals](#-application-and-ui-fundamentals)
- [State, Architecture, and Navigation](#-state-architecture-and-navigation)
- [Concurrency](#-concurrency)
- [Networking](#-networking)
- [Persistence](#-persistence)
- [System Capabilities](#-system-capabilities)
- [Dependencies and Modularization](#-dependencies-and-modularization)
- [Testing](#-testing)
- [Debugging, Performance, and Observability](#-debugging-performance-and-observability)
- [Accessibility and Localization](#-accessibility-and-localization)
- [Security and Privacy](#-security-and-privacy)
- [CI/CD and Team Workflow](#-cicd-and-team-workflow)
- [Distribution and Monetization](#-distribution-and-monetization)
- [Legacy Code and Interoperability](#-legacy-code-and-interoperability)
- [Learning Resources](#-learning-resources)
- [Contributing](#-contributing)
- [Author](#author)

## 🚀 Start Here

### A sensible learning order

| Stage | Learn | Build |
| --- | --- | --- |
| 1. Language | Swift syntax, value and reference semantics, protocols, generics, optionals, errors, and collections | A command-line or playground model |
| 2. Tools | Xcode, Simulator, Git, breakpoints, schemes, build settings, and Swift Package Manager | A small app that builds from a clean checkout |
| 3. Interface | SwiftUI, UIKit basics, layout, navigation, state, and the Human Interface Guidelines | A multi-screen app with loading, empty, error, and content states |
| 4. Data | `Codable`, `URLSession`, persistence, caching, and dependency injection | An app that works with both remote and local data |
| 5. Reliability | Swift concurrency, unit tests, UI tests, accessibility, localization, and observability | A tested feature that handles cancellation and failure |
| 6. Delivery | Code signing, CI, TestFlight, privacy declarations, and App Store review | A beta build delivered to testers |

### The default stack

Use this as a starting point, not as a rule that every app must follow.

| Need | Start with | Reach for something else when |
| --- | --- | --- |
| UI | [SwiftUI](https://developer.apple.com/documentation/swiftui) | UIKit offers required control, platform coverage, or integration |
| Imperative UI and mature apps | [UIKit](https://developer.apple.com/documentation/uikit) | SwiftUI clearly reduces complexity for the feature |
| Concurrency | Swift `async`/`await`, tasks, actors, and `Sendable` | A lower-level primitive is justified by measurement or interoperability |
| Networking | `URLSession`, `Codable`, and HTTP caching | The app has a proven need for a networking abstraction |
| Preferences | `UserDefaults` or SwiftUI app storage | The data is sensitive, relational, large, or user-created |
| Secrets | [Keychain Services](https://developer.apple.com/documentation/security/keychain_services) | A server should own the secret instead of the app |
| Structured persistence | [SwiftData](https://developer.apple.com/documentation/swiftdata) | Core Data better fits deployment targets, migrations, or an existing store |
| Unit tests | [Swift Testing](https://developer.apple.com/documentation/testing) | Existing XCTest coverage or an XCTest-only capability makes migration unnecessary |
| UI and performance tests | [XCTest and XCUITest](https://developer.apple.com/documentation/xctest) | A focused third-party tool provides measurable value |
| Dependencies | [Swift Package Manager](https://docs.swift.org/swiftpm/documentation/packagemanagerdocs/) | A legacy dependency is only distributed another way |
| Logging | [`Logger`](https://developer.apple.com/documentation/os/logging) and unified logging | A backend observability product is required |

### What “production ready” means

- The app handles loading, empty, offline, error, cancellation, and retry states deliberately.
- The main thread stays responsive and shared mutable state has an explicit isolation strategy.
- Tests protect important behavior, while analytics, logs, and crash reports make failures diagnosable.
- Accessibility, localization, privacy, and security are part of feature design rather than release-week cleanup.
- CI can reproduce the build from a clean checkout.
- A human can explain every dependency, permission, entitlement, and piece of collected data.

## 🧑‍💻 Swift and Xcode

### Swift

- [The Swift Programming Language](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/) is the canonical language guide.
- [Swift API Design Guidelines](https://www.swift.org/documentation/api-design-guidelines/) explains how Swift APIs should read at the call site.
- [Swift Evolution](https://www.swift.org/swift-evolution/) records accepted and proposed language changes.
- [Swift Forums](https://forums.swift.org/) is the best place to understand language design and implementation discussions.

Focus on these concepts before collecting framework recipes:

- Value semantics, copy-on-write behavior, identity, and ownership.
- Optionals and error propagation without force-unwrapping normal failure states.
- Protocols and generics for real substitution, not abstraction for its own sake.
- Access control and module boundaries.
- Closures, capture semantics, and avoiding accidental retain cycles.
- `async`/`await`, actor isolation, `Sendable`, cancellation, and task lifetime.
- Memory ownership with strong, weak, and unowned references.

### Style and static analysis

Consistency matters more than allegiance to one style guide.
Automate rules that are objective and leave design judgment to review.

- [Swift.org API Design Guidelines](https://www.swift.org/documentation/api-design-guidelines/)
- [Google Swift Style Guide](https://google.github.io/swift/)
- [SwiftLint](https://github.com/realm/SwiftLint)
- [swift-format](https://github.com/swiftlang/swift-format)

Do not make a build depend on a developer’s globally installed formatter or linter without documenting and pinning the expected version.
Swift Package plugins, a repository tool installer, or CI-managed tooling make clean checkouts more reproducible.

### Xcode

Learn the tool instead of treating it as a Run button.

- Targets describe products that Xcode builds.
- Schemes describe actions such as Run, Test, Profile, Analyze, and Archive.
- Build configurations describe groups of settings such as Debug and Release.
- `.xcconfig` files keep build settings reviewable and reduce configuration drift.
- Test plans organize test configurations, languages, locales, sanitizers, and execution policies.
- The Organizer surfaces archives, crashes, hangs, energy use, and distributed performance data.

Useful official references:

- [Xcode documentation](https://developer.apple.com/documentation/xcode)
- [Xcode release notes](https://developer.apple.com/documentation/xcode-release-notes)
- [Sample code](https://developer.apple.com/documentation/samplecode)
- [WWDC videos](https://developer.apple.com/videos/)

### Git and repository hygiene

- Commit one coherent change at a time.
- Keep generated files, local user data, build products, and credentials out of source control.
- Review `Package.resolved` changes as dependency changes, not noise.
- Prefer small pull requests with a clear purpose, validation evidence, and rollback path.
- Protect the default branch with required reviews and required CI checks.

## 📱 Application and UI Fundamentals

### Application lifecycle

A modern app may use SwiftUI lifecycle APIs, UIKit lifecycle APIs, or both.

- SwiftUI apps define an entry point with the [`App`](https://developer.apple.com/documentation/swiftui/app) protocol and organize UI through scenes.
- UIKit apps use `UIApplicationDelegate`, `UISceneDelegate`, windows, and view controllers.
- Background execution is constrained by the system, so save durable state when it changes instead of relying on termination callbacks.
- Scene phase changes are signals to pause, resume, refresh, or persist work, not guarantees about future lifecycle events.

### SwiftUI

SwiftUI is Apple’s declarative UI framework across Apple platforms.
Its core skill is not memorizing modifiers; it is understanding identity, data flow, layout proposals, navigation state, and update behavior.

Learn:

- View identity and the difference between view values and stored model state.
- `@State`, bindings, environment values, and the Observation framework.
- `NavigationStack`, sheets, popovers, alerts, and state-driven presentation.
- Lists, grids, custom layouts, animation, gestures, focus, and keyboard behavior.
- Previews as a fast feedback tool rather than a substitute for tests.
- UIKit interoperability through representable types and hosting controllers.

Recommended references:

- [SwiftUI documentation](https://developer.apple.com/documentation/swiftui)
- [SwiftUI tutorials](https://developer.apple.com/tutorials/swiftui)
- [Managing model data in your app](https://developer.apple.com/documentation/swiftui/managing-model-data-in-your-app)
- [SwiftUI performance](https://developer.apple.com/documentation/xcode/understanding-and-improving-swiftui-performance)

### UIKit

UIKit remains important for mature applications, specialized controls, established navigation stacks, and APIs that expose UIKit-first integration points.

Learn:

- View-controller containment and presentation.
- Auto Layout, intrinsic content size, content hugging, and compression resistance.
- Collection views and diffable data sources.
- Trait collections, adaptive layout, Dynamic Type, and appearance changes.
- Reuse, prefetching, cell configuration, and scrolling performance.
- Responder-chain, event, focus, and keyboard behavior.

Recommended references:

- [UIKit documentation](https://developer.apple.com/documentation/uikit)
- [View controller programming guide](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/)
- [Auto Layout guide](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/)

### Design

The [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/) should be the first design reference.
Respect platform behavior before creating custom interaction patterns.

Design and asset tools:

- [SF Symbols](https://developer.apple.com/sf-symbols/)
- [Figma](https://www.figma.com/)
- [Sketch](https://www.sketch.com/)
- [Mobbin](https://mobbin.com/) for product pattern research
- [App Icon Generator](https://www.appicon.co/) for asset preparation

Check every important screen with:

- Small and large devices.
- Portrait and landscape when supported.
- Light and dark appearances.
- Larger accessibility text sizes.
- Right-to-left layout.
- Long translated strings.
- Reduced motion and increased contrast.
- Offline, empty, loading, and failure states.

## 🧭 State, Architecture, and Navigation

Architecture should make change safer.
It should not exist to maximize the number of folders, protocols, or diagrams.

### Start with boundaries

For a small feature, three responsibilities are often enough:

1. Presentation renders state and forwards user intent.
2. Domain logic decides what the feature means and how state changes.
3. Data access talks to remote services, persistence, and system APIs.

Keep dependencies pointing inward toward policy and domain behavior.
Create protocols at boundaries where substitution, testing, or multiple implementations are real requirements.

### Dependency injection

Initializer injection should be the default because it makes dependencies explicit and allows immutable storage.
Property and method injection are useful when lifecycle or framework integration requires them.
A composition root should assemble the concrete dependency graph near the application entry point.

Avoid using a service locator or global singleton as invisible dependency injection.
Shared stateless services can be reasonable, but shared mutable state needs explicit ownership and isolation.

### Common patterns

| Pattern | Useful when | Watch for |
| --- | --- | --- |
| MVC | The feature is small and framework conventions already provide the separation | Massive view controllers and business logic tied to UIKit |
| MVVM | Presentation state and transformations deserve a testable model | View models that become an entire application layer |
| Coordinator or Router | Navigation policy is complex or reused | Navigation abstractions that mirror UIKit without simplifying it |
| Reducer or unidirectional flow | State transitions, effects, and replayable tests are valuable | Boilerplate for simple screens |
| Repository | Multiple data sources need one domain-facing interface | Generic CRUD repositories that erase useful domain meaning |
| Adapter | An external or legacy API does not match the interface the feature needs | Wrapping every dependency without a concrete mismatch |
| Factory | Construction varies and callers should not know concrete types | A factory with one permanent branch |
| Observer | One-to-many change propagation is inherent to the problem | Unbounded subscriptions, unclear ownership, and hidden control flow |

Architecture references:

- [The Composable Architecture](https://github.com/pointfreeco/swift-composable-architecture)
- [Swift Dependencies](https://github.com/pointfreeco/swift-dependencies)
- [Refactoring.Guru Swift patterns](https://refactoring.guru/design-patterns/swift)
- [Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)

No architecture is automatically “clean.”
Judge it by dependency direction, testability, clarity, build performance, and how safely the team can change behavior.

### Navigation

- Model navigation as state when deep links, restoration, or tests need deterministic behavior.
- Keep URL parsing and route authorization separate from view construction.
- Validate external deep links and universal links as untrusted input.
- Decide which feature owns dismissal, cancellation, and returned results.
- Test cold-start and already-running deep-link flows.

## ⚡ Concurrency

Swift concurrency is the default model for new asynchronous Swift code.

Learn:

- `async` functions and `await` suspension points.
- Structured child tasks and task groups.
- Actor isolation and `@MainActor`.
- `Sendable` and safe transfers between isolation domains.
- Cancellation as a normal control-flow event.
- `AsyncSequence` for streams of values.
- Continuations for carefully bridging callback APIs.

Rules of thumb:

- Keep UI state on the main actor.
- Do not block the main actor with synchronous I/O, waiting, or expensive computation.
- Prefer structured tasks whose lifetime follows the operation that created them.
- Check cancellation before expensive or user-irrelevant work.
- Avoid `Task.detached` unless the work truly should not inherit actor, priority, task-local values, or cancellation.
- Treat `@unchecked Sendable` as a reviewed safety assertion, not a compiler escape hatch.
- Use actors to protect shared mutable state when actor isolation fits the access pattern.
- Measure before replacing clear actor-based code with locks or custom executors.

Grand Central Dispatch, locks, operation queues, and semaphores remain relevant for legacy code, framework interoperability, and specialized synchronization.
Do not mix concurrency models casually or assume a serial queue automatically makes an entire object safe.

References:

- [Concurrency in The Swift Programming Language](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/concurrency/)
- [`Sendable`](https://developer.apple.com/documentation/swift/sendable)
- [Migrating to Swift concurrency](https://developer.apple.com/documentation/swift/adoptingswift6)

## 🌐 Networking

Start with `URLSession`, `Codable`, `HTTPURLResponse`, and Swift concurrency.
Add an abstraction when the app needs consistent authentication, retries, caching, metrics, decoding, or endpoint construction.

```swift
enum APIError: Error {
    case invalidResponse
}

let (data, response) = try await URLSession.shared.data(for: request)

guard let httpResponse = response as? HTTPURLResponse,
      200..<300 ~= httpResponse.statusCode else {
    throw APIError.invalidResponse
}

let model = try JSONDecoder().decode(Model.self, from: data)
```

Production networking needs more than a successful JSON decode:

- Define request and response contracts.
- Map transport, HTTP, decoding, authentication, cancellation, and domain errors separately.
- Set timeouts intentionally.
- Respect HTTP caching and conditional requests.
- Retry only operations that are safe to repeat, with limits, delay, and jitter.
- Propagate cancellation when a screen or operation no longer needs the response.
- Redact authorization headers, tokens, personal data, and request bodies from logs.
- Monitor latency, status codes, payload size, and failure rate without collecting unnecessary user data.
- Test malformed payloads, missing fields, server errors, offline behavior, slow responses, and cancellation.

Never ship a privileged API secret in an iOS application.
Anything in the app bundle or process should be treated as recoverable by an attacker.
Keep privileged credentials and authorization decisions on a server you control.

Useful references:

- [`URLSession`](https://developer.apple.com/documentation/foundation/urlsession)
- [`Codable`](https://developer.apple.com/documentation/swift/codable)
- [Network framework](https://developer.apple.com/documentation/network)
- [Alamofire](https://github.com/Alamofire/Alamofire) when its feature set justifies the dependency

## 💾 Persistence

Choose storage from data semantics, not familiarity.

| Data | Appropriate starting point |
| --- | --- |
| Small preferences and feature flags | `UserDefaults` |
| Credentials, tokens, and small secrets | Keychain Services |
| User-created documents | Documents directory or a document-based API |
| Re-creatable downloads and derived files | Caches directory |
| Structured object graph for a modern deployment target | SwiftData |
| Mature object graph, advanced migrations, or existing store | Core Data |
| Cross-device Apple ecosystem sync | CloudKit, directly or through a supported persistence integration |

### UserDefaults

`UserDefaults` is for preferences and small property-list values.
It is not a database, secure storage, or a good home for large encoded object graphs.
Use `UserDefaults.standard` unless an app group or a dedicated suite is required.

### File system

Use [`FileManager`](https://developer.apple.com/documentation/foundation/filemanager) URLs instead of hard-coded paths.
Choose Documents, Application Support, Caches, or temporary storage according to ownership, backup behavior, and whether the data can be recreated.
Use atomic writes where partial files would be harmful.

### SwiftData

[SwiftData](https://developer.apple.com/documentation/swiftdata) integrates a model layer with Swift and SwiftUI.
Evaluate deployment targets, migration needs, CloudKit behavior, query complexity, and testability before choosing it.

### Core Data

[Core Data](https://developer.apple.com/documentation/coredata) is an object graph and persistence framework, not simply a SQLite wrapper.
The backing store is an implementation choice, and managed objects belong to their managed object context.

Important topics:

- Persistent containers, contexts, and save propagation.
- Queue confinement and concurrency.
- Fetch requests, predicates, sorting, batching, and faulting.
- Unique constraints, relationships, inverse relationships, and delete rules.
- Lightweight and custom migration.
- Persistent history and remote changes when multiple writers exist.
- In-memory stores for focused tests.

Avoid fetching a global context through `UIApplication.shared.delegate`.
Inject a persistence boundary or context appropriate to the feature and execution domain.

## 🧩 System Capabilities

Add a capability because the product needs it, then study its lifecycle, permissions, background behavior, and failure modes.

| Capability | Framework or starting point |
| --- | --- |
| Local and remote notifications | [UserNotifications](https://developer.apple.com/documentation/usernotifications) |
| Push delivery | [Apple Push Notification service](https://developer.apple.com/documentation/usernotifications/setting-up-a-remote-notification-server) |
| Location | [Core Location](https://developer.apple.com/documentation/corelocation) |
| Bluetooth Low Energy | [Core Bluetooth](https://developer.apple.com/documentation/corebluetooth) |
| Photos and limited-library access | [PhotoKit](https://developer.apple.com/documentation/photokit) |
| Camera and media capture | [AVFoundation](https://developer.apple.com/av-foundation/) |
| Biometrics and device-owner authentication | [LocalAuthentication](https://developer.apple.com/documentation/localauthentication) |
| Background work | [BackgroundTasks](https://developer.apple.com/documentation/backgroundtasks) |
| Widgets and controls | [WidgetKit](https://developer.apple.com/documentation/widgetkit) |
| Live Activities | [ActivityKit](https://developer.apple.com/documentation/activitykit) |
| Siri, Shortcuts, Spotlight, and system actions | [App Intents](https://developer.apple.com/documentation/appintents) |
| Health data | [HealthKit](https://developer.apple.com/documentation/healthkit) |
| Maps | [MapKit](https://developer.apple.com/documentation/mapkit) |
| Purchases and subscriptions | [StoreKit](https://developer.apple.com/storekit/) |

Request permission in context, explain the benefit before the system prompt, and make denial a supported product state.
Include accurate usage-description strings for protected resources.
Do not request capabilities “for later.”

### Notifications

- Ask for authorization at a moment when the user understands the value.
- A local repeating notification must use a valid interval and system-supported trigger.
- Remote notification delivery is not guaranteed and should not be the only source of durable state.
- Keep device tokens associated with the correct environment, app, user, and installation.
- Treat notification payloads and deep-link values as untrusted input.

### Biometrics

Use `LAContext` to evaluate a policy, and handle unavailable, unenrolled, locked-out, canceled, and fallback states.
Biometrics authenticate device ownership or presence; they do not replace server-side authorization.
Store protected secrets in the Keychain with an access-control policy appropriate to the product.

## 📦 Dependencies and Modularization

### Swift Package Manager first

[Swift Package Manager](https://docs.swift.org/swiftpm/documentation/packagemanagerdocs/) is the default dependency manager for new Swift code.
Use CocoaPods or Carthage when maintaining a project or integrating a dependency that still requires them.

Before adding a dependency, check:

- Whether an Apple framework or a small amount of clear code already solves the problem.
- Maintenance activity and response to security issues.
- License compatibility.
- Supported platforms and toolchains.
- Transitive dependencies.
- Binary size and build-time cost.
- Concurrency annotations and strict-concurrency readiness.
- Privacy manifest and required-reason API declarations.
- Migration and removal cost.

Review dependency updates like code changes.
Pin according to the project’s risk tolerance, keep the resolved graph in source control for applications, and automate update visibility.

### Useful packages and tools

These are options to evaluate, not a default shopping list.

| Project | Purpose |
| --- | --- |
| [SwiftLint](https://github.com/realm/SwiftLint) | Enforce selected Swift style and correctness rules |
| [swift-format](https://github.com/swiftlang/swift-format) | Format Swift source |
| [SwiftGen](https://github.com/SwiftGen/SwiftGen) | Generate type-safe resource access |
| [Periphery](https://github.com/peripheryapp/periphery) | Detect unused Swift code |
| [Alamofire](https://github.com/Alamofire/Alamofire) | Networking features and request abstraction |
| [Kingfisher](https://github.com/onevcat/Kingfisher) | Image downloading and caching |
| [SDWebImage](https://github.com/SDWebImage/SDWebImage) | Image loading and caching across Apple UI frameworks |
| [The Composable Architecture](https://github.com/pointfreeco/swift-composable-architecture) | Reducer-based application architecture |
| [swift-dependencies](https://github.com/pointfreeco/swift-dependencies) | Dependency management designed for testability |
| [swift-snapshot-testing](https://github.com/pointfreeco/swift-snapshot-testing) | Snapshot tests for values and UI |
| [Quick](https://github.com/Quick/Quick) and [Nimble](https://github.com/Quick/Nimble) | Behavior-style test organization and matchers |
| [Swift Collections](https://github.com/apple/swift-collections) | Additional data structures |
| [Swift Algorithms](https://github.com/apple/swift-algorithms) | Sequence and collection algorithms |

### Modularization

Modules should express ownership and dependency boundaries.
They are not automatically an improvement.

Modularize when it provides one or more of these benefits:

- Independent ownership or release.
- Enforced access control.
- Reuse across products.
- Smaller test and build scopes.
- Isolation of volatile infrastructure.
- A stable feature or domain boundary.

Track build time before and after modularization.
An excessive module graph can increase configuration, dependency, and linking costs.

Useful tools:

- [Tuist](https://tuist.dev/) for generated projects, workspaces, caching, and project automation.
- [XcodeGen](https://github.com/yonaskolb/XcodeGen) for generating Xcode projects from specifications.
- [XCFrameworks](https://developer.apple.com/documentation/xcode/creating-a-multi-platform-binary-framework-bundle) for distributing multi-platform binary frameworks.
- [DocC](https://www.swift.org/documentation/docc/) for API and conceptual documentation.

## 🧪 Testing

Tests should protect behavior that matters and make refactoring safer.
A large test count is not evidence of useful coverage.

### Choose the right layer

| Test | Best for | Avoid |
| --- | --- | --- |
| Unit | Pure logic, reducers, transformations, validation, and edge cases | Re-testing framework behavior |
| Integration | Persistence, networking boundaries, decoding, migrations, and module contracts | Calling uncontrolled production services |
| UI | Critical user journeys and system integration | Reproducing every unit-level branch through the UI |
| Snapshot | Stable visual or structural output | Treating every pixel change as a regression |
| Performance | Launch, scrolling, algorithms, persistence, and memory-sensitive behavior | Thresholds that are noisy on shared CI hardware |

### Swift Testing and XCTest

Use [Swift Testing](https://developer.apple.com/documentation/testing) for new Swift unit tests when it fits the project.
It supports parameterization, traits, tags, concurrency, and flexible suite organization.

Use [XCTest](https://developer.apple.com/documentation/xctest) for UI tests, performance tests, Objective-C tests, and existing suites.
Swift Testing and XCTest can coexist during incremental migration, but do not mix their APIs inside one test.

### Test doubles

- A dummy fills an unused parameter.
- A stub returns controlled answers.
- A spy records interactions for later verification.
- A mock verifies expected interactions.
- A fake provides a working but simplified implementation, such as an in-memory repository.

Prefer a fake or stub that expresses behavior over a brittle mock of implementation details.

### UI testing

- Use accessibility identifiers only where semantic queries are insufficient.
- Keep screen interaction behind small robot or page objects when it improves readability.
- Reset state deterministically.
- Disable uncontrolled animations or network dependencies through launch configuration.
- Capture screenshots and logs on failure.
- Test permissions, deep links, interruptions, and relaunch behavior where they affect critical journeys.

### Accessibility testing

Run Accessibility Inspector audits and automate appropriate checks with XCUITest.
Automated audits catch common issues but do not replace VoiceOver, Switch Control, keyboard, and real-device testing.

### StoreKit testing

Use a StoreKit configuration for local development and deterministic tests.
Use the sandbox and TestFlight to validate App Store Connect products and server interactions.
Test success, cancellation, pending approval, failed purchase, restore, refund, renewal, expiration, grace period, and interrupted transactions.

References:

- [Testing and performance overview](https://developer.apple.com/documentation/technologyoverviews/testing-and-performance)
- [Organizing tests with test plans](https://developer.apple.com/documentation/xcode/organizing-tests-to-improve-feedback)
- [StoreKit Test](https://developer.apple.com/documentation/storekittest)
- [Testing in-app purchases in Xcode](https://developer.apple.com/documentation/storekit/testing-in-app-purchases-in-xcode)

## 🐛 Debugging, Performance, and Observability

### Debugging

Learn these Xcode tools:

- Source, symbolic, exception, and runtime-issue breakpoints.
- LLDB commands such as `po`, `p`, `expression`, `bt`, and breakpoint commands.
- View hierarchy debugger.
- Memory graph debugger.
- Address Sanitizer, Thread Sanitizer, and Undefined Behavior Sanitizer.
- Main Thread Checker and Thread Performance Checker.
- Network and file activity instruments.
- Crash and hang reports in Organizer.

Never “fix” a race by adding arbitrary delay.
Reproduce it, identify the ownership or isolation violation, and leave a test or diagnostic that would catch the regression.

### Performance

Measure on a representative physical device with an optimized build.
Simulator results are useful for iteration but do not represent device CPU, GPU, memory pressure, thermal behavior, or power use.

Watch:

- Launch and first-interaction latency.
- Hangs, hitches, and main-thread work.
- Scrolling and animation frame time.
- Memory growth, leaks, retain cycles, and termination pressure.
- Disk and network I/O.
- Battery and thermal impact.
- Download size, installed size, and on-demand resources.

Use [Instruments and Xcode performance tools](https://developer.apple.com/documentation/xcode/performance-and-metrics) before guessing.

### Logging and metrics

Use unified logging through `Logger`.
Choose subsystem, category, and level deliberately.
Mark sensitive interpolated values as private and avoid logging secrets or full payloads.

Use signposts for important intervals that need Instruments correlation.
Use [MetricKit](https://developer.apple.com/documentation/metrickit) and Xcode Organizer to understand behavior on distributed builds.
Use crash reporting and product analytics only with clear privacy rules, retention, and consent where required.

## ♿ Accessibility and Localization

### Accessibility

Accessibility is a product requirement.
Build with semantic system controls first, then add custom accessibility behavior where the UI needs it.

Verify:

- Useful labels, values, hints, traits, actions, and focus order.
- Dynamic Type without clipping or hiding essential actions.
- Sufficient contrast without relying on color alone.
- VoiceOver reading order and rotor behavior.
- Reduce Motion, Reduce Transparency, Bold Text, and Increased Contrast.
- Switch Control, Voice Control, Full Keyboard Access, and external keyboards where relevant.
- Captions, transcripts, and alternatives for meaningful audio or visual content.

References:

- [Accessibility](https://developer.apple.com/accessibility/)
- [Accessibility for SwiftUI](https://developer.apple.com/documentation/swiftui/accessibility)
- [Accessibility for UIKit](https://developer.apple.com/documentation/uikit/accessibility)
- [Performing accessibility audits](https://developer.apple.com/documentation/accessibility/performing-accessibility-audits-for-your-app)

### Localization

Localization includes language, pluralization, grammar, layout direction, calendars, dates, times, numbers, names, units, and culturally appropriate assets.

Use [String Catalogs](https://developer.apple.com/documentation/xcode/localizing-and-varying-text-with-a-string-catalog) for new Xcode projects.
Provide translator comments and avoid constructing user-facing sentences from fragments.
Use `FormatStyle` and locale-aware Foundation formatters instead of hand-built date or number strings.

Test:

- Every supported language and a pseudolanguage.
- Long strings and large text.
- Right-to-left layout.
- Singular, plural, and grammatical variants.
- Non-Gregorian calendars and 12/24-hour time where product behavior depends on them.
- Region-specific prices, decimal separators, measurement systems, and names.

References:

- [Localization](https://developer.apple.com/localization/)
- [Preparing text for translation](https://developer.apple.com/documentation/xcode/preparing-your-apps-text-for-translation)
- [Editing XLIFF and String Catalog files](https://developer.apple.com/documentation/xcode/editing-xliff-and-string-catalog-files)

## 🔐 Security and Privacy

Security is risk management, not a checklist of tricks.
Start with a threat model: identify assets, trust boundaries, attackers, abuse cases, and the impact of failure.

### Baseline

- Minimize collected data and retention.
- Keep authorization decisions and privileged credentials on the server.
- Use TLS and App Transport Security without broad exceptions.
- Store small secrets in the Keychain with appropriate accessibility and access-control settings.
- Use CryptoKit or other reviewed platform cryptography instead of designing cryptographic algorithms.
- Validate every server response, deep link, file, pasteboard value, notification payload, and imported document.
- Redact secrets and personal data from logs, analytics, screenshots, and crash metadata.
- Review third-party SDK behavior, privacy manifests, signatures, licenses, and transitive dependencies.
- Keep development menus, debug endpoints, and verbose logging out of production builds.
- Handle compromised credentials and server-side revocation.

### Transport security and pinning

[App Transport Security](https://developer.apple.com/documentation/security/preventing-insecure-network-connections) enforces secure connection requirements by default.
Use narrowly scoped exceptions only when a documented compatibility requirement leaves no safer option.

Certificate or public-key pinning adds operational risk.
Use it only when the threat model justifies it and the team can support backup pins, certificate rotation, expiration, incident recovery, and remote failure.
Do not copy deprecated `SecTrustEvaluate` examples or assume pinning replaces normal trust evaluation.

### Keychain and cryptography

- [Using the Keychain to manage user secrets](https://developer.apple.com/documentation/security/using-the-keychain-to-manage-user-secrets)
- [CryptoKit](https://developer.apple.com/documentation/cryptokit)
- [LocalAuthentication](https://developer.apple.com/documentation/localauthentication)

### Privacy

Privacy work includes both product behavior and App Store declarations.

- Maintain accurate App Privacy answers in App Store Connect.
- Include valid privacy manifests and required-reason API declarations where applicable.
- Audit included SDKs because their collection and required-reason APIs become part of the app.
- Ask for protected-resource access only when the feature needs it.
- Provide account and data deletion flows where policy or law requires them.
- Make consent specific and avoid dark patterns.

References:

- [Privacy manifest files](https://developer.apple.com/documentation/bundleresources/privacy-manifest-files)
- [Adding a privacy manifest](https://developer.apple.com/documentation/bundleresources/adding-a-privacy-manifest-to-your-app-or-third-party-sdk)
- [User privacy and data use](https://developer.apple.com/app-store/user-privacy-and-data-use/)
- [Apple Platform Security](https://support.apple.com/guide/security/welcome/web)
- [OWASP Mobile Application Security](https://mas.owasp.org/)

Obfuscation and jailbreak detection can raise the cost of analysis, but neither establishes a trustworthy device.
Treat them as optional defense-in-depth controls, not security boundaries.

## 🔄 CI/CD and Team Workflow

CI should make the repository reproducible and the default branch trustworthy.

A useful pull-request pipeline:

1. Resolve dependencies from a clean checkout.
2. Build supported configurations.
3. Run formatting and lint checks.
4. Run unit and integration tests.
5. Run selected UI, accessibility, and performance tests.
6. Scan for secrets and vulnerable dependencies.
7. Archive or export a build when distribution behavior matters.
8. Publish concise logs, test results, and artifacts.

Keep signing material and credentials in the CI provider’s protected secret store.
Use short-lived credentials or workload identity when supported.
Do not run secret-bearing workflows against untrusted pull-request code.

Tools:

- [Xcode Cloud](https://developer.apple.com/xcode-cloud/)
- [GitHub Actions](https://docs.github.com/actions)
- [fastlane](https://fastlane.tools/)
- [Tuist](https://tuist.dev/)
- [Danger](https://danger.systems/) for deterministic review conventions
- [Codemagic](https://codemagic.io/)
- [CircleCI](https://circleci.com/)

### Build performance

Treat build time as a measured developer-experience metric.

- Inspect Xcode build timing summaries and dependency graphs.
- Keep run-script phases deterministic and declare their inputs and outputs.
- Avoid unnecessary code generation and always-run scripts.
- Measure type-checking and module-boundary changes.
- Cache only artifacts that are safe and correctly keyed.
- Use project-generation focus or selective-build features only after measuring the bottleneck.

## 🚢 Distribution and Monetization

### Code signing

Understand:

- Bundle identifiers, App IDs, certificates, provisioning profiles, entitlements, and capabilities.
- Development, Ad Hoc, TestFlight, App Store, and enterprise distribution differences.
- Automatic signing versus intentionally managed signing in CI.
- Export compliance and privacy requirements.

References:

- [Code signing](https://developer.apple.com/support/code-signing/)
- [App distribution](https://developer.apple.com/documentation/xcode/distributing-your-app-for-beta-testing-and-releases)
- [App Store Connect Help](https://developer.apple.com/help/app-store-connect/)

### TestFlight

[TestFlight](https://developer.apple.com/testflight/) distributes beta builds and collects feedback before release.
Test migration, account, notification, background, purchase, and server-compatibility behavior on TestFlight rather than assuming a development build is equivalent.

### App Store

Read the [App Review Guidelines](https://developer.apple.com/app-store/review/guidelines/) before implementation decisions become expensive.
Validate metadata, screenshots, privacy answers, support URLs, account deletion, review notes, and demo credentials before submission.

### StoreKit and subscriptions

Use [StoreKit 2](https://developer.apple.com/storekit/) for modern Swift purchase flows.
Model entitlement state independently from the paywall UI.
Verify transactions, finish processed transactions, listen for updates, restore access, and design for purchases that occur on another device or outside the app.

Testing does not require a physical device for every stage.
StoreKit Testing in Xcode supports local purchase scenarios, while sandbox and TestFlight cover App Store-connected behavior.

Useful references:

- [Setting up StoreKit Testing in Xcode](https://developer.apple.com/documentation/xcode/setting-up-storekit-testing-in-xcode)
- [Testing purchases with sandbox](https://developer.apple.com/documentation/storekit/testing-in-app-purchases-with-sandbox)
- [App Store Server API](https://developer.apple.com/documentation/appstoreserverapi)
- [App Store Server Notifications](https://developer.apple.com/documentation/appstoreservernotifications)
- [Subscriptions and offers](https://developer.apple.com/app-store/subscriptions/)

Test renewal, expiration, cancellation, refund, revocation, billing retry, grace period, upgrade, downgrade, restore, Ask to Buy, and interrupted transactions.
Do not unlock durable server-owned value based only on an unverified client boolean.

## 🧱 Legacy Code and Interoperability

Production iOS development often includes APIs and patterns that are no longer the first choice for a new app.
Learn enough to maintain them safely before attempting a migration.

### Objective-C

Understand:

- Header and implementation files.
- Categories, protocols, delegates, blocks, and nullability.
- Dynamic dispatch, selectors, KVC, and KVO.
- ARC ownership and retain-cycle behavior.
- Bridging headers and generated Swift interfaces.
- Module maps and framework boundaries.

References:

- [Using imported C and Objective-C APIs in Swift](https://developer.apple.com/documentation/swift/using-imported-c-and-objective-c-apis-in-swift)
- [Importing Objective-C into Swift](https://developer.apple.com/documentation/swift/importing-objective-c-into-swift)

Do not describe a Swift app as free of Objective-C runtime or C-family foundations merely because the application target contains only `.swift` files.
That fact rarely affects product architecture, so investigate it only when interoperability, runtime behavior, or debugging makes it relevant.

### Frameworks and patterns you may inherit

- UIKit storyboards and nibs.
- Core Data.
- Objective-C modules.
- CocoaPods and Carthage.
- GCD and `OperationQueue`.
- Combine and RxSwift.
- MVC, MVVM, VIPER, coordinators, and custom routers.
- Custom networking and persistence layers.

Migration rule: preserve behavior first, add characterization tests, move one boundary at a time, and measure the result.
A rewrite is not automatically simpler than the code it replaces.

## 📚 Learning Resources

### Apple and Swift

- [Apple Developer Documentation](https://developer.apple.com/documentation/)
- [Apple Developer Videos](https://developer.apple.com/videos/)
- [Apple Sample Code](https://developer.apple.com/documentation/samplecode)
- [Develop in Swift Tutorials](https://developer.apple.com/tutorials/develop-in-swift)
- [Swift.org Documentation](https://www.swift.org/documentation/)
- [Swift Forums](https://forums.swift.org/)
- [Swift Evolution](https://www.swift.org/swift-evolution/)
- [Swift Package Index](https://swiftpackageindex.com/)

### Community

- [Swift by Sundell](https://www.swiftbysundell.com/)
- [SwiftLee](https://www.avanderlee.com/)
- [Hacking with Swift](https://www.hackingwithswift.com/)
- [Point-Free](https://www.pointfree.co/)
- [objc.io](https://www.objc.io/)
- [NSHipster](https://nshipster.com/)
- [iOS Dev Weekly](https://iosdevweekly.com/)
- [Storefront Brief](https://fortune-insight.onrender.com/shop/brief/index.html) - English weekly on iOS/indie App Store fees, ASO, and storefront ops. [RSS](https://fortune-insight.onrender.com/shop/brief/feed.xml) · [Issue 1](https://fortune-insight.onrender.com/shop/brief/issue-001-en.html)
- [Use Your Loaf](https://useyourloaf.com/)
- [Kodeco](https://www.kodeco.com/ios)
- [Donny Wals](https://www.donnywals.com/)

### Discovery

- [awesome-ios](https://github.com/vsouza/awesome-ios)
- [Swift package ecosystem](https://www.swift.org/packages/)
- [WWDC Index](https://nonstrict.eu/wwdcindex/)
- [iOS Developer Roadmap](https://github.com/BohdanOrlov/iOS-Developer-Roadmap)

Prefer a recent official source when framework behavior, platform policy, security, privacy, or App Store requirements matter.
Community material is most valuable for explanation, tradeoffs, and experience reports.

## Contributing

Contributions are welcome.

Before adding a link or recommendation, check that:

- It teaches a durable concept or solves a real iOS engineering problem.
- The technical claim is current and can be verified.
- The project is maintained or clearly labeled as legacy.
- The description explains why the resource is useful.
- A first-party framework does not already cover the need more simply.
- The license, privacy, and security implications are acceptable.
- The addition fits an existing section or justifies a new one.

Keep pull requests focused.
When correcting a technical claim, include the official source used to verify it.

If this guide helps you, star the repository or open an issue with a concrete improvement.

## Author

Created and maintained by **Jungpyo Hong (Dennis)**.

- GitHub: [@jphong1111](https://github.com/jphong1111)
- Email: [ghdwjdvy96@gmail.com](mailto:ghdwjdvy96@gmail.com)
