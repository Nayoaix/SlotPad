//
//  EventTableViewController.swift
//  SlotPad
//
//  Created by XiaoyanWu on 16/2/7.
//  Copyright © 2016年 XiaoyanWu. All rights reserved.
//

import UIKit
import CoreData

class EventTableViewController: UITableViewController {

    var events: [NSManagedObject] = []
    var testEvents: [String] = ["A","B","C","D"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configureView()
    }

    func configureView(){
        self.tableView.rowHeight = 120
    }


    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> EventTableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("EventCell", forIndexPath: indexPath) as! EventTableViewCell

        cell.eventTitleLabel.text = testEvents[indexPath.row]

        return cell
    }
    
    // MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showEventDetail" {
            if let destination = segue.destinationViewController as? EventDetailViewController,
                let indexPath = tableView.indexPathForSelectedRow{
                destination.eventTitle = testEvents[indexPath.row]
                destination.hidesBottomBarWhenPushed = true
            }
        }
        else if segue.identifier == "newEvent" {
            if let destination = segue.destinationViewController as? NewEventViewController {
                destination.hidesBottomBarWhenPushed = true
            }
        }
    }

}
