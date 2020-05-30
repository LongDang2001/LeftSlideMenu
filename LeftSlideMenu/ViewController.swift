//
//  ViewController.swift
//  LeftSlideMenu
//
//  Created by admin on 3/23/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func leftMenu() {
        NotificationCenter.default.post(name: notification.menuClick, object: nil)
    }; deinit {
        NotificationCenter.default.removeObserver(self)
           
    }
    
}
struct notification {
    static let menuClick = NSNotification.Name.init(rawValue: "menuClick")
}
