//
//  GradeHistory.swift
//  RMS_v0.1
//
//  Created by MTMAC20 on 12/13/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import Foundation


struct GradeHistory {
    var startDate: NSDate?
    var endDate: NSDate?
    var grade: String?
    
    init(startDate: NSDate?, endDate: NSDate?, grade: String?){
        self.startDate = startDate
        self.endDate = endDate
        self.grade = grade
    }
}