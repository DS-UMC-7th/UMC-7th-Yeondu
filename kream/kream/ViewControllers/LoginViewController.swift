//
//  ViewController.swift
//  kream
//
//  Created by 신연주 on 1/9/25.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = loginView
        loginView.delegate = self
    }
    
    private lazy var loginView: LoginView = {
        let view = LoginView()
        return view
    }()

}

