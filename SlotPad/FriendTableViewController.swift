//
//  FriendTableViewController.swift
//  SlotPad
//
//  Created by XiaoyanWu on 16/2/8.
//  Copyright © 2016年 XiaoyanWu. All rights reserved.
//

import UIKit

class FriendTableViewController: UITableViewController {
    
    var friends: [String] = ["a","b","c","d"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FriendCell", forIndexPath: indexPath) as! FriendTableViewCell

        cell.friendNameLabel.text = friends[indexPath.row]

        return cell
    }
   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showFriendDetail" {
            if let destination = segue.destinationViewController as? FriendDetailViewController,
            let indexPath = tableView.indexPathForSelectedRow{
                destination.friendName = friends[indexPath.row]
            }
        }
    }
}
