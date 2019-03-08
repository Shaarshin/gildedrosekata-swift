//
//  GildedRose.swift
//  GildedRoseKata
//
//  Created by Shaher Kassam on 08/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//


public class GildedRose {
    var items:[Item]
    
    required public init(items:[Item]) {
        self.items = items
    }
    
    public func updateQuality() {
        
        //MARK: TODO: Refactor this algo for clarity
        for i in 0..<items.count {
            
            // Item is normal: -1 quality per day
            if (items[i].name != ItemName.brie.rawValue && items[i].name != ItemName.pass.rawValue) {   //Not Inversed Items
                if (items[i].quality > 0) {
                    if (items[i].name != ItemName.sulfuras.rawValue) { // Not Legendary
                        items[i].quality = items[i].quality - 1
                    }
                }
            } else { //Item is Inversed
                if (items[i].quality < ItemQuality.max.rawValue) {
                    items[i].quality = items[i].quality + 1
                    
                    //Pass
                    if (items[i].name == ItemName.pass.rawValue) {
                        if (items[i].sellIn < ItemQuality.double.rawValue) {
                            if (items[i].quality < ItemQuality.max.rawValue) {
                                items[i].quality = items[i].quality + 1
                            }
                        }
                        
                        if (items[i].sellIn < ItemQuality.triple.rawValue) {
                            if (items[i].quality < ItemQuality.max.rawValue) {
                                items[i].quality = items[i].quality + 1
                            }
                        }
                    }
                }
            }
            // Item is not Legendary
            if (items[i].name != ItemName.sulfuras.rawValue) {
                items[i].sellIn = items[i].sellIn - 1
            }
            // SellIn is over
            if (items[i].sellIn < 0) {
                if (items[i].name != ItemName.brie.rawValue) {
                    if (items[i].name != ItemName.pass.rawValue) {
                        if (items[i].quality > 0) {
                            if (items[i].name != ItemName.sulfuras.rawValue) {
                                items[i].quality = items[i].quality - 1 //Normal -1
                            }
                        }
                    } else { //Pass value nil
                        items[i].quality = items[i].quality - items[i].quality
                    }
                } else { // Brie
                    if (items[i].quality < ItemQuality.max.rawValue) {
                        items[i].quality = items[i].quality + 1
                    }
                }
            }
        }
    }
}
