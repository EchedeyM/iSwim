//
//  AddCardVC.swift
//  iSwim
//
//  Created by Estudiante on 4/7/17.
//  Copyright © 2017 Estudiante. All rights reserved.
//

import UIKit

class AddCardVC: UIViewController {
    
    
    @IBOutlet var volumeInCard : UITextField?
    @IBOutlet var ppmInCard : UITextField?
    @IBOutlet var addButton : UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Agregar una tarjeta"
        addButton?.layer.borderColor = UIColor.init(red: 153/255, green: 204/255, blue: 204/255, alpha: 1).cgColor
        addButton?.layer.borderWidth = 2.0
        addButton?.layer.cornerRadius = 30
    }

    @IBAction func takeData () {
        CardController.shareController.volume = volumeInCard?.text
        CardController.shareController.ppm = ppmInCard?.text
    }
    
    /*func totalVolume () -> String {
        if let volumeUnwrapped = CardController.shareController.volume {
            return "\(volumeUnwrapped)"
        } else {
            return "nil"
        }
    }
    
    func heartBeating () -> String {
        if var ppmUnwrapped = CardController.shareController.ppm {
            ppmUnwrapped *= 10
            return "\(ppmUnwrapped)"
        } else {
            return "nil"
        }
    }*/
    
}
