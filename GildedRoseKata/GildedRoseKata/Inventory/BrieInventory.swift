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
        qualityUp(item: item, ratio: 1)
    }
    
    func updateAfterSellIn(item: Item) {
        qualityUp(item: item, ratio: 2)
    }
}
