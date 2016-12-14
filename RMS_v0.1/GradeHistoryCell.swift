//
//  GradeHistoryCell.swift
//  RMS_v0.1
//
//  Created by MTMAC20 on 12/13/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import UIKit

class GradeHistoryCell : UITableViewCell{
    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var startDateAndEndDateLabel: UILabel!
   
    var gradeHistory: GradeHistory!{
        didSet{
            gradeLabel.text = gradeHistory.grade
            let dateFormatter = NSDateFormatter()
            dateFormatter.dateFormat = "MMMM yyyy"
            
            var endDateText: String?
            if(gradeHistory.endDate == nil){
                 endDateText = "Present"
            } else {
                endDateText = dateFormatter.stringFromDate(gradeHistory.endDate!)
            }
            
            startDateAndEndDateLabel.text = dateFormatter.stringFromDate(gradeHistory.startDate!) + " - " + endDateText!
        }
    }
}