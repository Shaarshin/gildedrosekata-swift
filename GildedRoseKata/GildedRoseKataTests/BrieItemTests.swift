//
//  BrieItemTests.swift
//  GildedRoseKataTests
//
//  Created by Shaher Kassam on 09/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//

import XCTest
@testable import GildedRoseKata

class BrieItemTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    //MARK: Brie
    func testBrieItem() {
        //given
        let items = [Item(name: ItemName.brie.rawValue, sellIn: 2, quality: 10)]
        let app = GildedRoseInventory(items: items)
        //when
        app.updateQuality()
        //then
        XCTAssertEqual(1, app.items[0].sellIn)
        XCTAssertEqual(11, app.items[0].quality)
    }
    
    func testBrieItemOnSellIn() {
        //given
        let items = [Item(name: ItemName.brie.rawValue, sellIn: 0, quality: 10)]
        let app = GildedRoseInventory(items: items)
        //when
        app.updateQuality()
        //then
        XCTAssertEqual(-1, app.items[0].sellIn)
        XCTAssertEqual(12, app.items[0].quality)
    }
    
    func testBrieItemAfterSellIn() {
        //given
        let items = [Item(name: ItemName.brie.rawValue, sellIn: -1, quality: 10)]
        let app = GildedRoseInventory(items: items)
        //when
        app.updateQuality()
        //then
        XCTAssertEqual(-2, app.items[0].sellIn)
        XCTAssertEqual(12, app.items[0].quality)
    }
    
    func testBrieItemMaxQuality() {
        //given
        let items = [Item(name: ItemName.brie.rawValue, sellIn: 2, quality: 50)]
        let app = GildedRoseInventory(items: items)
        //when
        app.updateQuality()
        //then
        XCTAssertEqual(1, app.items[0].sellIn)
        XCTAssertEqual(50, app.items[0].quality)
    }
    
    func testBrieItemOnSellInMaxQuality() {
        //given
        let items = [Item(name: ItemName.brie.rawValue, sellIn: 0, quality: 50)]
        let app = GildedRoseInventory(items: items)
        //when
        app.updateQuality()
        //then
        XCTAssertEqual(-1, app.items[0].sellIn)
        XCTAssertEqual(50, app.items[0].quality)
    }
    
    func testBrieItemNearMaxQuality() {
        //given
        let items = [Item(name: ItemName.brie.rawValue, sellIn: -1, quality: 49)]
        let app = GildedRoseInventory(items: items)
        //when
        app.updateQuality()
        //then
        XCTAssertEqual(-2, app.items[0].sellIn)
        XCTAssertEqual(50, app.items[0].quality)
    }
}
