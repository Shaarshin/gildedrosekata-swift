//
//  ViewController.swift
//  GildedRoseKata
//
//  Created by Shaher Kassam on 08/03/2019.
//  Copyright © 2019 Shaher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.main()
    }
    
    //MARK: TextTest
    func main() {
        
        let items = [
            //Normal
            Item(name: ItemName.vest.rawValue, sellIn: 10, quality: 20),
            Item(name: ItemName.elixir.rawValue, sellIn: 5, quality: 7),

            // Inversed
            Item(name: ItemName.brie.rawValue, sellIn: 2, quality: 0),
            Item(name: ItemName.pass.rawValue, sellIn: 15, quality: 20),
            Item(name: ItemName.pass.rawValue, sellIn: 10, quality: 49),
            Item(name: ItemName.pass.rawValue, sellIn: 5, quality: 49),

            //Legendary
            Item(name: ItemName.sulfuras.rawValue, sellIn: 0, quality: 80),
            Item(name: ItemName.sulfuras.rawValue, sellIn: -1, quality: 80),
            
            //Conjured
            Item(name: ItemName.cake.rawValue, sellIn: 2, quality: 1)]
        
        let app = GildedRose(items: items)
        
        var days = 11 // 10 Days to match the unit testing cases
        
        //MARK: TODO: Confirm if this is usefull
        if (CommandLine.argc > 1) {
            if let newDays = Int(CommandLine.arguments[1]) {
                days = newDays + 1
            }
        }
        
        for i in 0..<days {
            print("-------- day \(i) --------");
            print("name, sellIn, quality");
            for item in items {
                print(item)
            }
            print("")
            app.updateQuality()
        }
    }
}

