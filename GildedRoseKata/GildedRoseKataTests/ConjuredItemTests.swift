//
//  ConjuredItemTests.swift
//  GildedRoseKataTests
//
//  Created by Shaher Kassam on 09/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//

import XCTest
@testable import GildedRoseKata

class ConjuredItemTests: XCTestCase {

    //MARK: Conjured
    func testConjuredItem() {
        //given
        let items = [
            Item(name: ItemName.cake.rawValue, sellIn: 1, quality: 20)]
        let app = GildedRoseInventory(items: items)
        //when
            app.updateQuality()
        //then
        XCTAssertEqual(0, app.items[0].sellIn)
        XCTAssertEqual(18, app.items[0].quality)
        
    }
    
    func testConjuredItemOnSellIn() {
        //given
        let items = [
            Item(name: ItemName.cake.rawValue, sellIn: 0, quality: 22)]
        let app = GildedRoseInventory(items: items)
        //when
        app.updateQuality()
        //then
        XCTAssertEqual(-1, app.items[0].sellIn)
        XCTAssertEqual(18, app.items[0].quality)
    }
    
    func testConjuredItemAfterSellIn() {
        //given
        let items = [
            Item(name: ItemName.cake.rawValue, sellIn: -1, quality: 20)]
        let app = GildedRoseInventory(items: items)
        //when
        app.updateQuality()
        //then
        XCTAssertEqual(-2, app.items[0].sellIn)
        XCTAssertEqual(16, app.items[0].quality)
    }

    func testConjuredItemMaxQuality() {
        //given
        let items = [
            Item(name: ItemName.cake.rawValue, sellIn: 2, quality: 50)]
        let app = GildedRoseInventory(items: items)
        //when
        app.updateQuality()
        //then
        XCTAssertEqual(1, app.items[0].sellIn)
        XCTAssertEqual(48, app.items[0].quality)
    }
    
    func testConjuredItemLowQuality() {
        //given
        let items = [
            Item(name: ItemName.cake.rawValue, sellIn: 2, quality: 1)]
        let app = GildedRoseInventory(items: items);
        //when
        app.updateQuality()
        //then
        XCTAssertEqual(1, app.items[0].sellIn)
        XCTAssertEqual(0, app.items[0].quality)
    }
    
    func testConjuredItemMinQuality() {
        //given
        let items = [
            Item(name: ItemName.cake.rawValue, sellIn: 2, quality: 0)]
        let app = GildedRoseInventory(items: items)
        //when
        app.updateQuality()
        //then
        XCTAssertEqual(1, app.items[0].sellIn)
        XCTAssertEqual(0, app.items[0].quality)
    }
    
}
