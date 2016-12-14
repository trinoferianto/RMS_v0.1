//
//  Dependent.swift
//  RMS_v0.1
//
//  Created by MTMAC20 on 12/13/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import Foundation

struct Dependent {
    var type: String?
    var gender: String?
    var firstName: String?
    var lastName: String?
    var dateOfBirth: NSDate?

    init(type: String?, gender: String?, firstName: String?, lastName: String?, dateOfBirth: NSDate?){
        self.type = type
        self.gender = gender
        self.firstName = firstName
        self.lastName = lastName
        self.dateOfBirth = dateOfBirth
    }
}