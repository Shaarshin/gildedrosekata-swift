//
//  NormalInventory.swift
//  GildedRoseKata
//
//  Created by Shaher Kassam on 09/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//

import Foundation

class NormalInventory {
    
    func update(item: Item) {
        updateQuality(item: item)
        updateSellInn(item: item)
    }
    
    private func updateSellInn(item: Item) {
        sellInDown(item: item)
    }
    
    private func updateQuality(item: Item) {
        if item.sellIn > 0 {
            updateBeforeSellIn(item: item)
        } else {
            updateAfterSellIn(item: item)
        }
    }
    
    private func updateBeforeSellIn(item: Item) {
        guard item.quality > 0 else { return }
        qualityDown(item: item, ratio: 1)
    }
    
    private func updateAfterSellIn(item: Item) {
        guard item.quality > 0 else { return }
        
        if item.quality > 1 {
            qualityDown(item: item, ratio: 2)
        } else {
            qualityDown(item: item, ratio: 1)
        }
    }
    
    //Helpers
    
    private func qualityDown(item: Item, ratio: Int) {
        item.quality -= 1 * ratio
    }
    
    private func sellInDown(item: Item) {
        item.sellIn -= 1
    }
    
}
