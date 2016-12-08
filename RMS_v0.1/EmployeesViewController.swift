//
//  EmployeesViewController.swift
//  RMS_v0.1
//
//  Created by MTMAC20 on 12/7/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import UIKit

class EmployeesViewController: UITableViewController {
    @IBOutlet weak var employeeCountTextField: UITextField!
    
    var employees:[Employee] = [
        Employee(name: "Zulfikar", grade: "PG", project: "CDC", location: "Bandung", phone:"085721710917"),
        Employee(name: "Zulfikar", grade: "PG", project: "CDC", location: "Bandung", phone:"085721710917"),
        Employee(name: "Zulfikar", grade: "PG", project: "CDC", location: "Bandung", phone:"085721710917")
    ]
    
    override func viewDidLoad() {
        employeeCountTextField.text = String(employees.count)
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employees.count
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("EmployeeCell", forIndexPath: indexPath) as! EmployeeCell
        
        let employee = employees[indexPath.row] as Employee
        cell.employee = employee
        
        return cell
    }
}
