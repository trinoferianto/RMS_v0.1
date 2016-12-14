//
//  EmployeeHistory.swift
//  RMS_v0.1
//
//  Created by mitrais on 12/14/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import Foundation


struct EmployeeHistory{
    var name: String?
    var jobDesc: String?
    var startDate: String?
    var endDate: String?
    
    init(name: String?, jobDesc: String?, startDate: String?, endDate: String?){
        self.name = name
        self.jobDesc = jobDesc
        self.startDate = startDate
        self.endDate = endDate
    }
}