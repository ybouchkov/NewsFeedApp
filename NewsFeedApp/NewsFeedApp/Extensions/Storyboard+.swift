//
//  Storyboard+.swift
//  NewsFeedApp
//
//  Created by Yani Buchkov on 2.04.18.
//  Copyright © 2018 Mr Bouchkov. All rights reserved.
//

import UIKit

protocol StoryboardInstantiable: NSObjectProtocol {
    associatedtype MyType
    static var defaultFileName: String { get }
    static func instantiateViewController(_ bundle: Bundle?) -> MyType
}

extension StoryboardInstantiable where Self: UIViewController {
    static var defaultFileName: String {
        return NSStringFromClass(Self.self).components(separatedBy: ".").last ?? ""
    }

    static func instantiateViewController(_ bundle: Bundle? = nil) -> Self? {
        let fileName = defaultFileName
        let sb = UIStoryboard(name: fileName, bundle: bundle)
        return sb.instantiateInitialViewController() as? Self
    }
}
/**
 In the code above, you also created the StoryboardInstantiable extension for UIViewController.
 With it, you can just conform any UIViewController to StoryboardInstantiable, and you will be able to instantiate it.
 To instantiate the UIViewController, add this code to the bottom of the UIViewController‘s file:
 extension MyViewController: StoryboardInstantiable {
    //
 }
 Inside the UIViewController, add the following:
 let viewController = MyViewController.instantiateViewController()
 */

// public extension UIStoryboard {
//    /**
//     Instantiates and returns the view controller with the specified resource (R.storyboard.*.*).
//
//     - parameter resource: An resource (R.storyboard.*.*)
//      that uniquely identifies the view controller in the storyboard file. If the specified resource
//      does not exist in the storyboard file, this method raises an exception.
//
//     - returns: The view controller corresponding to the specified resource (R.storyboard.*.*). If no view controller is associated, this method throws an exception.
//     */
//    public func instantiateViewController<ViewControllerResource: StoryboardViewControllerResourceType>(withResource resource: ViewControllerResource) -> ViewControllerResource.ViewControllerType?  {
//        return self.instantiateViewController(withIdentifier: resource.identifier) as? ViewControllerResource.ViewControllerType
//    }
// }
