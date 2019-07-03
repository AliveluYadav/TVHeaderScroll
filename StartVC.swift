//
//  StartVC.swift
//  BarTabControllers
//
//  Created by LetMeCall Corp on 31/01/19.
//  Copyright © 2019 LetMeCall Corp. All rights reserved.
//

import UIKit

class StartVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func next(_ sender: Any) {
        
        let next = BarController()
        self.navigationController?.pushViewController(next, animated: true)
   

        
        
    }
    


}
