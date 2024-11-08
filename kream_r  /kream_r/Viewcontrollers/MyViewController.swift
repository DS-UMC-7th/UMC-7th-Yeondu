//MyViewController.swift
//  kream
//
//  Created by 김건 on 11/3/24.
//  Created by 신연주 on 11/3/24.
//

import UIKit

class MyViewController: UIViewController {

  override func viewDidLoad() {
      super.viewDidLoad()
      self.view = myView
      setupActions()
      
      }
    
    private lazy var myView : MyView = {
        let view = MyView()
        return view
    }()
    
    private func setupActions() {
            myView.profileManageButton.addTarget(self, action: #selector(profileManageButtonDidTap), for: .touchUpInside)
        }

        @objc private func profileManageButtonDidTap() {
            let profileManageViewController = ProfileManageViewController()

            navigationController?.pushViewController(profileManageViewController, animated: true)
        }
}
