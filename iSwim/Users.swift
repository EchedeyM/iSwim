//
//  Users.swift
//  iSwim
//
//  Created by Estudiante on 29/6/17.
//  Copyright © 2017 Estudiante. All rights reserved.
//

import UIKit

class Users: UITableViewCell {
    
    var name: String?
    var lastName: String?
    var profilePicture: String = "ProfilePicture"
    var descriptionProfile: String = "Hey there! I'm using iSwim!"
    var backgroundProfile: String = "Fondo1"
    var date = Date()
    let locale = Locale.current
    //var tabBarController : UITabBar?
    
    let formatter = DateFormatter()
    
    func whatDay () -> String {
        
        formatter.dateFormat = "dd-MM-yyyy HH:mm"
        //formatter.dateStyle = .short
        //formatter.timeStyle = .short
        formatter.locale = locale
        
        let dateStr = formatter.string(from: date)
        
        return dateStr
    }
    
    func fullName () -> String {
        if let nameUnwrapped = name,
            let lastNameUnwrapped = lastName {
            return nameUnwrapped + " " + lastNameUnwrapped
        } else {
            return "Error, user not found"
        }
    }
}
