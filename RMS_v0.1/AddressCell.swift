//
//  AddressCell.swift
//  RMS_v0.1
//
//  Created by MTMAC20 on 12/13/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import UIKit

class AddressCell: UITableViewCell {
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var streetLabel: UILabel!
    
    var address: Address! {
        didSet{
            cityLabel.text = address.city
            streetLabel.text = address.street
        }
    }
}
