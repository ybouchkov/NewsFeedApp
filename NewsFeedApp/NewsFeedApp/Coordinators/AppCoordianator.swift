//
//  AppCoordianator.swift
//  NewsFeedApp
//
//  Created by Yani Buchkov on 3.04.18.
//  Copyright © 2018 Mr Bouchkov. All rights reserved.
//

import UIKit

class AppCoordinator: Coordinator {
    // MARK: Properties
    /// They will cover all data through the flow
    let window: UIWindow?
    init (window : UIWindow) {
        self.window = window

    }

    /// Here, we are going to start every time with LoginViewController - testing purpose
    /// If you want, create one property / bool / isLogin, and check the state of it. And if isLogin
    /// is true, show the view controller after the Login View Controller - for e.g.
    func start() {
        // Create an instanse of the Login View Controller
        let loginVC = LoginViewController.storyboardInstance()
        self.window?.rootViewController = loginVC
        self.window?.makeKeyAndVisible()
    }
}
