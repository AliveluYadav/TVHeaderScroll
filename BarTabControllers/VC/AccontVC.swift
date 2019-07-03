//
//  AccontVC.swift
//  BarTabControllers
//
//  Created by LetMeCall Corp on 30/01/19.
//  Copyright © 2019 LetMeCall Corp. All rights reserved.
//

import UIKit

class AccontVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
  
    @IBOutlet weak var tableView: UITableView!
    
    var secNames = ["Section One ","Section Two ","Section Three ","Section Four ","Section Five","Section Six ","Section Seven","Section Eight","Section nine ","Section ten"]
    
    var lblArry = ["1","2","3","4","5","6","7","8","9","10"]
    
    override func viewDidLoad() {
    super.viewDidLoad()

    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return secNames.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lblArry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = lblArry[indexPath.row]
        return cell
        
    }

func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
 
    return secNames[section]

}
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
         return 100
    }
}
