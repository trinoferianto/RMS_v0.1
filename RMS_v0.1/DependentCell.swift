//
//  DependentCell.swift
//  RMS_v0.1
//
//  Created by MTMAC20 on 12/13/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import UIKit

class DependentCell: UITableViewCell {
    @IBOutlet weak var nameAndTypeLabel: UILabel!
    @IBOutlet weak var genderAndDateOfBirthLabel: UILabel!
    
    var dateFormatter = NSDateFormatter()
    
    var dependent: Dependent! {
        didSet{
            nameAndTypeLabel.text = dependent.firstName! + " " + dependent.lastName! + " - " + dependent.type!
            
            
            dateFormatter.dateFormat = "dd/MM/yyyy"
            genderAndDateOfBirthLabel.text = dependent.gender! + ", " + dateFormatter.stringFromDate(dependent.dateOfBirth!)
        }
        
    }
}
