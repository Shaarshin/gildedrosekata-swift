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
        
        for i in 0..<items.count {
            if (items[i].name != ItemName.brie.rawValue && items[i].name != ItemName.pass.rawValue) {
                if (items[i].quality > 0) {
                    if (items[i].name != ItemName.sulfuras.rawValue) {
                        items[i].quality = items[i].quality - 1
                    }
                }
            } else {
                if (items[i].quality < 50) {
                    items[i].quality = items[i].quality + 1
                    
                    if (items[i].name == ItemName.pass.rawValue) {
                        if (items[i].sellIn < 11) {
                            if (items[i].quality < 50) {
                                items[i].quality = items[i].quality + 1
                            }
                        }
                        
                        if (items[i].sellIn < 6) {
                            if (items[i].quality < 50) {
                                items[i].quality = items[i].quality + 1
                            }
                        }
                    }
                }
            }
            
            if (items[i].name != ItemName.sulfuras.rawValue) {
                items[i].sellIn = items[i].sellIn - 1
            }
            
            if (items[i].sellIn < 0) {
                if (items[i].name != ItemName.brie.rawValue) {
                    if (items[i].name != ItemName.pass.rawValue) {
                        if (items[i].quality > 0) {
                            if (items[i].name != ItemName.sulfuras.rawValue) {
                                items[i].quality = items[i].quality - 1
                            }
                        }
                    } else {
                        items[i].quality = items[i].quality - items[i].quality
                    }
                } else {
                    if (items[i].quality < 50) {
                        items[i].quality = items[i].quality + 1
                    }
                }
            }
        }
    }
}
