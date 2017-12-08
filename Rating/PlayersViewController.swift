//
//  PlayersViewController.swift
//  Rating
//
//  Created by Admin on 12/8/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class PlayersViewController: UITableViewController {
    //MARK: - Properties
    var players = SampleData.generatePlayersData()
}



extension PlayersViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return players.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! PlayerCell
        
        let layer = players[indexPath.row]
        cell.player = layer
        
        return cell
    }
    
}

//MARK: - @IBAction
extension PlayersViewController{
    
    @IBAction func cancelToPlayersViewController(_ sender: UIStoryboardSegue){
        
    }
    
    @IBAction func savePlayerDetail(_ sender: UIStoryboardSegue){
        
    }
    
}
