//
//  PassInventory.swift
//  GildedRoseKata
//
//  Created by Shaher Kassam on 10/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//

import Foundation

class PassInventory {
    
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
    
    //Changed
    private func updateBeforeSellIn(item: Item) {
        guard item.quality < 50 else { return }
        
        if item.sellIn <= 5 {
            qualityUp(item: item, ratio: 3)
        } else if item.sellIn <= 10 {
            qualityUp(item: item, ratio: 2)
        } else {
            qualityUp(item: item, ratio: 1)
        }
    }
    
    private func updateAfterSellIn(item: Item) {
        guard item.quality < 50 else { return }
        
        qualityNil(item: item)
    }
    
    //Helpers
    
    private func qualityUp(item: Item, ratio: Int) {
        item.quality += 1 * ratio
    }
    
    private func sellInDown(item: Item) {
        item.sellIn -= 1
    }
    
    private func qualityNil(item: Item) {
        item.quality = 0
    }
    
}
