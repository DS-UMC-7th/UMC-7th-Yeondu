//
//  ProfileSettingViewController.swift
//  kream
//
//  Created by 김건 on 1/10/25.
//

import UIKit

class ProfileSettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = profileSettingView
        profileSettingView.delegate = self
    }
    
    private lazy var profileSettingView: ProfileSettingView = {
        let view = ProfileSettingView()
        return view
    }()

}
