//
//  Concentration.swift
//  concentration
//
//  Created by Egor Pii on 10/2/18.
//  Copyright © 2018 yenz0redd. All rights reserved.
//

import Foundation

class Concentration
{
    var cards = [Card]()

    var indexOfOneAndOnlyFaceUpCars : Int?

    func chooseCard(at index : Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCars, matchIndex != index {
                //chekc if cards matched
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCars = nil
            } else {
                ///either no cards or 2 cards are face up
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCars = index
            }
        }
    }

    func gameOver() -> Bool {
        for index in cards.indices {

            if cards[index].isMatched == false {
                return false
            }
        }
        return true
    }

    init(numberOfPairsOfCards : Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        // TODO: Shuffle of cards
    }
}
