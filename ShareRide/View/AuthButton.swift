//
//  AuthButton.swift
//  ShareRide
//
//  Created by Ramzy Rashaun Arief on 24/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class AuthButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setTitleColor(UIColor(white: 1, alpha: 0.7), for: .normal)
        backgroundColor = .mainBlueTint
        layer.cornerRadius = 5
        anchor(height: 50)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
