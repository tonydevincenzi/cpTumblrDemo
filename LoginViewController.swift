//
//  LoginViewController.swift
//  cpTumblrDemo
//
//  Created by Anthony Devincenzi on 2/19/16.
//  Copyright © 2016 Anthony Devincenzi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var cancelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.becomeFirstResponder()
    }
    
    override func viewWillAppear(animated: Bool) {
        
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didClickCancel(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)

    }



}
