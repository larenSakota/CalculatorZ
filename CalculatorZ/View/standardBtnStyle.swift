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
        backgroundColor = #colorLiteral(red: 0.9960784314, green: 0.9921568627, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        titleLabel?.textAlignment = .center
        clipsToBounds = true
    }

}
