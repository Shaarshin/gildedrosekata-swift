//
//  LegendaryInventory.swift
//  GildedRoseKata
//
//  Created by Shaher Kassam on 10/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//

import Foundation

class LegendaryInventory: Inventory {
    
    override func updateBeforeSellIn(item: Item) {
        //Just to make sure nothing happens
    }
    
    //Changed
    override func updateAfterSellIn(item: Item) {
        //Just to make sure nothing happens
    }
    
    override func sellInDown(item: Item) {
         //Just to make sure nothing happens
    }
   
}

