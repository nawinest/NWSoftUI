//
//  View+NWSoftUI.swift
//  NPSoftUI
//
//  Created by Nawin Phunsawat on 18/3/2563 BE.
//  Copyright © 2563 Nawin Phunsawat. All rights reserved.
//

import UIKit

extension UIView {
    
    func addSoftUIShadow(cornerRadius: CGFloat? = 15,
                         shadowRadius: CGFloat? = 2,
                         backgroundColor: UIColor? = .white
    ) {
        let cornerRadius: CGFloat = 15
        let shadowRadius: CGFloat = 4
        
        self.layer.masksToBounds = false
        self.layer.cornerRadius = cornerRadius
        
        let darkShadow = CALayer()
        self.backgroundColor = backgroundColor
        darkShadow.frame = bounds
        darkShadow.backgroundColor = backgroundColor?.cgColor
        darkShadow.shadowColor = UIColor(red: 0.87, green: 0.89, blue: 0.93, alpha: 1.0).cgColor
        darkShadow.cornerRadius = cornerRadius
        darkShadow.shadowOffset = CGSize(width: shadowRadius, height: shadowRadius)
        darkShadow.shadowOpacity = 1
        darkShadow.shadowRadius = shadowRadius
        self.layer.insertSublayer(darkShadow, at: 0)

        let lightShadow = CALayer()
        lightShadow.frame = bounds
        lightShadow.backgroundColor = backgroundColor?.cgColor
        lightShadow.shadowColor = UIColor.white.cgColor
        lightShadow.cornerRadius = cornerRadius
        lightShadow.shadowOffset = CGSize(width: -shadowRadius, height: -shadowRadius)
        lightShadow.shadowOpacity = 1
        lightShadow.shadowRadius = shadowRadius
        self.layer.insertSublayer(lightShadow, at: 0)
    }
    
}

