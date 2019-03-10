//
//  LegendaryItemTests.swift
//  GildedRoseKataTests
//
//  Created by Shaher Kassam on 09/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//

import XCTest
@testable import GildedRoseKata

class LegendaryItemTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    //MARK: Legendary
    
    func testLegendaryItem() {
        //given
        let items = [Item(name: ItemName.sulfuras.rawValue, sellIn: 1, quality: 80)]
        let app = GildedRoseInventory(items: items)
        //when
        app.updateQuality()
        //then
        XCTAssertEqual(1, app.items[0].sellIn)
        XCTAssertEqual(80, app.items[0].quality)
    }
    
    func testLegendaryItemOnSellIn() {
        //given
        let items = [Item(name: ItemName.sulfuras.rawValue, sellIn: 0, quality: 80)]
        let app = GildedRoseInventory(items: items)
        //when
        app.updateQuality()
        //then
        XCTAssertEqual(0, app.items[0].sellIn)
        XCTAssertEqual(80, app.items[0].quality)
        
    }
    
    func testLegendaryItemAfterSellIn() {
        //given
        let items = [Item(name: ItemName.sulfuras.rawValue, sellIn: -1, quality: 80)]
        let app = GildedRoseInventory(items: items)
        //when
        app.updateQuality()
        //then
        XCTAssertEqual(-1, app.items[0].sellIn)
        XCTAssertEqual(80, app.items[0].quality)
    }
}
