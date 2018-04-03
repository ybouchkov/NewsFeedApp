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

    /**
     Login View Controller storyboard function for init and call LoginVC
     This is something like second way to init the view controller from another
     point the app. In this application, i will be working with xibs, but i want
     to show the second way - when you are working with storyboards.
     */
    static func storyboardInstance() -> LoginViewController? {
        let storyboard = R.storyboard.loginScene()
        if let vc = storyboard.instantiateInitialViewController() as? LoginViewController {
            return vc
        }
        return nil
    }

    // MARK: - IBOutlets
    @IBOutlet fileprivate weak var txtFieldUser: HoshiTextField!
    @IBOutlet fileprivate weak var txtFieldPassword: HoshiTextField!
    @IBOutlet fileprivate weak var infoLbl: UnderlinedLabel!
    @IBOutlet fileprivate weak var btnLogin: UIButton!
    @IBOutlet fileprivate weak var lblError: UILabel!

    // MARK: - LoginViewController Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        txtFieldUser.addTarget(self, action: #selector(textDidChange(textField:)), for: .editingDidEnd)
        txtFieldPassword.addTarget(self, action: #selector(textDidChange(textField:)), for: .editingDidEnd)
        configUI()
    }
    // MAKR: - IBAction
    @IBAction func btnTapped(_ sender: UIButton) {
        // TODO: Implement
    }
}

private typealias UIConfig = LoginViewController
extension UIConfig {
    fileprivate func configUI() {
        self.view.backgroundColor = UIColor.mainDarBlue
        self.infoLbl.config(R.string.localizable.lbl_info(),
                             font: R.font.pentayBookItalic(size: 14.0) ?? UIFont.systemFont(ofSize: 14.0),
                             color: .white)
        /// infolbl actions
        let tapOnlbl = UITapGestureRecognizer(target: self, action: #selector(didTapOnInfoLbl))
        infoLbl.addGestureRecognizer(tapOnlbl)
        infoLbl.isUserInteractionEnabled = true

        self.txtFieldUser.setupTxtField(placeholder: R.string.localizable.placeholder_user(),
                                         font: R.font.pentayBook(size: 14.0) ?? UIFont.systemFont(ofSize: 14.0),
                                         textColor: .white)
        self.txtFieldPassword.setupTxtField(placeholder: R.string.localizable.placeholder_password(),
                                         font: R.font.pentayBook(size: 14.0) ?? UIFont.systemFont(ofSize: 14.0),
                                         textColor: .white)
        btnLogin.setup(image: R.image.login_disable())
        lblError.isHidden = true
        btnLogin.isEnabled = false
    }

    fileprivate func showButtonWithErrorlbl(toShow: Bool) {
        if toShow {
            self.lblError.isHidden = false
            self.btnLogin.setup(image: R.image.login_disable())
            self.btnLogin.isEnabled = false
        } else {
            self.lblError.isHidden = true
            self.btnLogin.isEnabled = true
            self.btnLogin.setup(image: R.image.login_enable())
        }
    }

    @objc func didTapOnInfoLbl() {
        // TODO: Implement: Open new view controller
        print("Tap")
    }
}

// MARK: - TextFields Delegate
extension LoginViewController: ValidationFieldsProtocol {
    @objc fileprivate func textDidChange(textField: UITextField) {
        guard let userText = txtFieldUser.text else { return }
        guard let passText = txtFieldPassword.text else { return }
        if !isUsernameValid(username: userText) {
            showButtonWithErrorlbl(toShow: true)
            self.lblError.config(ErrorMessage.userError.rawValue,
                                 font: R.font.pentayBook(size: 13.0) ?? UIFont.systemFont(ofSize: 13.0),
                                 color: .purple)
        } else if !isPasswordValid(password: passText) {
            showButtonWithErrorlbl(toShow: true)
            self.lblError.config(ErrorMessage.passwordError.rawValue,
                                 font: R.font.pentayBook(size: 13.0) ?? UIFont.systemFont(ofSize: 13.0),
                                 color: .purple)
        } else {
            showButtonWithErrorlbl(toShow: false)
        }
    }
}
