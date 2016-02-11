//
//  SignUpViewController.swift
//  SlotPad
//
//  Created by XiaoyanWu on 16/2/11.
//  Copyright © 2016年 XiaoyanWu. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField?
    @IBOutlet weak var passWordTextField: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func signUp(sender: AnyObject) {
        if let emailText = emailTextField, let passwordText = passWordTextField
            , let username = emailText.text, let password = passwordText.text {
                let user: AVUser = AVUser()
                user.username = username
                user.password = password
                user.email = username
                user.signUpInBackgroundWithBlock({ (succeeded, error) -> Void in
                    if(succeeded)
                    {
                        dispatch_async(dispatch_get_main_queue(), { () -> Void in
                            if let viewController: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("tabBar") as? TabBarController{
                                self.presentViewController(viewController, animated: true, completion: nil)
                            }
                        })
                    } else{
                        let alert = UIAlertController(title: "Oops!", message: "Error: \(error)", preferredStyle: .Alert)
                        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
                        self.showViewController(alert, sender: self)
                    }
                })
        }
    }

}
