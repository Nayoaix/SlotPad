//
//  SettingTableViewController.swift
//  SlotPad
//
//  Created by XiaoyanWu on 16/2/9.
//  Copyright © 2016年 XiaoyanWu. All rights reserved.
//

import UIKit

class SettingTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showProfile" {
            if let destination = segue.destinationViewController as? ProfileViewController {
                destination.hidesBottomBarWhenPushed = true
            }
        }
        else if segue.identifier == "showMyClass" {
            if let destination = segue.destinationViewController as? MyClassViewController {
                destination.hidesBottomBarWhenPushed = true
            }
        }
        else if segue.identifier == "showPrivacySetting" {
            if let destination = segue.destinationViewController as? PrivacyViewController {
                destination.hidesBottomBarWhenPushed = true
            }
        }
    }
}
