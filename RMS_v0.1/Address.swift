//
//  Address.swift
//  RMS_v0.1
//
//  Created by MTMAC20 on 12/13/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import Foundation

struct Address{
    var city: String?
    var street: String?
    var activeInd: Bool?
    
    init(city: String?, street: String?, activeInd: Bool?){
        self.city = city
        self.street = street
        self.activeInd = activeInd
    }
}