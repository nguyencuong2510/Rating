//
//  Player.swift
//  Rating
//
//  Created by nguyencuong on 12/8/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation


struct Player {
    var name: String?
    var game: String?
    var rating: Int
}

final class SampleData{
    static func generatePlayersData() -> [Player]{
        return [
            Player(name: "nguyen", game: "the day", rating: 4),
            Player(name: "van", game: "yesterday", rating: 3),
            Player(name: "cuong", game: "before", rating: 2)
        ]
    }
}
