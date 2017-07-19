//
//  Sign.swift
//  iSwim
//
//  Created by Estudiante on 10/7/17.
//  Copyright © 2017 Estudiante. All rights reserved.
//

import UIKit
import FirebaseAuth

class Sign : UIViewController {
    
    @IBOutlet var sign : UIButton?
    @IBOutlet var register : UIButton?
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet var errormsg : UILabel!
    var errorArray : [String] = []
    
    @IBAction func loginAction(_ sender: UIButton) {
        if emailTextfield.text != "" && passwordTextfield.text != "" {
            
            Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!, completion: { (user, error) in
                if user != nil {
                    //Sign in successful
                    self.performSegue(withIdentifier: "segue", sender: self)
                } else {
                    if let myError = error {
                        
                        self.errorArray = String(describing: myError).components(separatedBy: "\"")
                        
                        self.errormsg.text = self.errorArray[1]
                    } else {
                        self.errormsg.text = "Error"
                    }
                }
            })
        }
    }
    
    @IBAction func signupAction(_ sender: UIButton) {
        if emailTextfield.text != "" && passwordTextfield.text != "" {
            
            Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!, completion: { (user, error) in
                if user != nil {
                    //Sign Up successful
                    self.performSegue(withIdentifier: "segue", sender: self)
                } else {
                    if let myError = error {
                        self.errorArray = String(describing: myError).components(separatedBy: "\"")
                        
                        self.errormsg.text = self.errorArray[1]
                    } else {
                        self.errormsg.text = "Error"
                    }
                }
            })
        }
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        sign?.layer.borderColor = UIColor.white.cgColor
        sign?.layer.borderWidth = 2.0
        sign?.layer.cornerRadius = 15
        register?.layer.borderColor = UIColor.white.cgColor
        register?.layer.borderWidth = 2.0
        register?.layer.cornerRadius = 15
        
    }
}
