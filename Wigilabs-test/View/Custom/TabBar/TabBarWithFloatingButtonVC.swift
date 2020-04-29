//
//  TabBarWithFloatingButtonVC.swift
//  Wigilabs-test
//
//  Created by Jc on 29/04/20.
//  Copyright © 2020 Jc. All rights reserved.
//

import Foundation
import UIKit

class TabBarWithFloatingButtonVC: UITabBarController {
    var floatingBtn: UIButton!
    
    override func viewDidLoad() {
        setupFloatingButton()
    }
    
    func setupFloatingButton() {
        floatingBtn = UIButton(frame: CGRect(x: (self.view.bounds.width / 2)-25, y: -20, width: 50, height: 50))
        floatingBtn.backgroundColor = #colorLiteral(red: 0.03921568627, green: 0.1098039216, blue: 0.1882352941, alpha: 1)
        floatingBtn.tintColor = .white
        floatingBtn.layer.cornerRadius = floatingBtn.bounds.height / 2
        floatingBtn.contentMode = .center
        floatingBtn.setImage(UIImage(systemName: "plus"), for: .normal)
        floatingBtn.addShadow()
        floatingBtn.addTarget(self, action: #selector(self.menuButtonAction), for: .touchUpInside)
        
        self.tabBar.addSubview(floatingBtn)
        self.view.layoutIfNeeded()
    }
    @objc func menuButtonAction(sender: UIButton) {
        UIView.animate(withDuration: 0.4, animations: {
            self.floatingBtn.frame.origin.y = self.floatingBtn.frame.origin.y - 10
        }) { _ in
            UIView.animate(withDuration: 0.4) {
                self.floatingBtn.frame.origin.y = self.floatingBtn.frame.origin.y + 10
            }
        }
    }
}
