//
//  FriendDetailViewController.swift
//  SlotPad
//
//  Created by XiaoyanWu on 16/2/9.
//  Copyright © 2016年 XiaoyanWu. All rights reserved.
//

import UIKit

class FriendDetailViewController: UIViewController {

    @IBOutlet weak var friendNameLabel: UILabel?
    @IBOutlet weak var friendEmailLabel: UILabel?
    @IBOutlet weak var friendPhoneLabel: UILabel?
    @IBOutlet weak var friendDescriptionLabel: UILabel?
    
    var friendName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }

    func configureView(){
        if let name = friendName, let nameLabel = friendNameLabel {
            nameLabel.text = name
        }
    }

}
