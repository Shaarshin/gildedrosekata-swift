//
//  BrieInventory.swift
//  GildedRoseKata
//
//  Created by Shaher Kassam on 10/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//

import Foundation

class BrieInventory: Updatable {
    
     func updateBeforeSellIn(item: Item) {
        guard item.quality < ItemQuality.max.rawValue else { return }
        qualityUp(item: item, ratio: 1)
    }
    
     func updateAfterSellIn(item: Item) {
        guard item.quality < ItemQuality.max.rawValue else { return }
        
        if item.quality < ItemQuality.max.rawValue - 1 {
            qualityUp(item: item, ratio: 2)
        } else  {
            qualityUp(item: item, ratio: 1)
        }
    }
}
