//
//  LegendaryInventory.swift
//  GildedRoseKata
//
//  Created by Shaher Kassam on 10/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//

import Foundation

class LegendaryInventory {
    
    //Same
    func update(item: Item) {
        updateQuality(item: item)
        updateSellInn(item: item)
    }
    
    //Changed
    private func updateSellInn(item: Item) {
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
    }
    
     //Changed
    private func updateAfterSellIn(item: Item) {
    }
    
}

