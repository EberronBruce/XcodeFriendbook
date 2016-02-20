//
//  FriendDetailViewController.swift
//  Friendbook
//
//  Created by Bruce Burgess on 2/20/16.
//  Copyright © 2016 Bruce Burgess. All rights reserved.
//

import UIKit

class FriendDetailViewController: UIViewController {

    // Storyboard labels being connected
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    //variables being used to change the labels
    var name = "Jenna"
    var birthday = "June 10th"
    
    /*
    This is the code that is executed after the view is loaded.

    */
    override func viewDidLoad() {
        super.viewDidLoad()

        self.nameLabel.text = "\(self.name)'s birthday is "
        self.birthdayLabel.text = self.birthday
    }



}
