//
//  DesignableView.swift
//  iSwim
//
//  Created by Estudiante on 4/7/17.
//  Copyright © 2017 Estudiante. All rights reserved.
//

import UIKit

@IBDesignable class DesignableView: UIView {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }

}
