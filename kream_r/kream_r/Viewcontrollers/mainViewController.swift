//  MainViewController.swift
//  kream
//

//  Created by 신연주 on 11/3/24.
//

import UIKit

class MainViewController: UITabBarController {
    private let homeVC = HomeViewController()
    private let styleVC = StyleViewController()
    private let shopVC = ShopViewController()
    private let savedVC = SaveViewController()
    private let myVC = MyViewController()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        homeVC.tabBarItem = UITabBarItem(title: "HOME", image: UIImage(named: "home_icon_none"), tag: 0)
        styleVC.tabBarItem = UITabBarItem(title: "STYLE", image: UIImage(named: "style_icon_none"), tag: 1)
        shopVC.tabBarItem = UITabBarItem(title: "SHOP", image: UIImage(named: "shop_icon_none"), tag: 2)
        savedVC.tabBarItem = UITabBarItem(title: "SAVED", image: UIImage(named: "saved_icon_none"), tag: 3)
        myVC.tabBarItem = UITabBarItem(title: "MY", image: UIImage(named: "my_icon_none"), tag: 4)

        self.viewControllers = [homeVC, styleVC, shopVC, savedVC, myVC]
    }

}



