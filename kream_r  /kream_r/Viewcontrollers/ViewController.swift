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
}
