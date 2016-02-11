//
//  ProfileViewController.swift
//  SlotPad
//
//  Created by XiaoyanWu on 16/2/9.
//  Copyright © 2016年 XiaoyanWu. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func Logout(sender: AnyObject) {
        AVUser.logOut()
        if let _ = AVUser.currentUser(){
        } else{
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                if let viewController: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Login") as? LoginViewController{
                    self.presentViewController(viewController, animated: true, completion: nil)
                }
            })
        }
    }

}
