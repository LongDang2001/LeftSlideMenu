//
//  ContainerVC.swift
//  LeftSlideMenu
//
//  Created by admin on 3/23/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class ContainerVC: UIViewController {
    @IBOutlet weak var ViewController: UIView!
    @IBOutlet weak var ContainerVC: UIView!
    @IBOutlet weak var coverButton: UIButton!
    @IBOutlet weak var leftSlideMenu: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    var slideMenu: Bool = false {
        didSet {
            if slideMenu == true{
                configforSlideMenuChose()
            } else {
                configForSlideMenuClose()
            }
            UIView.animate(withDuration: 3, delay: 1, options: .curveEaseIn, animations: {self.view.layoutIfNeeded()}, completion: nil)
        }
    }
    
    func configforSlideMenuChose() {
        self.ViewController.clipsToBounds = false
        self.leftSlideMenu.constant = 0
    }
    
    func configForSlideMenuClose() {
        self.leftSlideMenu.constant = -self.ContainerVC.bounds.width
    }
    
    func registerNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(clickCoverButton), name: notification.menuClick, object: nil)
    }
    
    @IBAction func clickCoverButton() {
        slideMenu = !slideMenu
    }
}
