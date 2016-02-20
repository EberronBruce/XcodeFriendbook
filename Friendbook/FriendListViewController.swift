//
//  FriendListViewController.swift
//  Friendbook
//
//  Created by Bruce Burgess on 2/20/16.
//  Copyright © 2016 Bruce Burgess. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        /*
            Set the Table View data source to this view control
            Set the Table View delegate to this view control
            This view control will handle the taps and information of the table view
        */
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.textLabel!.text = "Qhat"
        
        return cell
    }

}
