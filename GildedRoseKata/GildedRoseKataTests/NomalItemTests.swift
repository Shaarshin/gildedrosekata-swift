//
//  NormalItemTests
//  GildedRoseKataTests
//
//  Created by Shaher Kassam on 08/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//

@testable import GildedRoseKata
import XCTest

class NormalItemTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    //MARK: Test example
    func testItemName() {
        //given
        let items = [Item(name: "foo", sellIn: 0, quality: 0)]
        let app = GildedRose(items: items)
        //when
        app.updateQuality()
        //then
        XCTAssertEqual("foo", app.items[0].name)
    }
    
    //MARK: Normal
    func testNormalUniqueItem() {
        //given
        let input = [Item(name: ItemName.elixir.rawValue, sellIn: 8, quality: 4)]
        
        //when
        let app = GildedRose(items: input)
        app.updateQuality()
        
        //then
        XCTAssertEqual(7, app.items[0].sellIn)
        XCTAssertEqual(3, app.items[0].quality)
    }
    
    func testNormalMultipleItems() {
        //given
        let items = [Item(name: ItemName.elixir.rawValue, sellIn: 1, quality: 50),
                     Item(name: ItemName.elixir.rawValue, sellIn: 8, quality: 13)]
       
        //when
        let app = GildedRose(items: items)
        app.updateQuality()
        
        //then
        XCTAssertEqual(0, app.items[0].sellIn)
        XCTAssertEqual(49, app.items[0].quality)
        XCTAssertEqual(7, app.items[1].sellIn)
        XCTAssertEqual(12, app.items[1].quality)
    }
    
    func testNormalItemAfterSellIn() {
        //given
        let items = [Item(name: ItemName.elixir.rawValue, sellIn: -1, quality: 10)]
        
        //when
        let app = GildedRose(items: items)
        app.updateQuality()
        
        //then
        XCTAssertEqual(-2, app.items[0].sellIn)
        XCTAssertEqual(8, app.items[0].quality)
    }
    
    func testNormalItemSellIn() {
        //given
        let items = [Item(name: ItemName.elixir.rawValue, sellIn: 0, quality: 10)]
        
        //when
        let app = GildedRose(items: items)
        app.updateQuality()
        
        //then
        XCTAssertEqual(-1, app.items[0].sellIn)
        XCTAssertEqual(8, app.items[0].quality)
    }
    
    func testNormalItemMin() {
        //given
        let items = [Item(name: ItemName.elixir.rawValue, sellIn: 2, quality: 0)]
        
        //when
        let app = GildedRose(items: items)
        app.updateQuality()
        
        //then
        XCTAssertEqual(1, app.items[0].sellIn)
        XCTAssertEqual(0, app.items[0].quality)
    }
}
