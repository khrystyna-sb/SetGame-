//
//  CardsFactory.swift
//  SetGame
//
//  Created by Mac on 18.10.2021.
//

import Foundation

class CardsFactory {
    
    func generateCards() -> [Card] {
        var cards: [Card] = []
        
        for shape in 0..<Card.CardShape.allCases.count {
            for count in 0..<Card.ShapeCount.allCases.count {
                for texture in 0..<Card.Texture.allCases.count {
                    for color in 0..<Card.Color.allCases.count {
                        if let shape = Card.CardShape(rawValue: shape),
                           let count = Card.ShapeCount(rawValue: count),
                           let texture = Card.Texture(rawValue: texture),
                           let color = Card.Color(rawValue: color) {
                            let card = Card(shape: shape, shapeCount: count, texture: texture, color: color, isSelected: false)
                            cards.append(card)
                        }
                    }
                }
            }
        }
        return cards
    }
}
