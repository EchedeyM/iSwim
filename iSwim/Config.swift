//
//  Config.swift
//  iSwim
//
//  Created by Estudiante on 19/7/17.
//  Copyright © 2017 Estudiante. All rights reserved.
//

import UIKit
import FirebaseAuth

class Config: UIViewController{
    
    @IBAction func logOut (_ sender: UIButton) {
        try! Auth.auth().signOut()
        self.performSegue(withIdentifier: "segue2", sender: self)
    }

}
