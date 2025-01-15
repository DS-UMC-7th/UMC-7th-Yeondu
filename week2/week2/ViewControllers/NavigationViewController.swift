//
//  NavigationViewController.swift
//  week2
//
//  Created by 김건 on 1/9/25.
//

import UIKit
import SnapKit

class NavigationViewController: UIViewController {
    private let label = UILabel()
    private let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "버튼을 누르면 네비게이션 방식의 화면 전환이 일어나요"
        label.textColor = .lightGray
        
        button.setTitle("버튼을 누르세요", for: .normal)
        button.backgroundColor = .lightGray
        button.addTarget(self, action: #selector(buttonDidTap), for: .touchUpInside)
        
        view.addSubview(label)
        view.addSubview(button)
        
        label.snp.makeConstraints {
            $0.top.equalToSuperview().offset(200)
            $0.centerX.equalToSuperview()
        }
        
        button.snp.makeConstraints{
            $0.top.equalTo(label.snp.bottom).offset(40)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(255)
            $0.height.equalTo(55)
        }
    }
    
    @objc
    private func buttonDidTap(){
        let viewController = UIViewController()
        
        viewController.view.backgroundColor = .lightGray
        
        navigationController?.pushViewController(viewController, animated: true)
    }
}
