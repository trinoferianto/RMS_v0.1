//
//  CreateGradeHistoryPopupViewController.swift
//  RMS_v0.1
//
//  Created by MTMAC20 on 12/14/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import UIKit

class CreateGradeHistoryPopupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.25)
        
        self.showAnimate()
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
