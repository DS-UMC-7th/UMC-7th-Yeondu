//
//  MyViewController.swift
//  kream
//
//  Created by 김건 on 1/9/25.
//

import UIKit

class MyViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = myView
        myView.delegate = self
    }
    
    private lazy var myView: MyView = {
        let view = MyView()
        return view
    }()
}
