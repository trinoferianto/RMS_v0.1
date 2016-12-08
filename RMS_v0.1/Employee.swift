//
//  Employee.swift
//  RMS_v0.1
//
//  Created by MTMAC20 on 12/7/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import Foundation


struct Employee{
    var name: String?
    var grade: String?
    var project: String?
    var location: String?
    var phone: String?
    
    init(name: String?, grade: String?, project: String?, location: String?, phone: String?){
        self.name = name
        self.grade = grade
        self.project = project
        self.location = location
        self.phone = phone
    }
}