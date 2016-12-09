//
//  EmployeeCell.swift
//  RMS_v0.1
//
//  Created by MTMAC20 on 12/7/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import UIKit

class EmployeeCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var gradeAndProjectLabel: UILabel!
    @IBOutlet weak var locationAndPhoneLabel: UILabel!
    @IBOutlet weak var employeeImageView: UIImageView!
    
    var employee: Employee! {
        didSet{
            nameLabel.text = employee.name
            gradeAndProjectLabel.text = employee.grade! + ", " + employee.project!
            locationAndPhoneLabel.text = employee.location! + ", " + employee.phone!
            employeeImageView.image = UIImage(named: "username_icon")
        }
    }
    
}
