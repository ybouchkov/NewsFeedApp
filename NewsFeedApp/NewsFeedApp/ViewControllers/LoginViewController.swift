//
//  LoginViewController.swift
//  NewsFeedApp
//
//  Created by Yani Buchkov on 28.03.18.
//  Copyright © 2018 Mr Bouchkov. All rights reserved.
//

import UIKit
import TextFieldEffects

class LoginViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet fileprivate weak var txtFieldUser: HoshiTextField?
    @IBOutlet fileprivate weak var txtFieldPassword: HoshiTextField?

    // MARK: - LoginViewController Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
    }
}

private typealias UIConfig = LoginViewController
extension UIConfig {
    fileprivate func configUI() {
        self.view.backgroundColor = UIColor.mainDarBlue
    }
}

// MARK: - TextFields
