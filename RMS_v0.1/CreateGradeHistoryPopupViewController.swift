//
//  CreateGradeHistoryPopupViewController.swift
//  RMS_v0.1
//
//  Created by MTMAC20 on 12/14/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import UIKit

class CreateGradeHistoryPopupViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var dsPickerView: UIPickerView!
    @IBOutlet weak var dsValueButton: UIButton!
    @IBOutlet weak var startDatePicker: UIDatePicker!
    @IBOutlet weak var startDateButton: UIButton!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var gradeValueLabel: UILabel!
    
    
    var dsData: [String] = []
    let dateFormatter = NSDateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Initialize dsPickerView
        dsPickerView.hidden = true
        dsPickerView.dataSource = self
        dsPickerView.delegate = self
        dsData = ["DS 1", "DS 2", "DS 3", "DS 4", "DS 5","DS 6", "DS 7", "DS 8", "DS 9", "DS 10", "DS 11", "DS 12", "DS 13", "DS 14", "DS 15"]
        
        // Initialize startDatePicker
        startDatePicker.hidden = true
        
        // Initialize doneButton
        doneButton.hidden = true
        
        self.view.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.25)
        
        self.showAnimate()
    }
    
    @IBAction func showOrHideStartDatePicker(sender: AnyObject) {
        if(startDatePicker.hidden){
            startDatePicker.hidden = false
            dsPickerView.hidden = true
            doneButton.hidden = false
        } else {
            startDatePicker.hidden = true
        }
    }
     @IBAction func showOrHideDsPickerView(sender: AnyObject) {
        if(dsPickerView.hidden){
            dsPickerView.hidden = false
            startDatePicker.hidden = true
            doneButton.hidden = false
        } else {
            dsPickerView.hidden = true
        }
    }
    
    @IBAction func hideDsPickerViewOrStartDatePicker(sender: AnyObject) {
        if(!dsPickerView.hidden){
            dsPickerView.hidden = true
        }
        
        if(!startDatePicker.hidden){
            startDatePicker.hidden = true
        }
        
        doneButton.hidden = true
    }

    
    @IBAction func onStartDatePickerSelect(sender: AnyObject) {
        dateFormatter.dateFormat = "dd/MM/yyyy"
    
        startDateButton.setTitle(dateFormatter.stringFromDate(startDatePicker.date), forState: .Normal)
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dsData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dsData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        dsValueButton.setTitle(dsData[row], forState: .Normal)
        setGrade(dsData[row])
    }
    
    func setGrade(dsValue: String){
        let jpDsList:[String] = ["DS 1", "DS 2", "DS 3"]
        let pgDsList:[String] = ["DS 4", "DS 5", "DS 6", "DS 7", "DS 8"]
        let apDsList:[String] = ["DS 9", "DS 10", "DS 11", "DS 12"]
        
        if(jpDsList.contains(dsValue)){
            gradeValueLabel.text = "JP"
        } else if(pgDsList.contains(dsValue)){
            gradeValueLabel.text = "PG"
        } else if(apDsList.contains(dsValue)){
            gradeValueLabel.text = "AP"
        } else {
            gradeValueLabel.text = "AN"
        }
    }
    
    @IBAction func closeCreateGradeHistoryPopup(sender: AnyObject) {
        self.removeAnimate()
    }
    
    func showAnimate(){
        self.view.transform = CGAffineTransformMakeScale(1.3, 1.3)
        self.view.alpha = 0.0
        UIView.animateWithDuration(0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransformMakeScale(1.0, 1.0)
        })
    }
    
    func removeAnimate(){
        UIView.animateWithDuration(0.25, animations: {
            self.view.transform = CGAffineTransformMakeScale(1.3, 1.3)
            self.view.alpha = 0.0
            }, completion: {(finished: Bool) in
                if(finished){
                    self.view.removeFromSuperview()
                }
        })
    }

}
