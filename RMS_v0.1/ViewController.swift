//
//  ViewController.swift
//  RMS_v0.1
//
//  Created by MTMAC19 on 12/6/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: Properties
    @IBOutlet weak var usernameTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    @IBOutlet weak var rememberMeCheckbox: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgetPasswordLabel: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationController?.navigationBar.translucent = true
        self.navigationController?.navigationBar.tintColor = UIColor(red: 92/255, green: 107/255, blue: 192/255, alpha: 1)
        
        // delete the text field
        usernameTextField.delegate = self
        passwordTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UITextFieldDelegate
    func textFieldDidBeginEditing(textField: UITextField) {
        (textField as! CustomTextField).errorEntry = false
    }

    // MARK: Actions
    @IBAction func rememberMeClicked(sender: AnyObject) {
        let isSelected = rememberMeCheckbox.selected
        rememberMeCheckbox.selected = !isSelected
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if identifier == "LoginSegue" {
            if usernameTextField.text?.isEmpty == true || passwordTextField.text?.isEmpty == true {
                // deselect textfields
                usernameTextField.resignFirstResponder()
                passwordTextField.resignFirstResponder()
                
                // change the empty text field underline color to red
                if usernameTextField.text?.isEmpty == true {
                    usernameTextField.errorEntry = true
                }
                
                if passwordTextField.text?.isEmpty == true {
                    passwordTextField.errorEntry = true
                }

                // show an alert
                let alert = UIAlertView()
                alert.title = "Error"
                alert.message = "Please check your Username/ Password"
                alert.addButtonWithTitle("OK")
                alert.show()
                
                return false
            }
        }
        
        // default return value
        return true
    }
}

