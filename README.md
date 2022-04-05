# **Using SwiftUI with Storyboard**

## **A different approach to develop Xcode iOS projects**

### Index:

- Motivation
- Project Description
- Into the Code
- Conclusion

### Motivation

In this article I want to try to use SwiftUI together with Storyboard to understand what are the advantages and limitations of this integration.

The integration of SwiftUI’s View into the Storyboard development environment with UIKit is widely used. This is because in a real environment there are complex projects built in UIKit since 2008 and the conversion cost to SwiftUI is too high, even today there are not all the components and compatible APIs in SwiftUI.

My initial skills for this example are limited to knowing the MVVC pattern

### Project Description

I will be using the UIHostingController extensively. ([https://developer.apple.com/documentation/swiftui/uihostingcontroller](https://developer.apple.com/documentation/swiftui/uihostingcontroller)).

It is a very powerful tool made available by Apple and allows you to embed View SwiftUI in UIKit. In a sense it is a UIViewController.

The strategy will be to create an Xcode project with Storyboard and UIKit, eliminate the classic viewController from the newly created storyboard and add a UIHostingController and create a way of communication between the view and the view controller.

The navigation, organization and hierarchy of the views will be managed through the Storyboard,

The following example implements a non modal page, also called half modal page (currently not feasible exclusively in SwiftUI), with SwiftUI view and UIKit navigation.

### Into the Code

After creating an Xcode project using Storyboard and Swift, I deleted everything that was by default in the storyboard file (main).

I added the UIHostingControllers and create the associated SwiftUI classes.

I linked the two controllers with a follow that presents the view as modal.

I created the closure to link the modal opening action.

### Conclusion

In the GitHub project I created a (non-modal) half page modal that contains a SwiftUI view starting from another SwiftUI view.

The project, during the study week, changed shape and substance several times in a very natural way and the process made me understand the concrete limits and advantages of using this approach.

Using the UIHostingController component I understood its potential, it allows a fully functional integration of SwiftUI within UIKit, and it is possible to implement something that is not currently native in the new API.

The communication between two API classes so different is managed through the Closures([https://docs.swift.org/swift-book/LanguageGuide/Closures.html](https://docs.swift.org/swift-book/LanguageGuide/Closures.html)) that I knew in a theoretical and application way in Python through my previous experience of implementing graphical interfaces in pyGTK and now familiar also in Swift.

Furthermore, a simple navigation between views is allowed in a few steps, with a classic implementation in Storyboard via the navigation view controller and the Segue action.

I reserve the use of UIHostingController in a project that implements navigation and more complex use cases for future studies and tests to understand if this approach can be continued.

At this time, this project has led me to understand that this little Design Pattern could be the basis of the creation/conversion of projects where UIKit is the basis but new views are being built in SwiftUI and you find yourself in a point where it is not It is possible to completely convert the View due to the lack of the UIKit counterpart in SwiftUI.
