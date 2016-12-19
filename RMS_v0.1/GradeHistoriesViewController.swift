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
        
        gradeHistories.append(GradeHistory(id: 1,startDate: dateFormatter.dateFromString("01-07-2014"), endDate: nil, ds: "DS 3", grade: "JP", employeeId:1))
        gradeHistories.append(GradeHistory(id: 2,startDate: dateFormatter.dateFromString("01-12-2013"), endDate: dateFormatter.dateFromString("01-07-2014"),  ds: "DS 1",grade: "JP", employeeId:1))
        gradeHistories.append( GradeHistory(id: 3,startDate: dateFormatter.dateFromString("01-07-2013"), endDate: dateFormatter.dateFromString("01-12-2013"), ds: "DS 2", grade: "JP", employeeId:1))
        
        gradeHistoriesTableView.allowsMultipleSelectionDuringEditing = false
    }

    @IBAction func saveGradeHistory(segue:UIStoryboardSegue){
        //TODO : Do proper saving using api or local db
        if let createGradeHistoryPopupViewController = segue.sourceViewController as? CreateGradeHistoryPopupViewController{
            let newGradeHistory = createGradeHistoryPopupViewController.gradeHistory
           
            if(newGradeHistory.id != nil){
                // Edit grade history
                for i in 0...gradeHistories.count - 1{
                    if gradeHistories[i].id == newGradeHistory.id {
                        gradeHistories[i] = newGradeHistory
                        break
                    }
                }
                gradeHistoriesTableView.reloadData()
            } else {
                // Add new grade history to array
                 gradeHistories.append(newGradeHistory)
                let indexPath = NSIndexPath(forRow: gradeHistories.count-1, inSection: 0)
                gradeHistoriesTableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
            }
        }
    }
    
    @IBAction func showCreateGradeHistoryPopup(sender: AnyObject) {
        let createGradeHistoryPopup = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("CreateGradeHistoryPopup") as! CreateGradeHistoryPopupViewController
        
        self.addChildViewController(createGradeHistoryPopup)
        createGradeHistoryPopup.view.frame = self.view.frame
        self.view.addSubview(createGradeHistoryPopup.view)
        createGradeHistoryPopup.didMoveToParentViewController(self)
    }
    
    func showEditGradeHistoryPopup(gradeHistory: GradeHistory){
        let createGradeHistoryPopup = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("CreateGradeHistoryPopup") as! CreateGradeHistoryPopupViewController
        
        // Add information that indicate to show edit popup instead
        createGradeHistoryPopup.isEdit = true
        createGradeHistoryPopup.gradeHistory = gradeHistory
        
        
        self.addChildViewController(createGradeHistoryPopup)
        createGradeHistoryPopup.view.frame = self.view.frame
        self.view.addSubview(createGradeHistoryPopup.view)
        createGradeHistoryPopup.didMoveToParentViewController(self)
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete{
            let alert = UIAlertController(title: "Are you sure to delete this history stage?", message: "this action cannot be undone", preferredStyle: .Alert)
            let clearAction = UIAlertAction(title: "Cancel", style: .Destructive) {(alert: UIAlertAction!) -> Void in
                print("Cancel tapped")
            }
            
            let deleteAction = UIAlertAction(title: "Delete", style: .Default) {(aler:UIAlertAction!) -> Void in
                print("Delete tapped")
                // TODO : do proper delete later.
                self.gradeHistories.removeAtIndex(indexPath.row)
                self.gradeHistoriesTableView.reloadData()
            }
            
            alert.addAction(clearAction)
            alert.addAction(deleteAction)
    
            presentViewController(alert, animated: true, completion: nil)
        }
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
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        showEditGradeHistoryPopup(gradeHistories[indexPath.row])
    }
}
