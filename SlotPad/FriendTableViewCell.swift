//
//  FriendTableViewCell.swift
//  SlotPad
//
//  Created by XiaoyanWu on 16/2/9.
//  Copyright © 2016年 XiaoyanWu. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

    
    @IBOutlet weak var friendIconImageView: UIImageView!
    @IBOutlet weak var friendNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
