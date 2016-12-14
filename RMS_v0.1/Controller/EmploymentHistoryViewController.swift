//
//  EmploymentHistoryViewController.swift
//  RMS_v0.1
//
//  Created by mitrais on 12/13/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import UIKit

class EmploymentHistoryViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tblView: UITableView!
    
    var employees:[EmployeeHistory] = [
        EmployeeHistory(name: "Zulfikar", jobDesc: "Programmer", startDate:"2013" , endDate: "")
    ]
    
    override func viewDidLoad() {
        tblView.delegate = self
        tblView.dataSource = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employees.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCellWithIdentifier("EmployeeHistoryCell", forIndexPath: indexPath) 
        
        let employee = employees[indexPath.row] as EmployeeHistory
        
        let lblName = cell.viewWithTag(10) as! UILabel
        let lblJobDesc = cell.viewWithTag(20) as! UILabel
        var period : String = ""
        lblName.text = employee.name
        if employee.endDate == ""{
            period = "Present"
        }else{
            period = employee.endDate!
        }
        lblJobDesc.text = employee.jobDesc! + "(" + employee.startDate! + "-" + period
        
        
        return cell
    }

}
