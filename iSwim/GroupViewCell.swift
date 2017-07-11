//
//  GroupViewCell.swift
//  iSwim
//
//  Created by Estudiante on 4/7/17.
//  Copyright © 2017 Estudiante. All rights reserved.
//

import UIKit

class GroupViewCell : UITableViewCell {
    
    @IBOutlet var groupProfileImage : UIImageView?
    @IBOutlet var groupTitle : UILabel?
    
    var groupProfile : String = "default_profile.png"
    var groupTitleLabel : String = "No title"

}
