//
//  EventDetailViewController.swift
//  SlotPad
//
//  Created by XiaoyanWu on 16/2/9.
//  Copyright © 2016年 XiaoyanWu. All rights reserved.
//

import UIKit

class EventDetailViewController: UIViewController {

    @IBOutlet weak var eventTitleLabel: UILabel?
    var eventTitle:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }

    func configureView(){
        if let title = eventTitle, let titleLabel = eventTitleLabel{
            titleLabel.text = title
        }
    }
}
