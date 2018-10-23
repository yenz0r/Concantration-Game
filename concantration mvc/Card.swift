//
//  Card.swift
//  concentration
//
//  Created by Egor Pii on 10/2/18.
//  Copyright © 2018 yenz0redd. All rights reserved.
//

import Foundation

struct Card
{
    var isFaceUp = false
    var isMatched = false
    var identifier : Int

    static var indentifierFactory = 0

    static func getUniqueIndentifier() -> Int {
        indentifierFactory += 1
        return indentifierFactory
    }

    init() {
        self.identifier = Card.getUniqueIndentifier()
    }
}
