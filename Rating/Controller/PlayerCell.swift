//
//  PlayerCell.swift
//  Rating
//
//  Created by nguyencuong on 12/8/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {
    
    
    @IBOutlet weak var gameLable: UILabel!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var ratingView: UIImageView!
    
    var player: Player?{
        didSet{
            guard let player = player else { return }
            nameLable.text = player.name
            gameLable.text = player.game
            ratingView.image = image(forRating: player.rating)
        }
    }
    
    func image(forRating rating: Int) -> UIImage? {
        let imageName = "\(rating)Stars"
        return UIImage(named: imageName)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
