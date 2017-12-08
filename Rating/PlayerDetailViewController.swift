//
//  PlayerDetailViewController.swift
//  Rating
//
//  Created by nguyencuong on 12/8/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class PlayerDetailViewController: UITableViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension PlayerDetailViewController{
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }
    
}
