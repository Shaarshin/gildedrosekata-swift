//
//  Inventory.swift
//  GildedRoseKata
//
//  Created by Shaher Kassam on 10/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//

import Foundation

class Inventory {
    
    // To override
    internal func updateBeforeSellIn(item: Item) {}
    
    // To override
    internal func updateAfterSellIn(item: Item) {}
    
    // To override
    internal func sellInDown(item: Item) {
        item.sellIn -= 1
    }
    
    //Helpers
    internal func qualityUp(item: Item, ratio: Int) {
        item.quality += 1 * ratio
    }
    
    internal func qualityDown(item: Item, ratio: Int) {
        item.quality -= 1 * ratio
    }
    
    internal func qualityNil(item: Item) {
        item.quality = ItemQuality.min.rawValue
    }
    
    // Inventory
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
}
