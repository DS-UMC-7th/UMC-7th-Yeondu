//
//  ViewController.swift
//  kream
//
//  Created by 신연주 on 11/2/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = loginView
    }

    private lazy var loginView : LoginView = {
        let view = LoginView()
        return view
    }()
    
    private func setupActions() {
            loginView.loginButton.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
        }

        @objc private func loginButtonDidTap() {
            guard let email = loginView.emailTextField.text, !email.isEmpty else {
                return }
            guard let password = loginView.passwordTextField.text, !password.isEmpty else {
                return
            }
            
            loginModel.saveUserEmail(email)
            loginModel.saveUserPassword(password)
            
            let baseViewController = BaseViewController()
            
            baseViewController.modalPresentationStyle = .fullScreen
            present(baseViewController, animated: true)
        }
}
