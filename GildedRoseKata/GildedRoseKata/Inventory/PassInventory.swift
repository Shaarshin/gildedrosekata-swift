//
//  PassInventory.swift
//  GildedRoseKata
//
//  Created by Shaher Kassam on 10/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//

import Foundation

class PassInventory: Inventory {
    
    override func updateBeforeSellIn(item: Item) {
        guard item.quality < ItemQuality.max.rawValue else { return }
        
        if item.sellIn <= ItemQuality.triple.rawValue {
            qualityUp(item: item, ratio: 3)
        } else if item.sellIn <= ItemQuality.double.rawValue {
            qualityUp(item: item, ratio: 2)
        } else {
            qualityUp(item: item, ratio: 1)
        }
    }
    
    override func updateAfterSellIn(item: Item) {
        guard item.quality < ItemQuality.max.rawValue else { return }
        
        qualityNil(item: item)
    }
}
