//
//  DependentsViewController.swift
//  RMS_v0.1
//
//  Created by MTMAC20 on 12/13/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import UIKit

class DependentsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    @IBOutlet weak var dependentsTableView: UITableView!
    var dependents: [Dependent] = []
    var dateFormatter = NSDateFormatter()
    
    override func viewDidLoad() {
        dependentsTableView.delegate = self
        dependentsTableView.dataSource = self

        dateFormatter.dateFormat = "dd-MM-yyyy"
        
        dependents.append(Dependent(type: "Wife", gender: "Female", firstName: "Mila", lastName: "Khan", dateOfBirth: dateFormatter.dateFromString("11-05-1960")))
            dependents.append(Dependent(type: "Child", gender: "Male", firstName: "Salman", lastName: "Khan", dateOfBirth: dateFormatter.dateFromString("24-06-2011")))
            dependents.append(Dependent(type: "Child", gender: "Female", firstName: "Yasmin", lastName: "Khan", dateOfBirth: dateFormatter.dateFromString("01-02-2015")))
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dependents.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DependentCell", forIndexPath: indexPath) as! DependentCell
        
        let dependent = dependents[indexPath.row]
        cell.dependent = dependent
        
        return cell
    }
}
