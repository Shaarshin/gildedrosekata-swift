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
        qualityDown(item: item, ratio: 1)
    }
    
    func updateAfterSellIn(item: Item) {
        qualityDown(item: item, ratio: 2)
    }
}
