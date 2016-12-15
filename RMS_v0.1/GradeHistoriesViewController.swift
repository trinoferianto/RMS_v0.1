//
//  GradeHistoriesViewController.swift
//  RMS_v0.1
//
//  Created by MTMAC20 on 12/13/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import UIKit

class GradeHistoriesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var gradeHistoriesTableView: UITableView!
    
    var dateFormatter = NSDateFormatter()
    
    var gradeHistories: [GradeHistory] = []
    
    override func viewDidLoad() {
        gradeHistoriesTableView.delegate = self
        gradeHistoriesTableView.dataSource = self
        
        dateFormatter.dateFormat = "dd-MM-yyyyy"
        
        gradeHistories.append(GradeHistory(startDate: dateFormatter.dateFromString("01-07-2014"), endDate: nil, grade: "JP-DS3"))
        gradeHistories.append(GradeHistory(startDate: dateFormatter.dateFromString("01-12-2013"), endDate: dateFormatter.dateFromString("01-07-2014"), grade: "JP-DS2"))
        gradeHistories.append( GradeHistory(startDate: dateFormatter.dateFromString("01-07-2013"), endDate: dateFormatter.dateFromString("01-12-2013"), grade: "JP-DS1"))
    }
    
    
    @IBAction func showCreateGradeHistoryPopup(sender: AnyObject) {
        let createGradeHistoryPopup = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("CreateGradeHistoryPopup") as! CreateGradeHistoryPopupViewController
        
        self.addChildViewController(createGradeHistoryPopup)
        createGradeHistoryPopup.view.frame = self.view.frame
        self.view.addSubview(createGradeHistoryPopup.view)
        createGradeHistoryPopup.didMoveToParentViewController(self)
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gradeHistories.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("GradeHistoryCell", forIndexPath: indexPath) as! GradeHistoryCell
        
        let gradeHistory = gradeHistories[indexPath.row] as GradeHistory
        cell.gradeHistory = gradeHistory
        
        return cell
    }
}
