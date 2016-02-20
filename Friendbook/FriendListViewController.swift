//
//  FriendListViewController.swift
//  Friendbook
//
//  Created by Bruce Burgess on 2/20/16.
//  Copyright © 2016 Bruce Burgess. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    //Variable to connect the table view to the storyboard
    @IBOutlet weak var tableView: UITableView!
    //Set a constant for a list of friends
    let myFriends = ["Yen1","Yen2","Tom","Jack","Harry"]
    
    var selectedFriend = "Joe"
    
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
    
    
    /*
    This is the function that adds the number of rows in the table view
    */
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myFriends.count
    }
    /*
    This is the function that adds cells to the table view and adds content to the cells
    */
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.textLabel!.text = myFriends[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.selectedFriend = myFriends[indexPath.row]
        
        self.performSegueWithIdentifier("friendListToFriendDetailSeque", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailViewController = segue.destinationViewController as! FriendDetailViewController
        detailViewController.name = self.selectedFriend
        
        /* 
        Adding switch statement to set birthdays
        */
        switch self.selectedFriend {
        case "Yen1":
            detailViewController.birthday = "March 10"
            break
        case "Yen2":
            detailViewController.birthday = "Janurary 18"
            break
        case "Tom":
            detailViewController.birthday = "October 19"
            break
        case "Jack":
            detailViewController.birthday = "Apirl 27"
            break
        case "Harry" :
            detailViewController.birthday = "September 11"
            break
        default :
            detailViewController.birthday = "No birthday"
        }
        
    }

}
