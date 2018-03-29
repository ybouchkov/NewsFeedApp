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
    @IBOutlet fileprivate weak var infoLbl: UILabel?

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
        self.infoLbl?.config(R.string.localizable.lbl_info(),
                             font: R.font.pentayBook(size: 14.0) ?? UIFont.systemFont(ofSize: 14.0),
                             color: .white)

        self.txtFieldUser?.setupTxtField(placeholder: R.string.localizable.placeholder_user(),
                                         font: R.font.pentayBook(size: 14.0) ?? UIFont.systemFont(ofSize: 14.0),
                                         textColor: .white)
        self.txtFieldPassword?.setupTxtField(placeholder: R.string.localizable.placeholder_password(),
                                         font: R.font.pentayBook(size: 14.0) ?? UIFont.systemFont(ofSize: 14.0),
                                         textColor: .white)
    }
}

// MARK: - TextFields
