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
        app.updateQuality();
        //then
        XCTAssertEqual("foo", app.items[0].name);
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
