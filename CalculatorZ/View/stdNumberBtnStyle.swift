//
//  standardBtnStyle.swift
//  CalculatorZ
//
//  Created by Laren Sakota on 4/22/20.
//  Copyright © 2020 Laren Sakota. All rights reserved.
//

import UIKit

@IBDesignable
class stdNumberBtnStyle: UIButton {
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = UIColor.b97_NightBlue.withAlphaComponent(0.03)
        layer.cornerRadius = 5.0
        titleLabel?.textAlignment = .center
        setTitleColor(UIColor.m0_ColorlessBlender, for: .normal)
        clipsToBounds = true
    }

}
