//
//  Sign.swift
//  iSwim
//
//  Created by Estudiante on 10/7/17.
//  Copyright © 2017 Estudiante. All rights reserved.
//

import UIKit

class Sign : UIViewController {
    
    @IBOutlet var sign : UIButton?
    @IBOutlet var register : UIButton?
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        sign?.layer.borderColor = UIColor.white.cgColor
        sign?.layer.borderWidth = 2.0
        sign?.layer.cornerRadius = 24
        register?.layer.borderColor = UIColor.white.cgColor
        register?.layer.borderWidth = 2.0
        register?.layer.cornerRadius = 24
        
    }
}
