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
    
    
    @IBAction func dismissPopup(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
