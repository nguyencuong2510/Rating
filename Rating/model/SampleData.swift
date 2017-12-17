//
//  SampleData.swift
//  Rating
//
//  Created by nguyencuong on 12/17/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation

final class SampleData{
    static func generatePlayersData() -> [Player]{
        return [
            Player(name: "nguyen", game: "the day", rating: 4),
            Player(name: "van", game: "yesterday", rating: 3),
            Player(name: "cuong", game: "before", rating: 2)
        ]
    }
}
