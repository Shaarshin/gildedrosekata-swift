//
//  NormalInventory.swift
//  GildedRoseKata
//
//  Created by Shaher Kassam on 09/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//

import Foundation

class NormalInventory: Updatable {
    
     func updateBeforeSellIn(item: Item) {
        guard item.quality > ItemQuality.min.rawValue else { return }
        qualityDown(item: item, ratio: 1)
    }
    
     func updateAfterSellIn(item: Item) {
        guard item.quality > ItemQuality.min.rawValue else { return }
        
        if item.quality > ItemQuality.min.rawValue + 1 {
            qualityDown(item: item, ratio: 2)
        } else {
            qualityDown(item: item, ratio: 1)
        }
    }
}
