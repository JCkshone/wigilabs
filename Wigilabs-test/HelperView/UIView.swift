//
//  UIView.swift
//  Wigilabs-test
//
//  Created by Jc on 29/04/20.
//  Copyright © 2020 Jc. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func addShadow () {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 1.5, height: 1.5)
        layer.shadowOpacity = 0.4
        layer.shadowRadius = 4.0
        layer.masksToBounds = false
    }
}
