//
//  HomeVC.swift
//  BarTabControllers
//
//  Created by LetMeCall Corp on 30/01/19.
//  Copyright © 2019 LetMeCall Corp. All rights reserved.
//

import UIKit

class HomeVC: UIViewController,UITabBarDelegate,UITableViewDataSource {
  
    
    @IBOutlet weak var tableView: UITableView!
    //    var tabBarCotroller: UITabBarController?

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.tableView.register(RestaurentCell.self, forCellReuseIdentifier: "Cell")
       tableView.register(UINib.init(nibName: "RestaurantCell", bundle: nil), forCellReuseIdentifier: "Cell")
        
        
        let sideMenu = SSASideMenu()
        sideMenu.configure(SSASideMenu.MenuViewEffect(fade: true, scale: true, scaleBackground: false))
        sideMenu.configure(SSASideMenu.ContentViewEffect(alpha: 1.0, scale: 0.7))
        sideMenu.configure(SSASideMenu.ContentViewShadow(enabled: true, color: UIColor.black, opacity: 0.6, radius: 6.0))
        sideMenu.delegate = self as? SSASideMenuDelegate
        
//        self.tabBar()
        title = "Home"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Left", style: .plain, target: self, action: #selector(SSASideMenu.presentLeftMenuViewController))

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RestaurantCell
//      cell.imgVw.image = UIImage(named: "Driver.png")
        return cell
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 100.0;//Choose your custom row height
    }

}
