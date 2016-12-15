//
//  LocationCell.swift
//  RMS_v0.1
//
//  Created by MTMAC20 on 12/14/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import UIKit

class LocationCell: UITableViewCell {
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var streetLabel: UILabel!
    var location: Location! {
        didSet{
           cityLabel.text = location.branchOffice
            streetLabel.text = location.street
        }
    }
}
