//
//  GildedRoseKataTests.swift
//  GildedRoseKataTests
//
//  Created by Shaher Kassam on 08/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//

@testable import GildedRoseKata
import XCTest

class GildedRoseKataTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testItemName() {
        //given
        let items = [Item(name: "foo", sellIn: 0, quality: 0)]
        let app = GildedRose(items: items);
        //when
        app.updateQuality()
        //then
        XCTAssertEqual("foo", app.items[0].name);
    }
    
    func testNormalItem() {
        //given
        let items = [Item(name: ItemName.elixir.rawValue, sellIn: 8, quality: 4)]
        let app = GildedRose(items: items);
        //when
        for _ in 0..<10 { //10 days
         app.updateQuality()
        }
        //then
        XCTAssertEqual(-2, app.items[0].sellIn)
        XCTAssertEqual(0, app.items[0].quality)
    }
    
    func testBrieItem() {
        //given
        let items = [Item(name: ItemName.brie.rawValue, sellIn: 2, quality: 0)]
        let app = GildedRose(items: items);
        //when
        for _ in 0..<10 { //10 days
            app.updateQuality()
        }
        //then
        XCTAssertEqual(-8, app.items[0].sellIn)
        XCTAssertEqual(18, app.items[0].quality)
    }
    
    func testPassItem() {
        //given
        let items = [
            Item(name: ItemName.pass.rawValue, sellIn: 15, quality: 20),
            Item(name: ItemName.pass.rawValue, sellIn: 10, quality: 49),
            Item(name: ItemName.pass.rawValue, sellIn: 5, quality: 49),
        ]
        
        let app = GildedRose(items: items);
        //when
        for _ in 0..<10 { //10 days
            app.updateQuality()
        }
        //then
        XCTAssertEqual(5, app.items[0].sellIn)
        XCTAssertEqual(35, app.items[0].quality)
        XCTAssertEqual(0, app.items[1].sellIn)
        XCTAssertEqual(50, app.items[1].quality)
        XCTAssertEqual(-5, app.items[2].sellIn)
        XCTAssertEqual(0, app.items[2].quality)
    }
    
    func testLegendaryItem() {
        //given
        let items = [
            Item(name: ItemName.sulfuras.rawValue, sellIn: 0, quality: 80),
            Item(name: ItemName.sulfuras.rawValue, sellIn: -1, quality: 80),
            ]
        
        let app = GildedRose(items: items);
        //when
        for _ in 0..<10 { //10 days
            app.updateQuality()
        }
        //then
        XCTAssertEqual(0, app.items[0].sellIn)
        XCTAssertEqual(80, app.items[0].quality)
        XCTAssertEqual(-1, app.items[1].sellIn)
        XCTAssertEqual(80, app.items[1].quality)
    }
    
    func testConjuredItem() {
        //given
        let items = [
            Item(name: ItemName.cake.rawValue, sellIn: 3, quality: 6),
            Item(name: ItemName.cake.rawValue, sellIn: -1, quality: 80),
            ]
        
        let app = GildedRose(items: items);
        //when
        for _ in 0..<10 { //10 days
            app.updateQuality()
        }
        //then
        XCTAssertEqual(0, app.items[0].sellIn)
        XCTAssertEqual(80, app.items[0].quality)
        XCTAssertEqual(-1, app.items[1].sellIn)
        XCTAssertEqual(80, app.items[1].quality)
    }
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
