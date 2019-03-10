//
//  BrieInventory.swift
//  GildedRoseKata
//
//  Created by Shaher Kassam on 10/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//

import Foundation

class BrieInventory {
    
    //Same
    func update(item: Item) {
        updateQuality(item: item)
        updateSellInn(item: item)
    }
    
    //Same
    private func updateSellInn(item: Item) {
        sellInDown(item: item)
    }
    
    //Same
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
        qualityUp(item: item, ratio: 1)
    }
    
    //Changed
    private func updateAfterSellIn(item: Item) {
        guard item.quality < 50 else { return }
        
        if item.quality < 49 {
            qualityUp(item: item, ratio: 2)
        } else  {
            qualityUp(item: item, ratio: 1)
        }
    }
    
    //Helpers
    
    private func qualityUp(item: Item, ratio: Int) {
        item.quality += 1 * ratio
    }
    
    //Same
    private func sellInDown(item: Item) {
        item.sellIn -= 1
    }
    
}
