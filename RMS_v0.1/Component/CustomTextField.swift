//
//  CustomTextField.swift
//  RMS_v0.1
//
//  Created by MTMAC19 on 12/6/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//
//
//  CustomTextField.swift
//  RMS_v0.1
//
//  Created by MTMAC19 on 12/6/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//
import UIKit

@IBDesignable public class CustomTextField: UITextField {
    private var ImgIcon: UIImageView?
    
    @IBInspectable var errorEntry: Bool = false {
     didSet {
        self.setNeedsDisplay()
        }
    }
    @IBInspectable public var leftTextPedding: Int = 0 {
        didSet {
        self.setNeedsDisplay()
        }
    }
     @IBInspectable public var lineColor: UIColor = UIColor.blackColor() {
         didSet {
             self.setNeedsDisplay()
         }
     }
     @IBInspectable public var placeHolerColor: UIColor = UIColor(red: 199.0/255.0, green: 199.0/255.0, blue: 205.0/255.0, alpha: 1.0) {
         didSet {
             self.setNeedsDisplay()
         }
     }
     @IBInspectable public var errorColor: UIColor = UIColor.redColor() {
         didSet {
             self.setNeedsDisplay()
         }
     }
 
     @IBInspectable public var imageWidth: Int = 0 {
         didSet {
             self.setNeedsDisplay()
         }
     }
     @IBInspectable public var txtImage : UIImage? {
             didSet {
                     self.setNeedsDisplay()
                 }
         }
     override public func textRectForBounds(bounds: CGRect) -> CGRect {
             return self.newBounds(bounds)
         }
     override public func editingRectForBounds(bounds: CGRect) -> CGRect {
             return self.newBounds(bounds)
         }
 
     private func newBounds(bounds: CGRect) -> CGRect {
     
             var newBounds = bounds
             newBounds.origin.x  = CGFloat(leftTextPedding) + CGFloat(imageWidth)
             return newBounds
         }
 
     var errorMessage: String?
 
     override public func awakeFromNib() {
             super.awakeFromNib()
                 //setting left image
             if (txtImage != nil)
             {
                 let imgView = UIImageView(image: txtImage)
                 imgView.frame = CGRectMake(0, 0, CGFloat(imageWidth), self.frame.height-5)
                 imgView.contentMode = .Center
                 self.leftViewMode = UITextFieldViewMode.Always
                 self.leftView = imgView
             }
         }
 
     override public func drawRect(rect: CGRect)
     {
         let height = self.bounds.height
 
         // get the current drawing context
         let context = UIGraphicsGetCurrentContext()
 
         // set the line color and width
         if errorEntry {
             CGContextSetStrokeColorWithColor(context, errorColor.CGColor)
             CGContextSetLineWidth(context, 1.5)
         } else {
             CGContextSetStrokeColorWithColor(context, lineColor.CGColor)
             CGContextSetLineWidth(context, 0.5)
         }
 
         // start a new Path
         CGContextBeginPath(context)
 
         CGContextMoveToPoint(context!, self.bounds.origin.x, height - 0.5)
         CGContextAddLineToPoint(context!, self.bounds.size.width, height - 0.5)
         // close and stroke (draw) it
         CGContextClosePath(context)
         CGContextStrokePath(context)
 
         //Setting custom placeholder color
         if let strPlaceHolder: String = self.placeholder
         {
             self.attributedPlaceholder = NSAttributedString(string:strPlaceHolder,
                 attributes:[NSForegroundColorAttributeName:placeHolerColor])
         }
     }
     override public func leftViewRectForBounds(bounds: CGRect) -> CGRect
     {
         return CGRectMake(0, 0, CGFloat(imageWidth), self.frame.height)
     }
 }