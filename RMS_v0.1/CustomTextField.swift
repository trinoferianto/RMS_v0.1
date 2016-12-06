//
//  CustomTextField.swift
//  RMS_v0.1
//
//  Created by MTMAC19 on 12/6/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    private var ImgIcon: UIImageView?
    
    @IBInspectable var errorEntry: Bool = false {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable var leftTextPadding: Int = 0 {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable var lineColor: UIColor = UIColor.grayColor() {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable var placeHolerColor: UIColor = UIColor(red: 199.0/255.0, green: 199.0/255.0, blue: 205.0/255.0, alpha: 1.0) {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable var errorColor: UIColor = UIColor.redColor() {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable var imageWidth: Int = 0 {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable var txtImage: UIImage? {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    override 

}
