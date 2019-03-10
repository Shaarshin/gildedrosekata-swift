//
//  ConjuredInventory.swift
//  GildedRoseKata
//
//  Created by Shaher Kassam on 10/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//

import Foundation

class ConjuredInventory: Updatable {
    
    func updateBeforeSellIn(item: Item) {
        qualityDown(item: item, ratio: 2)
    }
    
    func updateAfterSellIn(item: Item) {
        qualityDown(item: item, ratio: 4)
    }
}
