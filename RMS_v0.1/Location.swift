//
//  Location.swift
//  RMS_v0.1
//
//  Created by MTMAC20 on 12/14/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import Foundation

struct Location {
    var branchOffice: String?
    var street: String?
    var activeInd: Bool?
    
    init(branchOffice: String?, street: String?, activeInd: Bool?){
        self.branchOffice = branchOffice
        self.street = street
        self.activeInd = activeInd
    }
}