//
//  PlayerDetailViewController.swift
//  Rating
//
//  Created by nguyencuong on 12/8/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class PlayerDetailViewController: UITableViewController {
    
    //MARK: - Properties
    var player: Player?
    
    var game: String = "Chess" {
        didSet{
            detailLabel.text = game
        }
    }
    
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    
    //MARK: - Initializers
    required init?(coder aDecoder: NSCoder) {
        print("init PlayerDetailsViewController")
        super.init(coder: aDecoder)
    }
    
    deinit {
        print("deinit PlayerDetailsViewController")
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SavePlayerDetail",let playerName = nameTextField.text {
                player = Player(name: playerName, game: game, rating: 1)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension PlayerDetailViewController{
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }
    
    @IBAction func unwindWithSelectedGame1(segue: UIStoryboardSegue){
        if let gamePickerViewController = segue.source as? GamePickerViewController{
            if let selectedGame = gamePickerViewController.selectGame {
                game = selectedGame
            }
        }
    }
    
}
