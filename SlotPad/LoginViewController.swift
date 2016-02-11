//
//  LoginViewController.swift
//  SlotPad
//
//  Created by XiaoyanWu on 16/2/11.
//  Copyright © 2016年 XiaoyanWu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField?
    @IBOutlet weak var passwordTextField: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func Login(sender: AnyObject) {
        if let emailText =  emailTextField, let passwordText = passwordTextField
            , let username = emailText.text, let password = passwordText.text {
                AVUser.logInWithUsernameInBackground(username, password: password, block: { (user, error) -> Void in
                    if (user != nil){
                        dispatch_async(dispatch_get_main_queue(), { () -> Void in
                            if let viewController: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("tabBar") as? TabBarController{
                                self.presentViewController(viewController, animated: true, completion: nil)
                            }
                        })
                    } else{
                        let alert = UIAlertController(title: "Oops!", message: "Email address or password is incorrest!", preferredStyle: .Alert)
                        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
                        self.showViewController(alert, sender: self)
                    }
                })
            
        }
    }
    
    
    
}
