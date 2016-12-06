//
//  ViewController.swift
//  RMS_v0.1
//
//  Created by MTMAC19 on 12/6/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var rememberMeCheckbox: UIImageView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgetPasswordLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let img = UIImageView(: UIImage)
        usernameTextField.leftViewMode = UITextFieldViewMode.Always
        usernameTextField.leftView =
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

