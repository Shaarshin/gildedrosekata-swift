//
//  ItemsDB.swift
//  GildedRoseKata
//
//  Created by Shaher Kassam on 08/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//

import Foundation

enum ItemName: String {
    
    //Normal Items
    case vest = "+5 Dexterity Vest"
    case elixir = "Elixir of the Mongoose"
    
    //Inversed Items
    case brie = "Aged Brie"
    case pass = "Backstage passes to a TAFKAL80ETC concert"
    
    //Legendary Items
    case sulfuras = "Sulfuras, Hand of Ragnaros"
    
    //Conjured Items
    case cake = "Conjured Mana Cake"
}

enum ItemQuality: Int {
    case min = 0
    case max = 50
    case double = 10
    case triple = 5
}
