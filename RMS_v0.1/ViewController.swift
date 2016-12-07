//
//  ViewController.swift
//  RMS_v0.1
//
//  Created by MTMAC19 on 12/6/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var usernameTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    @IBOutlet weak var rememberMeCheckbox: UIImageView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgetPasswordLabel: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Actions
//    @IBAction func loginButtonClicked(sender: UIButton) {
//        if ((usernameTextField.text?.isEmpty) != nil) {
//            usernameTextField.errorEntry = true
//        }
//        
//        if passwordTextField.text?.isEmpty != nil {
//            passwordTextField.errorEntry = true
//        }
//        
//        /*if usernameTextField.errorEntry == true || passwordTextField.errorEntry == true {
//            let alert = UIAlertController(title: "Error", message: "Please check your Username and Password", preferredStyle: .Alert)
//            alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
//            self.presentViewController(alert, animated: true, completion: nil)
//        }*/
//    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier! == "Login" && loginButton === sender && usernameTextField.text?.isEmpty == false && (passwordTextField.text?.isEmpty) == false {
            self.performSegueWithIdentifier("Login", sender: loginButton)
        }
        else {
            if usernameTextField.text?.isEmpty == true {
                usernameTextField.errorEntry = true
            }
            
            if passwordTextField.text?.isEmpty == true {
                passwordTextField.errorEntry = true
            }
        }
    }
}

