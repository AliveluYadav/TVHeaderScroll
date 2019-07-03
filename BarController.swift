//
//  BarController.swift
//  BarTabControllers
//
//  Created by LetMeCall Corp on 31/01/19.
//  Copyright © 2019 LetMeCall Corp. All rights reserved.
//

import UIKit

class BarController: UITabBarController {
    
    private var homeVC = HomeVC()
    private var accountVC = AccontVC()
    private var ordersVC = OrdersVC()
    private var cartVC = CartVC()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.tabBar()

//        self.homeVC = HomeVC(nibName: "HomeVC", bundle: nil)
//        self.accountVC = AccontVC(nibName: "AccontVC", bundle: nil)
//        self.ordersVC = OrdersVC(nibName: "OrdersVC", bundle: nil)
//        self.cartVC = CartVC(nibName: "CartVC", bundle: nil)
//
        self.viewControllers  = [createVCs(title: "Home", image:"res.png" , vc: homeVC,navTitle: "Home"),createVCs(title: "Account", image:"res.png" , vc: accountVC, navTitle: "Account"),createVCs(title: "Orders", image: "res.png", vc: ordersVC, navTitle: "Orders"),createVCs(title: "Cart", image: "res.png", vc:cartVC, navTitle: "Cart" )]

    }
    
    
    private func createVCs(title:String,image:String,vc:UIViewController,navTitle:String) -> UINavigationController
    {
        let recentVC = UINavigationController(rootViewController: vc)
//      recentVC.navigationBar.isHidden = true
        recentVC.tabBarItem.title = title
        recentVC.tabBarItem.image = UIImage(named: image)
        recentVC.navigationItem.title = navTitle
        
        return recentVC
        
    }
    
    func tabBar() {
    
        let nav_home = UINavigationController(rootViewController :homeVC )
        nav_home.isNavigationBarHidden = true
        let nav_Account = UINavigationController(rootViewController : accountVC)
        nav_Account.isNavigationBarHidden = true
        let nav_Orders = UINavigationController(rootViewController : ordersVC)
        nav_Orders.isNavigationBarHidden = true
        let nav_Cart = UINavigationController(rootViewController : cartVC)
        nav_Cart.isNavigationBarHidden = true
        self.viewControllers = [nav_home,nav_Account,nav_Orders,nav_Cart]
        
        homeVC.tabBarItem = UITabBarItem(title: "kjbj", image: UIImage(named: "res.png"), tag: 1)
        accountVC.tabBarItem = UITabBarItem(title: "bnn", image: UIImage(named: "res.png"), tag: 2)
        ordersVC.tabBarItem = UITabBarItem(title: "vcvc", image: UIImage(named: "res.png"), tag: 3)
        cartVC.tabBarItem = UITabBarItem(title: "oiyyu", image: UIImage(named: "res.png"), tag: 4)
        
    }

    
}
