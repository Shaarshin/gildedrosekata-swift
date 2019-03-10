//
//  ConjuredInventory.swift
//  GildedRoseKata
//
//  Created by Shaher Kassam on 10/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//

import Foundation

class ConjuredInventory {
    
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
        
        if item.quality > 1 {
            qualityDown(item: item, ratio: 2)
        } else {
            qualityDown(item: item, ratio: 1)
        }
        
    }
    
    private func updateAfterSellIn(item: Item) {
        guard item.quality > 0 else { return }
        
        if item.quality > 3 {
            qualityDown(item: item, ratio: 4)
        } else {
            qualityDown(item: item, ratio: 2)
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
