//
//  Updatable.swift
//  GildedRoseKata
//
//  Created by Shaher Kassam on 10/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//

import Foundation

protocol Updatable {
    func updateBeforeSellIn(item: Item)
    func updateAfterSellIn(item: Item)
    func sellInDown(item: Item)
}

extension Updatable {
    
    //Helpers
    internal func qualityUp(item: Item, ratio: Int) {
        item.quality += 1 * ratio
        verifyQuality(item: item)
    }
    
    internal func qualityDown(item: Item, ratio: Int) {
        item.quality -= 1 * ratio
         verifyQuality(item: item)
    }
    
    internal func qualityNil(item: Item) {
        item.quality = QualitySettings.min.rawValue
    }
    
    internal func sellInDown(item: Item) {
        item.sellIn -= 1
    }
    
    internal func verifyQuality(item: Item) {
        
        if item.quality > 50 {
            item.quality = 50
        }
        if item.quality < 0 {
            item.quality = 0
        }
        
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
