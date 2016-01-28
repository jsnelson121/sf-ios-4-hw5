//
//  ItemsTableViewController.swift
//  iOS4-HW5-Delegation
//
//  Created by Kathryn Rotondo on 1/20/16.
//  Copyright © 2016 Kathryn Rotondo. All rights reserved.
//

import UIKit
//adopted protocol
class ItemsTableViewController: UITableViewController, saveNewData {
    
    var items: [Data] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    //conforming protocol
    func saveData(listData: Data) {
        //append to items array
        items.append(listData)
        
        //refresh table view
        tableView.reloadData()
    }

    
    
    

    // MARK: - Table view data source


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("itemCellIdentifier", forIndexPath: indexPath)
        
        let cellInfo = items[indexPath.row]
        cell.textLabel?.text = cellInfo.info
        
        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let addListViewController = segue.destinationViewController as! AddItemViewController
        
        addListViewController.delegate = self
    }


}
