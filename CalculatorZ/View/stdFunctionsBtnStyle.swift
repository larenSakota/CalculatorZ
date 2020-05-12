//
//  stdFunctionsBtnStyle.swift
//  CalculatorZ
//
//  Created by Laren Sakota on 4/23/20.
//  Copyright © 2020 Laren Sakota. All rights reserved.
//

import UIKit

@IBDesignable
class stdFunctionsBtnStyle: UIButton {

    override func prepareForInterfaceBuilder() {
        customizeView(self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView(self)
    }
    
    func customizeView(_ sender: UIButton) {
        if sender.tag == 100 { //|| titleLabel?.text == "C" {
            backgroundColor = UIColor.bg18_TealBlue
            layer.cornerRadius = 5.0
            titleLabel?.textAlignment = .center
//            setTitleColor(UIColor.m0_ColorlessBlender, for: .normal)
            clipsToBounds = true
        } else {
            backgroundColor = UIColor.yg01_GreenBice
            layer.cornerRadius = 5.0
            titleLabel?.textAlignment = .center
//            setTitleColor(UIColor.m0_ColorlessBlender, for: .normal)
            clipsToBounds = true
        }
    }

}
