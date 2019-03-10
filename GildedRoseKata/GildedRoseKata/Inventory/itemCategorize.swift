//
//  itemCategorize.swift
//  GildedRoseKata
//
//  Created by Shaher Kassam on 09/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//

import Foundation

extension GildedRose {
    
    func categorize(item: Item) {
        
        switch item.name {
            // Normal
        case ItemName.elixir.rawValue, ItemName.vest.rawValue :
            NormalInventory().update(item: item)
            
        case ItemName.brie.rawValue :
            BrieInventory().update(item: item)
            
        case ItemName.pass.rawValue :
            PassInventory().update(item: item)
            
            // Legendary
        case ItemName.sulfuras.rawValue :
            LegendaryInventory().update(item: item)

            // Conjured
        case ItemName.cake.rawValue :
            ConjuredInventory().update(item: item)
        default:
            fatalError("Categorize: Item not in list")
        }
        
    }
    
}
