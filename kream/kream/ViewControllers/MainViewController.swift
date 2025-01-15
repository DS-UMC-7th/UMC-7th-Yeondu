//
//  MainViewController.swift
//  kream
//
//  Created by 김건 on 1/9/25.
//

import UIKit

class MainViewController: UITabBarController {
    private let homeVC = HomeViewController()
    private let styleVC = StyleViewController()
    private let shopVC = ShopViewController()
    private let savedVC = SavedViewController()
    private let myVC = UINavigationController(rootViewController: MyViewController()) //네비게이션 방식으로 화면 전환시 필수
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        homeVC.tabBarItem = UITabBarItem(title:"HOME",image: UIImage(named:"home_icon"),tag:0)
        styleVC.tabBarItem = UITabBarItem(title:"STYLE",image: UIImage(named:"style_icon"),tag:1)
        shopVC.tabBarItem = UITabBarItem(title:"STYLE",image: UIImage(named:"shop_icon"),tag:2)
        savedVC.tabBarItem = UITabBarItem(title:"STYLE",image: UIImage(named:"saved_icon"),tag:3)
        myVC.tabBarItem = UITabBarItem(title:"MY",image: UIImage(named:"my_icon"),tag:4)
        
        self.viewControllers = [homeVC,styleVC,shopVC,savedVC,myVC]

    }
}
